import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalePreference {
  static const String locale = 'locale';

  static Future<SharedPreferences> _initSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  Future<Locale> setLocale(String languageCode) async {
    SharedPreferences _prefs = await _initSharedPreferences();
    _prefs.setString(locale, languageCode);
    return _locale(languageCode);
  }

  Future<Locale> getLocale() async {
    SharedPreferences _prefs = await _initSharedPreferences();
    String languageCode = _prefs.getString(locale) ?? 'en';
    return _locale(languageCode);
  }
}

// Language codes
const String english = 'en';
const String nepali = 'ne';

Locale _locale(String languageCode) {
  switch (languageCode) {
    case english:
      return const Locale(english);
    case nepali:
      return const Locale(nepali);
    default:
      return const Locale(english);
  }
}
