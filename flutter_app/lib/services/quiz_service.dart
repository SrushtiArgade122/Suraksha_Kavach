import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../generated/app_localizations.dart';
import 'dart:convert';

class QuizQuestion {
  final String id;
  final String question;
  final List<String> options;
  final String flashcardTip;
  final int correctOptionIndex;
  final String disasterType;
  final int level;

  QuizQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.flashcardTip,
    required this.correctOptionIndex,
    required this.disasterType,
    required this.level,
  });
}

class QuizService extends ChangeNotifier {
  List<QuizQuestion> _questions = [];
  bool _isLoading = false;

  int _totalSolvedQuestions = 0;
  final int maxQuestions = 180;

  final Map<String, int> _solvedLevels = {
    "Fire": 0,
    "Earthquake": 0,
    "Flood": 0,
  };

  List<QuizQuestion> get questions => _questions;
  bool get isLoading => _isLoading;
  int get totalSolvedQuestions => _totalSolvedQuestions;
  double get readinessProgress => _totalSolvedQuestions / maxQuestions;

  // ✅ 1. Method to clear data from memory when a user logs out
  void resetLocalState() {
    _totalSolvedQuestions = 0;
    _solvedLevels.updateAll((key, value) => 0);
    notifyListeners();
  }

  // ✅ 2. Load data tied to a specific User ID
  Future<void> loadProgress(String userId) async {
    final prefs = await SharedPreferences.getInstance();

    _totalSolvedQuestions = prefs.getInt('${userId}_total_points') ?? 0;
    _totalSolvedQuestions = prefs.getInt('${userId}_total_points') ?? 0;
    _solvedLevels["Fire"] = prefs.getInt('${userId}_fire_progress') ?? 0;
    _solvedLevels["Earthquake"] =
        prefs.getInt('${userId}_earthquake_progress') ?? 0;
    _solvedLevels["Flood"] = prefs.getInt('${userId}_flood_progress') ?? 0;

    notifyListeners();
  }

  Future<List<Map<String, dynamic>>> getAllRegisteredUsers() async {
    final prefs = await SharedPreferences.getInstance();

    // 1. Get the "Database" of users you created in AuthService
    final String? usersJson = prefs.getString("registered_users_db");
    if (usersJson == null) return [];

    Map<String, dynamic> userDb = jsonDecode(usersJson);
    List<Map<String, dynamic>> leaderList = [];

    // 2. Loop through every email in the database
    for (var email in userDb.keys) {
      final userData = userDb[email];

      // Generate the same ID used in AuthService
      final String userId =
          'user_${email.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '')}';

      // Get points for THIS specific user ID
      final int userPoints = prefs.getInt('${userId}_total_points') ?? 0;

      leaderList.add({
        'name': userData['name'] ?? 'Student',
        'points': userPoints,
        'email': email,
      });
    }

    // 3. Sort them by points high to low
    leaderList.sort((a, b) => b['points'].compareTo(a['points']));
    return leaderList;
  }

  // ✅ 3. Add point tied to a specific User ID
  Future<void> addPoint(String userId) async {
    if (_totalSolvedQuestions < maxQuestions) {
      _totalSolvedQuestions++;
      final prefs = await SharedPreferences.getInstance();
      // Save using the unique userId key
      await prefs.setInt('${userId}_total_points', _totalSolvedQuestions);
      notifyListeners();
    }
  }

  // ✅ 4. Complete level tied to a specific User ID
  Future<void> completeLevel(
      String userId, String disasterType, int level) async {
    if (level > (_solvedLevels[disasterType] ?? 0)) {
      _solvedLevels[disasterType] = level;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(
          '${userId}_${disasterType.toLowerCase()}_progress', level);
      notifyListeners();
    }
  }

  int getUnlockedLevel(String disasterType) {
    return (_solvedLevels[disasterType] ?? 0) + 1;
  }

  double getProgress(String disasterType) {
    final int solved = _solvedLevels[disasterType] ?? 0;
    return (solved / 20).clamp(0.0, 1.0);
  }

  // ==============================
  // DATA LOADING LOGIC (ARB Mapping)
  // ==============================

  void loadQuestions(BuildContext context, String disasterType, int level) {
    _isLoading = true;
    Future.microtask(() => notifyListeners());

    final allData = getLocalizedData(context);
    final categoryData = allData[disasterType];

    if (categoryData != null) {
      final levelMap = categoryData.firstWhere(
        (l) => l['level'] == level,
        orElse: () => {},
      );

      if (levelMap.isNotEmpty) {
        final List<Map<String, dynamic>> rawQuestions = levelMap['questions'];

        _questions = rawQuestions.map((q) {
          final parsedIndex = int.tryParse(q['answerIndex'].toString()) ?? 0;
          return QuizQuestion(
            id: "${disasterType}_$level",
            question: q['question'],
            options: List<String>.from(q['options']),
            flashcardTip: q['flashcardTip'],
            correctOptionIndex: parsedIndex,
            disasterType: disasterType,
            level: level,
          );
        }).toList();
      }
    }
    _isLoading = false;
    notifyListeners();
  }

  static Map<String, List<Map<String, dynamic>>> getLocalizedData(
      BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    Map<String, dynamic> buildQ(String type, int lv) {
      return {
        "question": _fetch(l10n, "q_${type}_$lv"),
        "options": [
          _fetch(l10n, "q_${type}_${lv}_opt0"),
          _fetch(l10n, "q_${type}_${lv}_opt1"),
          _fetch(l10n, "q_${type}_${lv}_opt2"),
          _fetch(l10n, "q_${type}_${lv}_opt3"),
        ],
        "answerIndex": _fetch(l10n, "q_${type}_${lv}_ans"),
        "flashcardTip": _fetch(l10n, "tip_${type}_$lv"),
      };
    }

    List<Map<String, dynamic>> buildCategory(String type) {
      return List.generate(
        20,
        (i) => {
          "level": i + 1,
          "questions": [buildQ(type, i + 1)],
        },
      );
    }

    return {
      "Fire": buildCategory("fire"),
      "Earthquake": buildCategory("earthquake"),
      "Flood": buildCategory("flood"),
    };
  }

  static String _fetch(AppLocalizations l10n, String key) {
    final Map<String, String> data = {
      // ==========================================
      // FIRE CATEGORY (Levels 1-20)
      // ==========================================
      "q_fire_1": l10n.q_fire_1,
      "q_fire_1_opt0": l10n.q_fire_1_opt0,
      "q_fire_1_opt1": l10n.q_fire_1_opt1,
      "q_fire_1_opt2": l10n.q_fire_1_opt2,
      "q_fire_1_opt3": l10n.q_fire_1_opt3,
      "q_fire_1_ans": l10n.q_fire_1_ans,
      "tip_fire_1": l10n.tip_fire_1,
      "q_fire_2": l10n.q_fire_2,
      "q_fire_2_opt0": l10n.q_fire_2_opt0,
      "q_fire_2_opt1": l10n.q_fire_2_opt1,
      "q_fire_2_opt2": l10n.q_fire_2_opt2,
      "q_fire_2_opt3": l10n.q_fire_2_opt3,
      "q_fire_2_ans": l10n.q_fire_2_ans,
      "tip_fire_2": l10n.tip_fire_2,
      "q_fire_3": l10n.q_fire_3,
      "q_fire_3_opt0": l10n.q_fire_3_opt0,
      "q_fire_3_opt1": l10n.q_fire_3_opt1,
      "q_fire_3_opt2": l10n.q_fire_3_opt2,
      "q_fire_3_opt3": l10n.q_fire_3_opt3,
      "q_fire_3_ans": l10n.q_fire_3_ans,
      "tip_fire_3": l10n.tip_fire_3,
      "q_fire_4": l10n.q_fire_4,
      "q_fire_4_opt0": l10n.q_fire_4_opt0,
      "q_fire_4_opt1": l10n.q_fire_4_opt1,
      "q_fire_4_opt2": l10n.q_fire_4_opt2,
      "q_fire_4_opt3": l10n.q_fire_4_opt3,
      "q_fire_4_ans": l10n.q_fire_4_ans,
      "tip_fire_4": l10n.tip_fire_4,
      "q_fire_5": l10n.q_fire_5,
      "q_fire_5_opt0": l10n.q_fire_5_opt0,
      "q_fire_5_opt1": l10n.q_fire_5_opt1,
      "q_fire_5_opt2": l10n.q_fire_5_opt2,
      "q_fire_5_opt3": l10n.q_fire_5_opt3,
      "q_fire_5_ans": l10n.q_fire_5_ans,
      "tip_fire_5": l10n.tip_fire_5,
      "q_fire_6": l10n.q_fire_6,
      "q_fire_6_opt0": l10n.q_fire_6_opt0,
      "q_fire_6_opt1": l10n.q_fire_6_opt1,
      "q_fire_6_opt2": l10n.q_fire_6_opt2,
      "q_fire_6_opt3": l10n.q_fire_6_opt3,
      "q_fire_6_ans": l10n.q_fire_6_ans,
      "tip_fire_6": l10n.tip_fire_6,
      "q_fire_7": l10n.q_fire_7,
      "q_fire_7_opt0": l10n.q_fire_7_opt0,
      "q_fire_7_opt1": l10n.q_fire_7_opt1,
      "q_fire_7_opt2": l10n.q_fire_7_opt2,
      "q_fire_7_opt3": l10n.q_fire_7_opt3,
      "q_fire_7_ans": l10n.q_fire_7_ans,
      "tip_fire_7": l10n.tip_fire_7,
      "q_fire_8": l10n.q_fire_8,
      "q_fire_8_opt0": l10n.q_fire_8_opt0,
      "q_fire_8_opt1": l10n.q_fire_8_opt1,
      "q_fire_8_opt2": l10n.q_fire_8_opt2,
      "q_fire_8_opt3": l10n.q_fire_8_opt3,
      "q_fire_8_ans": l10n.q_fire_8_ans,
      "tip_fire_8": l10n.tip_fire_8,
      "q_fire_9": l10n.q_fire_9,
      "q_fire_9_opt0": l10n.q_fire_9_opt0,
      "q_fire_9_opt1": l10n.q_fire_9_opt1,
      "q_fire_9_opt2": l10n.q_fire_9_opt2,
      "q_fire_9_opt3": l10n.q_fire_9_opt3,
      "q_fire_9_ans": l10n.q_fire_9_ans,
      "tip_fire_9": l10n.tip_fire_9,
      "q_fire_10": l10n.q_fire_10,
      "q_fire_10_opt0": l10n.q_fire_10_opt0,
      "q_fire_10_opt1": l10n.q_fire_10_opt1,
      "q_fire_10_opt2": l10n.q_fire_10_opt2,
      "q_fire_10_opt3": l10n.q_fire_10_opt3,
      "q_fire_10_ans": l10n.q_fire_10_ans,
      "tip_fire_10": l10n.tip_fire_10,
      "q_fire_11": l10n.q_fire_11,
      "q_fire_11_opt0": l10n.q_fire_11_opt0,
      "q_fire_11_opt1": l10n.q_fire_11_opt1,
      "q_fire_11_opt2": l10n.q_fire_11_opt2,
      "q_fire_11_opt3": l10n.q_fire_11_opt3,
      "q_fire_11_ans": l10n.q_fire_11_ans,
      "tip_fire_11": l10n.tip_fire_11,
      "q_fire_12": l10n.q_fire_12,
      "q_fire_12_opt0": l10n.q_fire_12_opt0,
      "q_fire_12_opt1": l10n.q_fire_12_opt1,
      "q_fire_12_opt2": l10n.q_fire_12_opt2,
      "q_fire_12_opt3": l10n.q_fire_12_opt3,
      "q_fire_12_ans": l10n.q_fire_12_ans,
      "tip_fire_12": l10n.tip_fire_12,
      "q_fire_13": l10n.q_fire_13,
      "q_fire_13_opt0": l10n.q_fire_13_opt0,
      "q_fire_13_opt1": l10n.q_fire_13_opt1,
      "q_fire_13_opt2": l10n.q_fire_13_opt2,
      "q_fire_13_opt3": l10n.q_fire_13_opt3,
      "q_fire_13_ans": l10n.q_fire_13_ans,
      "tip_fire_13": l10n.tip_fire_13,
      "q_fire_14": l10n.q_fire_14,
      "q_fire_14_opt0": l10n.q_fire_14_opt0,
      "q_fire_14_opt1": l10n.q_fire_14_opt1,
      "q_fire_14_opt2": l10n.q_fire_14_opt2,
      "q_fire_14_opt3": l10n.q_fire_14_opt3,
      "q_fire_14_ans": l10n.q_fire_14_ans,
      "tip_fire_14": l10n.tip_fire_14,
      "q_fire_15": l10n.q_fire_15,
      "q_fire_15_opt0": l10n.q_fire_15_opt0,
      "q_fire_15_opt1": l10n.q_fire_15_opt1,
      "q_fire_15_opt2": l10n.q_fire_15_opt2,
      "q_fire_15_opt3": l10n.q_fire_15_opt3,
      "q_fire_15_ans": l10n.q_fire_15_ans,
      "tip_fire_15": l10n.tip_fire_15,
      "q_fire_16": l10n.q_fire_16,
      "q_fire_16_opt0": l10n.q_fire_16_opt0,
      "q_fire_16_opt1": l10n.q_fire_16_opt1,
      "q_fire_16_opt2": l10n.q_fire_16_opt2,
      "q_fire_16_opt3": l10n.q_fire_16_opt3,
      "q_fire_16_ans": l10n.q_fire_16_ans,
      "tip_fire_16": l10n.tip_fire_16,
      "q_fire_17": l10n.q_fire_17,
      "q_fire_17_opt0": l10n.q_fire_17_opt0,
      "q_fire_17_opt1": l10n.q_fire_17_opt1,
      "q_fire_17_opt2": l10n.q_fire_17_opt2,
      "q_fire_17_opt3": l10n.q_fire_17_opt3,
      "q_fire_17_ans": l10n.q_fire_17_ans,
      "tip_fire_17": l10n.tip_fire_17,
      "q_fire_18": l10n.q_fire_18,
      "q_fire_18_opt0": l10n.q_fire_18_opt0,
      "q_fire_18_opt1": l10n.q_fire_18_opt1,
      "q_fire_18_opt2": l10n.q_fire_18_opt2,
      "q_fire_18_opt3": l10n.q_fire_18_opt3,
      "q_fire_18_ans": l10n.q_fire_18_ans,
      "tip_fire_18": l10n.tip_fire_18,
      "q_fire_19": l10n.q_fire_19,
      "q_fire_19_opt0": l10n.q_fire_19_opt0,
      "q_fire_19_opt1": l10n.q_fire_19_opt1,
      "q_fire_19_opt2": l10n.q_fire_19_opt2,
      "q_fire_19_opt3": l10n.q_fire_19_opt3,
      "q_fire_19_ans": l10n.q_fire_19_ans,
      "tip_fire_19": l10n.tip_fire_19,
      "q_fire_20": l10n.q_fire_20,
      "q_fire_20_opt0": l10n.q_fire_20_opt0,
      "q_fire_20_opt1": l10n.q_fire_20_opt1,
      "q_fire_20_opt2": l10n.q_fire_20_opt2,
      "q_fire_20_opt3": l10n.q_fire_20_opt3,
      "q_fire_20_ans": l10n.q_fire_20_ans,
      "tip_fire_20": l10n.tip_fire_20,

      // ==========================================
      // EARTHQUAKE CATEGORY (Levels 1-20)
      // ==========================================
      "q_earthquake_1": l10n.q_earthquake_1,
      "q_earthquake_1_opt0": l10n.q_earthquake_1_opt0,
      "q_earthquake_1_opt1": l10n.q_earthquake_1_opt1,
      "q_earthquake_1_opt2": l10n.q_earthquake_1_opt2,
      "q_earthquake_1_opt3": l10n.q_earthquake_1_opt3,
      "q_earthquake_1_ans": l10n.q_earthquake_1_ans,
      "tip_earthquake_1": l10n.tip_earthquake_1,
      "q_earthquake_2": l10n.q_earthquake_2,
      "q_earthquake_2_opt0": l10n.q_earthquake_2_opt0,
      "q_earthquake_2_opt1": l10n.q_earthquake_2_opt1,
      "q_earthquake_2_opt2": l10n.q_earthquake_2_opt2,
      "q_earthquake_2_opt3": l10n.q_earthquake_2_opt3,
      "q_earthquake_2_ans": l10n.q_earthquake_2_ans,
      "tip_earthquake_2": l10n.tip_earthquake_2,
      "q_earthquake_3": l10n.q_earthquake_3,
      "q_earthquake_3_opt0": l10n.q_earthquake_3_opt0,
      "q_earthquake_3_opt1": l10n.q_earthquake_3_opt1,
      "q_earthquake_3_opt2": l10n.q_earthquake_3_opt2,
      "q_earthquake_3_opt3": l10n.q_earthquake_3_opt3,
      "q_earthquake_3_ans": l10n.q_earthquake_3_ans,
      "tip_earthquake_3": l10n.tip_earthquake_3,
      "q_earthquake_4": l10n.q_earthquake_4,
      "q_earthquake_4_opt0": l10n.q_earthquake_4_opt0,
      "q_earthquake_4_opt1": l10n.q_earthquake_4_opt1,
      "q_earthquake_4_opt2": l10n.q_earthquake_4_opt2,
      "q_earthquake_4_opt3": l10n.q_earthquake_4_opt3,
      "q_earthquake_4_ans": l10n.q_earthquake_4_ans,
      "tip_earthquake_4": l10n.tip_earthquake_4,
      "q_earthquake_5": l10n.q_earthquake_5,
      "q_earthquake_5_opt0": l10n.q_earthquake_5_opt0,
      "q_earthquake_5_opt1": l10n.q_earthquake_5_opt1,
      "q_earthquake_5_opt2": l10n.q_earthquake_5_opt2,
      "q_earthquake_5_opt3": l10n.q_earthquake_5_opt3,
      "q_earthquake_5_ans": l10n.q_earthquake_5_ans,
      "tip_earthquake_5": l10n.tip_earthquake_5,
      "q_earthquake_6": l10n.q_earthquake_6,
      "q_earthquake_6_opt0": l10n.q_earthquake_6_opt0,
      "q_earthquake_6_opt1": l10n.q_earthquake_6_opt1,
      "q_earthquake_6_opt2": l10n.q_earthquake_6_opt2,
      "q_earthquake_6_opt3": l10n.q_earthquake_6_opt3,
      "q_earthquake_6_ans": l10n.q_earthquake_6_ans,
      "tip_earthquake_6": l10n.tip_earthquake_6,
      "q_earthquake_7": l10n.q_earthquake_7,
      "q_earthquake_7_opt0": l10n.q_earthquake_7_opt0,
      "q_earthquake_7_opt1": l10n.q_earthquake_7_opt1,
      "q_earthquake_7_opt2": l10n.q_earthquake_7_opt2,
      "q_earthquake_7_opt3": l10n.q_earthquake_7_opt3,
      "q_earthquake_7_ans": l10n.q_earthquake_7_ans,
      "tip_earthquake_7": l10n.tip_earthquake_7,
      "q_earthquake_8": l10n.q_earthquake_8,
      "q_earthquake_8_opt0": l10n.q_earthquake_8_opt0,
      "q_earthquake_8_opt1": l10n.q_earthquake_8_opt1,
      "q_earthquake_8_opt2": l10n.q_earthquake_8_opt2,
      "q_earthquake_8_opt3": l10n.q_earthquake_8_opt3,
      "q_earthquake_8_ans": l10n.q_earthquake_8_ans,
      "tip_earthquake_8": l10n.tip_earthquake_8,
      "q_earthquake_9": l10n.q_earthquake_9,
      "q_earthquake_9_opt0": l10n.q_earthquake_9_opt0,
      "q_earthquake_9_opt1": l10n.q_earthquake_9_opt1,
      "q_earthquake_9_opt2": l10n.q_earthquake_9_opt2,
      "q_earthquake_9_opt3": l10n.q_earthquake_9_opt3,
      "q_earthquake_9_ans": l10n.q_earthquake_9_ans,
      "tip_earthquake_9": l10n.tip_earthquake_9,
      "q_earthquake_10": l10n.q_earthquake_10,
      "q_earthquake_10_opt0": l10n.q_earthquake_10_opt0,
      "q_earthquake_10_opt1": l10n.q_earthquake_10_opt1,
      "q_earthquake_10_opt2": l10n.q_earthquake_10_opt2,
      "q_earthquake_10_opt3": l10n.q_earthquake_10_opt3,
      "q_earthquake_10_ans": l10n.q_earthquake_10_ans,
      "tip_earthquake_10": l10n.tip_earthquake_10,
      "q_earthquake_11": l10n.q_earthquake_11,
      "q_earthquake_11_opt0": l10n.q_earthquake_11_opt0,
      "q_earthquake_11_opt1": l10n.q_earthquake_11_opt1,
      "q_earthquake_11_opt2": l10n.q_earthquake_11_opt2,
      "q_earthquake_11_opt3": l10n.q_earthquake_11_opt3,
      "q_earthquake_11_ans": l10n.q_earthquake_11_ans,
      "tip_earthquake_11": l10n.tip_earthquake_11,
      "q_earthquake_12": l10n.q_earthquake_12,
      "q_earthquake_12_opt0": l10n.q_earthquake_12_opt0,
      "q_earthquake_12_opt1": l10n.q_earthquake_12_opt1,
      "q_earthquake_12_opt2": l10n.q_earthquake_12_opt2,
      "q_earthquake_12_opt3": l10n.q_earthquake_12_opt3,
      "q_earthquake_12_ans": l10n.q_earthquake_12_ans,
      "tip_earthquake_12": l10n.tip_earthquake_12,
      "q_earthquake_13": l10n.q_earthquake_13,
      "q_earthquake_13_opt0": l10n.q_earthquake_13_opt0,
      "q_earthquake_13_opt1": l10n.q_earthquake_13_opt1,
      "q_earthquake_13_opt2": l10n.q_earthquake_13_opt2,
      "q_earthquake_13_opt3": l10n.q_earthquake_13_opt3,
      "q_earthquake_13_ans": l10n.q_earthquake_13_ans,
      "tip_earthquake_13": l10n.tip_earthquake_13,
      "q_earthquake_14": l10n.q_earthquake_14,
      "q_earthquake_14_opt0": l10n.q_earthquake_14_opt0,
      "q_earthquake_14_opt1": l10n.q_earthquake_14_opt1,
      "q_earthquake_14_opt2": l10n.q_earthquake_14_opt2,
      "q_earthquake_14_opt3": l10n.q_earthquake_14_opt3,
      "q_earthquake_14_ans": l10n.q_earthquake_14_ans,
      "tip_earthquake_14": l10n.tip_earthquake_14,
      "q_earthquake_15": l10n.q_earthquake_15,
      "q_earthquake_15_opt0": l10n.q_earthquake_15_opt0,
      "q_earthquake_15_opt1": l10n.q_earthquake_15_opt1,
      "q_earthquake_15_opt2": l10n.q_earthquake_15_opt2,
      "q_earthquake_15_opt3": l10n.q_earthquake_15_opt3,
      "q_earthquake_15_ans": l10n.q_earthquake_15_ans,
      "tip_earthquake_15": l10n.tip_earthquake_15,
      "q_earthquake_16": l10n.q_earthquake_16,
      "q_earthquake_16_opt0": l10n.q_earthquake_16_opt0,
      "q_earthquake_16_opt1": l10n.q_earthquake_16_opt1,
      "q_earthquake_16_opt2": l10n.q_earthquake_16_opt2,
      "q_earthquake_16_opt3": l10n.q_earthquake_16_opt3,
      "q_earthquake_16_ans": l10n.q_earthquake_16_ans,
      "tip_earthquake_16": l10n.tip_earthquake_16,
      "q_earthquake_17": l10n.q_earthquake_17,
      "q_earthquake_17_opt0": l10n.q_earthquake_17_opt0,
      "q_earthquake_17_opt1": l10n.q_earthquake_17_opt1,
      "q_earthquake_17_opt2": l10n.q_earthquake_17_opt2,
      "q_earthquake_17_opt3": l10n.q_earthquake_17_opt3,
      "q_earthquake_17_ans": l10n.q_earthquake_17_ans,
      "tip_earthquake_17": l10n.tip_earthquake_17,
      "q_earthquake_18": l10n.q_earthquake_18,
      "q_earthquake_18_opt0": l10n.q_earthquake_18_opt0,
      "q_earthquake_18_opt1": l10n.q_earthquake_18_opt1,
      "q_earthquake_18_opt2": l10n.q_earthquake_18_opt2,
      "q_earthquake_18_opt3": l10n.q_earthquake_18_opt3,
      "q_earthquake_18_ans": l10n.q_earthquake_18_ans,
      "tip_earthquake_18": l10n.tip_earthquake_18,
      "q_earthquake_19": l10n.q_earthquake_19,
      "q_earthquake_19_opt0": l10n.q_earthquake_19_opt0,
      "q_earthquake_19_opt1": l10n.q_earthquake_19_opt1,
      "q_earthquake_19_opt2": l10n.q_earthquake_19_opt2,
      "q_earthquake_19_opt3": l10n.q_earthquake_19_opt3,
      "q_earthquake_19_ans": l10n.q_earthquake_19_ans,
      "tip_earthquake_19": l10n.tip_earthquake_19,
      "q_earthquake_20": l10n.q_earthquake_20,
      "q_earthquake_20_opt0": l10n.q_earthquake_20_opt0,
      "q_earthquake_20_opt1": l10n.q_earthquake_20_opt1,
      "q_earthquake_20_opt2": l10n.q_earthquake_20_opt2,
      "q_earthquake_20_opt3": l10n.q_earthquake_20_opt3,
      "q_earthquake_20_ans": l10n.q_earthquake_20_ans,
      "tip_earthquake_20": l10n.tip_earthquake_20,

      // ==========================================
      // FLOOD CATEGORY (Levels 1-20)
      // ==========================================
      "q_flood_1": l10n.q_flood_1,
      "q_flood_1_opt0": l10n.q_flood_1_opt0,
      "q_flood_1_opt1": l10n.q_flood_1_opt1,
      "q_flood_1_opt2": l10n.q_flood_1_opt2,
      "q_flood_1_opt3": l10n.q_flood_1_opt3,
      "q_flood_1_ans": l10n.q_flood_1_ans,
      "tip_flood_1": l10n.tip_flood_1,
      "q_flood_2": l10n.q_flood_2,
      "q_flood_2_opt0": l10n.q_flood_2_opt0,
      "q_flood_2_opt1": l10n.q_flood_2_opt1,
      "q_flood_2_opt2": l10n.q_flood_2_opt2,
      "q_flood_2_opt3": l10n.q_flood_2_opt3,
      "q_flood_2_ans": l10n.q_flood_2_ans,
      "tip_flood_2": l10n.tip_flood_2,
      "q_flood_3": l10n.q_flood_3,
      "q_flood_3_opt0": l10n.q_flood_3_opt0,
      "q_flood_3_opt1": l10n.q_flood_3_opt1,
      "q_flood_3_opt2": l10n.q_flood_3_opt2,
      "q_flood_3_opt3": l10n.q_flood_3_opt3,
      "q_flood_3_ans": l10n.q_flood_3_ans,
      "tip_flood_3": l10n.tip_flood_3,
      "q_flood_4": l10n.q_flood_4,
      "q_flood_4_opt0": l10n.q_flood_4_opt0,
      "q_flood_4_opt1": l10n.q_flood_4_opt1,
      "q_flood_4_opt2": l10n.q_flood_4_opt2,
      "q_flood_4_opt3": l10n.q_flood_4_opt3,
      "q_flood_4_ans": l10n.q_flood_4_ans,
      "tip_flood_4": l10n.tip_flood_4,
      "q_flood_5": l10n.q_flood_5,
      "q_flood_5_opt0": l10n.q_flood_5_opt0,
      "q_flood_5_opt1": l10n.q_flood_5_opt1,
      "q_flood_5_opt2": l10n.q_flood_5_opt2,
      "q_flood_5_opt3": l10n.q_flood_5_opt3,
      "q_flood_5_ans": l10n.q_flood_5_ans,
      "tip_flood_5": l10n.tip_flood_5,
      "q_flood_6": l10n.q_flood_6,
      "q_flood_6_opt0": l10n.q_flood_6_opt0,
      "q_flood_6_opt1": l10n.q_flood_6_opt1,
      "q_flood_6_opt2": l10n.q_flood_6_opt2,
      "q_flood_6_opt3": l10n.q_flood_6_opt3,
      "q_flood_6_ans": l10n.q_flood_6_ans,
      "tip_flood_6": l10n.tip_flood_6,
      "q_flood_7": l10n.q_flood_7,
      "q_flood_7_opt0": l10n.q_flood_7_opt0,
      "q_flood_7_opt1": l10n.q_flood_7_opt1,
      "q_flood_7_opt2": l10n.q_flood_7_opt2,
      "q_flood_7_opt3": l10n.q_flood_7_opt3,
      "q_flood_7_ans": l10n.q_flood_7_ans,
      "tip_flood_7": l10n.tip_flood_7,
      "q_flood_8": l10n.q_flood_8,
      "q_flood_8_opt0": l10n.q_flood_8_opt0,
      "q_flood_8_opt1": l10n.q_flood_8_opt1,
      "q_flood_8_opt2": l10n.q_flood_8_opt2,
      "q_flood_8_opt3": l10n.q_flood_8_opt3,
      "q_flood_8_ans": l10n.q_flood_8_ans,
      "tip_flood_8": l10n.tip_flood_8,
      "q_flood_9": l10n.q_flood_9,
      "q_flood_9_opt0": l10n.q_flood_9_opt0,
      "q_flood_9_opt1": l10n.q_flood_9_opt1,
      "q_flood_9_opt2": l10n.q_flood_9_opt2,
      "q_flood_9_opt3": l10n.q_flood_9_opt3,
      "q_flood_9_ans": l10n.q_flood_9_ans,
      "tip_flood_9": l10n.tip_flood_9,
      "q_flood_10": l10n.q_flood_10,
      "q_flood_10_opt0": l10n.q_flood_10_opt0,
      "q_flood_10_opt1": l10n.q_flood_10_opt1,
      "q_flood_10_opt2": l10n.q_flood_10_opt2,
      "q_flood_10_opt3": l10n.q_flood_10_opt3,
      "q_flood_10_ans": l10n.q_flood_10_ans,
      "tip_flood_10": l10n.tip_flood_10,
      "q_flood_11": l10n.q_flood_11,
      "q_flood_11_opt0": l10n.q_flood_11_opt0,
      "q_flood_11_opt1": l10n.q_flood_11_opt1,
      "q_flood_11_opt2": l10n.q_flood_11_opt2,
      "q_flood_11_opt3": l10n.q_flood_11_opt3,
      "q_flood_11_ans": l10n.q_flood_11_ans,
      "tip_flood_11": l10n.tip_flood_11,
      "q_flood_12": l10n.q_flood_12,
      "q_flood_12_opt0": l10n.q_flood_12_opt0,
      "q_flood_12_opt1": l10n.q_flood_12_opt1,
      "q_flood_12_opt2": l10n.q_flood_12_opt2,
      "q_flood_12_opt3": l10n.q_flood_12_opt3,
      "q_flood_12_ans": l10n.q_flood_12_ans,
      "tip_flood_12": l10n.tip_flood_12,
      "q_flood_13": l10n.q_flood_13,
      "q_flood_13_opt0": l10n.q_flood_13_opt0,
      "q_flood_13_opt1": l10n.q_flood_13_opt1,
      "q_flood_13_opt2": l10n.q_flood_13_opt2,
      "q_flood_13_opt3": l10n.q_flood_13_opt3,
      "q_flood_13_ans": l10n.q_flood_13_ans,
      "tip_flood_13": l10n.tip_flood_13,
      "q_flood_14": l10n.q_flood_14,
      "q_flood_14_opt0": l10n.q_flood_14_opt0,
      "q_flood_14_opt1": l10n.q_flood_14_opt1,
      "q_flood_14_opt2": l10n.q_flood_14_opt2,
      "q_flood_14_opt3": l10n.q_flood_14_opt3,
      "q_flood_14_ans": l10n.q_flood_14_ans,
      "tip_flood_14": l10n.tip_flood_14,
      "q_flood_15": l10n.q_flood_15,
      "q_flood_15_opt0": l10n.q_flood_15_opt0,
      "q_flood_15_opt1": l10n.q_flood_15_opt1,
      "q_flood_15_opt2": l10n.q_flood_15_opt2,
      "q_flood_15_opt3": l10n.q_flood_15_opt3,
      "q_flood_15_ans": l10n.q_flood_15_ans,
      "tip_flood_15": l10n.tip_flood_15,
      "q_flood_16": l10n.q_flood_16,
      "q_flood_16_opt0": l10n.q_flood_16_opt0,
      "q_flood_16_opt1": l10n.q_flood_16_opt1,
      "q_flood_16_opt2": l10n.q_flood_16_opt2,
      "q_flood_16_opt3": l10n.q_flood_16_opt3,
      "q_flood_16_ans": l10n.q_flood_16_ans,
      "tip_flood_16": l10n.tip_flood_16,
      "q_flood_17": l10n.q_flood_17,
      "q_flood_17_opt0": l10n.q_flood_17_opt0,
      "q_flood_17_opt1": l10n.q_flood_17_opt1,
      "q_flood_17_opt2": l10n.q_flood_17_opt2,
      "q_flood_17_opt3": l10n.q_flood_17_opt3,
      "q_flood_17_ans": l10n.q_flood_17_ans,
      "tip_flood_17": l10n.tip_flood_17,
      "q_flood_18": l10n.q_flood_18,
      "q_flood_18_opt0": l10n.q_flood_18_opt0,
      "q_flood_18_opt1": l10n.q_flood_18_opt1,
      "q_flood_18_opt2": l10n.q_flood_18_opt2,
      "q_flood_18_opt3": l10n.q_flood_18_opt3,
      "q_flood_18_ans": l10n.q_flood_18_ans,
      "tip_flood_18": l10n.tip_flood_18,
      "q_flood_19": l10n.q_flood_19,
      "q_flood_19_opt0": l10n.q_flood_19_opt0,
      "q_flood_19_opt1": l10n.q_flood_19_opt1,
      "q_flood_19_opt2": l10n.q_flood_19_opt2,
      "q_flood_19_opt3": l10n.q_flood_19_opt3,
      "q_flood_19_ans": l10n.q_flood_19_ans,
      "tip_flood_19": l10n.tip_flood_19,
      "q_flood_20": l10n.q_flood_20,
      "q_flood_20_opt0": l10n.q_flood_20_opt0,
      "q_flood_20_opt1": l10n.q_flood_20_opt1,
      "q_flood_20_opt2": l10n.q_flood_20_opt2,
      "q_flood_20_opt3": l10n.q_flood_20_opt3,
      "q_flood_20_ans": l10n.q_flood_20_ans,
      "tip_flood_20": l10n.tip_flood_20,
    };

    if (key.endsWith("_ans") && !data.containsKey(key)) return "0";
    return data[key] ?? "Text Missing for $key";
  }
}
