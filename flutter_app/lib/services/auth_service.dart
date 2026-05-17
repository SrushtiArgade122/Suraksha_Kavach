import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';
import '../utils/constants.dart';

class AuthService extends ChangeNotifier {
  UserModel? _user;
  final SharedPreferences _prefs;

  // Key for our local "Database" of registered users
  static const String _userDbKey = "registered_users_db";

  AuthService(this._prefs) {
    _loadUser();
  }

  // --- GETTERS ---
  UserModel? get currentUser => _user;
  bool get isAuthenticated => _user != null;
  String? get token => _prefs.getString(AppConstants.tokenKey);

  /// Loads the active session from local storage on app startup
  void _loadUser() {
    final userData = _prefs.getString(AppConstants.userKey);
    if (userData != null) {
      try {
        final Map<String, dynamic> userMap = jsonDecode(userData);
        _user = UserModel.fromJson(userMap);
        // Note: notifyListeners() is omitted here to prevent Router loops during constructor phase
      } catch (e) {
        debugPrint("❌ Error loading user: $e");
        // Clear corrupt data
        _prefs.remove(AppConstants.userKey);
        _user = null;
      }
    }
  }

  /// ✅ Fixed Streak Logic with safety checks
  Future<void> handleStreakLogic() async {
    if (_user == null) return;

    try {
      final now = DateTime.now();
      final lastLogin = _user!.lastLoginDate;

      final today = DateTime(now.year, now.month, now.day);
      final lastDate = DateTime(lastLogin.year, lastLogin.month, lastLogin.day);

      final dayDifference = today.difference(lastDate).inDays;

      bool updated = false;

      // 1. Initial streak for new users
      if (_user!.streak == 0) {
        _user!.streak = 1;
        updated = true;
      }
      // 2. Consecutive day increment
      else if (dayDifference == 1) {
        _user!.streak += 1;
        updated = true;
      }
      // 3. Streak break reset
      else if (dayDifference > 1) {
        _user!.streak = 1;
        updated = true;
      }

      // If we updated the streak OR it's a new day, update the login date
      if (updated || dayDifference != 0) {
        _user!.lastLoginDate = now;
        await updateUserInfoOnServer(_user!);
        notifyListeners();
      }
    } catch (e) {
      debugPrint("❌ Streak Logic Error: $e");
    }
  }

  /// ✅ Persists user changes to the local "Database" and active session
  Future<void> updateUserInfoOnServer(UserModel user) async {
    try {
      // 1. Update the active session
      await _prefs.setString(AppConstants.userKey, jsonEncode(user.toJson()));

      // 2. Update the persistent DB
      final String? usersJson = _prefs.getString(_userDbKey);
      if (usersJson != null) {
        Map<String, dynamic> userDb = jsonDecode(usersJson);

        // Match user in local DB using the unique generated ID
        for (var email in userDb.keys) {
          final dbUserId =
              'user_${email.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')}';
          if (dbUserId == user.id) {
            userDb[email]['streak'] = user.streak;
            userDb[email]['lastLoginDate'] =
                user.lastLoginDate.toIso8601String();
            userDb[email]['totalPoints'] = user.totalPoints;
            userDb[email]['badgesEarned'] = user.badgesEarned;
            break;
          }
        }
        await _prefs.setString(_userDbKey, jsonEncode(userDb));
      }
    } catch (e) {
      debugPrint("❌ Error syncing to local DB: $e");
    }
  }

  /// Updates the local user state
  Future<void> updateUserLocal(UserModel updatedUser) async {
    _user = updatedUser;
    await updateUserInfoOnServer(_user!);
    notifyListeners();
  }

  /// Unified Login & Auto-Registration Logic
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
    String? name,
  }) async {
    final String normalizedEmail = email.trim().toLowerCase();
    final String? usersJson = _prefs.getString(_userDbKey);
    Map<String, dynamic> userDb =
        usersJson != null ? jsonDecode(usersJson) : {};

    if (userDb.containsKey(normalizedEmail)) {
      final userData = userDb[normalizedEmail];
      if (userData is! Map) {
        return {
          'success': false,
          'message': 'Account error. Please re-register.'
        };
      }

      if (userData['password'] == password) {
        return await _createSession(
            normalizedEmail, userData['name'], "Welcome back!",
            existingData: userData);
      } else {
        return {'success': false, 'message': 'Incorrect password.'};
      }
    } else {
      if (name == null || name.isEmpty) {
        return {'success': false, 'message': 'Full name required.'};
      }

      final nowStr = DateTime.now().toIso8601String();
      userDb[normalizedEmail] = {
        'password': password,
        'name': name,
        'registrationDate': nowStr,
        'streak': 0,
        'totalPoints': 0,
        'lastLoginDate':
            DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
        'badgesEarned': [],
      };

      await _prefs.setString(_userDbKey, jsonEncode(userDb));
      return await _createSession(normalizedEmail, name, "Account created!");
    }
  }

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    return await login(email: email, password: password, name: name);
  }

  Future<Map<String, dynamic>> _createSession(
      String email, String name, String msg,
      {Map<dynamic, dynamic>? existingData}) async {
    final String uniqueId =
        'user_${email.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')}';

    _user = UserModel(
      id: uniqueId,
      name: name,
      school: "JSPM's RSCOE",
      streak: existingData?['streak'] ?? 0,
      totalPoints: existingData?['totalPoints'] ?? 0,
      // If new user, set to yesterday to trigger initial streak
      lastLoginDate: existingData?['lastLoginDate'] != null
          ? DateTime.parse(existingData!['lastLoginDate'])
          : DateTime.now().subtract(const Duration(days: 1)),
      badgesEarned: List<String>.from(existingData?['badgesEarned'] ?? []),
    );

    await _prefs.setString(AppConstants.userKey, jsonEncode(_user!.toJson()));
    await _prefs.setString(AppConstants.tokenKey, 'jwt_token_${_user!.id}');

    notifyListeners();
    return {'success': true, 'message': msg};
  }

  Future<void> logout() async {
    _user = null;
    await _prefs.remove(AppConstants.userKey);
    await _prefs.remove(AppConstants.tokenKey);
    notifyListeners();
  }
}
