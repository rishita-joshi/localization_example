import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('hi'),
    const Locale('fr'),
    const Locale('de'),
    const Locale('es'),
    const Locale('ar'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'hi':
        return '🇮🇳';
      case 'de':
        return '🇩🇪';
      case 'fr':
        return 'FR';
      case 'es':
        return 'ES';
      case 'ar':
        return 'BH';

      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
