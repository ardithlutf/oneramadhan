import 'dart:async';

import 'package:oneramadhan/configs/app_config.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService implements LocalStorageService {
  SharedPreferencesService() {
    init();
  }
  late final SharedPreferences _pref;

  @override
  String tokenKey = 'tokenKey';
  @override
  String localeKey = 'localeKey';
  @override
  String isDarkModeKey = 'isDarkModeKey';
  @override
  String isFirstUseKey = 'isFirstUseKey';
  @override
  String isLoggedInKey = 'isLoggedInKey';

  @override
  FutureOr<void> init() async {
    _pref = await SharedPreferences.getInstance();
    Injector.instance.signalReady(this);
  }

  @override
  String? get token => _pref.getString(tokenKey);

  @override
  bool get isDarkMode => _pref.getBool(isDarkModeKey) ?? false;

  @override
  bool get isFirstUse => _pref.getBool(isFirstUseKey) ?? false;

  @override
  bool get isLoggedIn => _pref.getBool(isLoggedInKey) ?? false;

  @override
  String get locale => _pref.getString(localeKey) ?? AppConfig.defaultLocale;

  @override
  Future<bool> setIsDarkMode(bool isDarkMode) async {
    return await _pref.setBool(isDarkModeKey, isDarkMode);
  }

  @override
  Future<bool> setIsFirstUse(bool isFirstUse) async {
    return await _pref.setBool(isFirstUseKey, isFirstUse);
  }

  @override
  Future<bool> setIsLoggedIn(bool isFirstUse) async {
    return await _pref.setBool(isLoggedInKey, isFirstUse);
  }

  @override
  Future<bool> setLocale(String locale) async {
    return await _pref.setString(localeKey, locale);
  }

  @override
  Future<bool> setToken(String token) async {
    return await _pref.setString(tokenKey, token);
  }

  @override
  getValue({required String key}) {
    return _pref.get(key);
  }

  @override
  void setValue({required String key, required value}) {}
}
