import 'dart:async';

abstract class LocalStorageService {
  String tokenKey = '';
  String localeKey = '';
  String isDarkModeKey = '';
  String isFirstUseKey = '';
  String isLoggedInKey = '';

  FutureOr<void> init();
  String? get token;
  String get locale;
  bool get isDarkMode;
  bool get isFirstUse;
  bool get isLoggedIn;

  Future<bool> setToken(String token);
  Future<bool> setLocale(String locale);
  Future<bool> setIsDarkMode(bool isDarkMode);
  Future<bool> setIsFirstUse(bool isFirstUse);
  Future<bool> setIsLoggedIn(bool isLoggedIn);

  void setValue({required String key, required dynamic value});
  dynamic getValue({required String key});
}
