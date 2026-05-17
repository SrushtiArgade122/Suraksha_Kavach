import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageService extends ChangeNotifier {
  Locale _currentLocale = const Locale('en');
  final SharedPreferences prefs;

  LanguageService(this.prefs) {
    // Load saved language on startup
    String? languageCode = prefs.getString('language_code');
    if (languageCode != null) {
      _currentLocale = Locale(languageCode);
    }
  }

  Locale get currentLocale => _currentLocale;

  void changeLanguage(String type) async {
    _currentLocale = Locale(type);
    await prefs.setString('language_code', type);
    notifyListeners(); // This tells the app to rebuild in the new language
  }
}
