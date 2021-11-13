import 'package:flutter/material.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('hi'),
    const Locale('de'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'hi':
        return '🇮🇳';
      case 'de':
        return '🇩🇪';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
