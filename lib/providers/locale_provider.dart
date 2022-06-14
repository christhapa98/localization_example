import 'package:flutter/material.dart';
import 'package:localization_sample/constants/l10n.dart';
import 'package:localization_sample/services/shared_preferences_services.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    _locale = locale;
    LocalePreference().setLocale(locale.languageCode);
    notifyListeners();
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
