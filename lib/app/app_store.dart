import 'package:flutter/material.dart';

class AppStore extends ChangeNotifier {
  /// Variável responsável pelo [ThemeMode]
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;

  /// Função que irá alterar o valor o [ThemeMode]
  void switchTheme(ThemeMode? value) {
    if (value != null) {
      _themeMode = value;
    } else {
      _themeMode = ThemeMode.system;
    }
    notifyListeners();
  }
}