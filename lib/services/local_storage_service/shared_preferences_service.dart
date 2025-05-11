import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:oneramadhan/configs/app_config.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';
import 'package:oneramadhan/services/log_service/log_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Implementation of [LocalStorageService] using SharedPreferences for persistence.
///
/// This service handles storing and retrieving user preferences and app state
/// using the Flutter SharedPreferences package for persistent local storage.
class SharedPreferencesService implements LocalStorageService {
  /// SharedPreferences instance
  late final SharedPreferences _pref;

  /// Logger service for reporting errors
  final LogService? _logService;

  /// Flag indicating if the service has been initialized
  bool _isInitialized = false;

  /// Creates a new SharedPreferencesService
  ///
  /// Optionally accepts a [logService] for error logging
  SharedPreferencesService({LogService? logService}) : _logService = logService;

  @override
  String tokenKey = 'oneramadhan_token';

  @override
  String localeKey = 'oneramadhan_locale';

  @override
  String isDarkModeKey = 'oneramadhan_isDarkMode';

  @override
  String isFirstUseKey = 'oneramadhan_isFirstUse';

  @override
  String isLoggedInKey = 'oneramadhan_isLoggedIn';

  @override
  String isGuestModeKey = 'oneramadhan_isGuestMode';

  /// Initializes the SharedPreferences instance.
  ///
  /// This must be called before using any other method.
  @override
  Future<void> initialize() async {
    try {
      _pref = await SharedPreferences.getInstance();
      _isInitialized = true;
      debugPrint('✅ SharedPreferencesService initialized');
    } catch (e, stackTrace) {
      _isInitialized = false;
      debugPrint('❌ Error initializing SharedPreferencesService: $e');
      _logService?.error(
          'Failed to initialize SharedPreferencesService', e, stackTrace);
      rethrow;
    }
  }

  /// Ensures the service is initialized before use
  void _checkInitialized() {
    if (!_isInitialized) {
      throw StateError(
          'SharedPreferencesService not initialized. Call initialize() first.');
    }
  }

  @override
  String? get token {
    _checkInitialized();
    return _pref.getString(tokenKey);
  }

  @override
  bool get isDarkMode {
    _checkInitialized();
    return _pref.getBool(isDarkModeKey) ?? false;
  }

  @override
  bool get isFirstUse {
    _checkInitialized();
    return _pref.getBool(isFirstUseKey) ??
        true; // Default to true for first use
  }

  @override
  bool get isLoggedIn {
    _checkInitialized();
    return _pref.getBool(isLoggedInKey) ?? false;
  }

  @override
  bool get isGuestMode {
    _checkInitialized();
    return _pref.getBool(isGuestModeKey) ?? false;
  }

  @override
  String get locale {
    _checkInitialized();
    return _pref.getString(localeKey) ?? AppConfig.defaultLocale;
  }

  @override
  Future<bool> setIsDarkMode(bool isDarkMode) async {
    _checkInitialized();
    try {
      final result = await _pref.setBool(isDarkModeKey, isDarkMode);
      _logService?.debug('Dark mode set to: $isDarkMode');
      return result;
    } catch (e, stackTrace) {
      _logService?.error('Failed to set dark mode preference', e, stackTrace);
      return false;
    }
  }

  @override
  Future<bool> setIsFirstUse(bool isFirstUse) async {
    _checkInitialized();
    try {
      return await _pref.setBool(isFirstUseKey, isFirstUse);
    } catch (e, stackTrace) {
      _logService?.error('Failed to set first use flag', e, stackTrace);
      return false;
    }
  }

  @override
  Future<bool> setIsLoggedIn(bool isLoggedIn) async {
    _checkInitialized();
    try {
      return await _pref.setBool(isLoggedInKey, isLoggedIn);
    } catch (e, stackTrace) {
      _logService?.error('Failed to set logged in status', e, stackTrace);
      return false;
    }
  }

  @override
  Future<bool> setIsGuestMode(bool isGuestMode) async {
    _checkInitialized();
    try {
      return await _pref.setBool(isGuestModeKey, isGuestMode);
    } catch (e, stackTrace) {
      _logService?.error('Failed to set guest mode', e, stackTrace);
      return false;
    }
  }

  @override
  Future<bool> setLocale(String locale) async {
    _checkInitialized();
    try {
      return await _pref.setString(localeKey, locale);
    } catch (e, stackTrace) {
      _logService?.error('Failed to set locale', e, stackTrace);
      return false;
    }
  }

  @override
  Future<bool> setToken(String token) async {
    _checkInitialized();
    try {
      return await _pref.setString(tokenKey, token);
    } catch (e, stackTrace) {
      _logService?.error('Failed to set token', e, stackTrace);
      return false;
    }
  }

  @override
  dynamic getValue({required String key}) {
    _checkInitialized();
    try {
      return _pref.get(key);
    } catch (e, stackTrace) {
      _logService?.error('Failed to get value for key: $key', e, stackTrace);
      return null;
    }
  }

  @override
  Future<bool> setValue({required String key, required dynamic value}) async {
    _checkInitialized();
    try {
      if (value is String) {
        return await _pref.setString(key, value);
      } else if (value is bool) {
        return await _pref.setBool(key, value);
      } else if (value is int) {
        return await _pref.setInt(key, value);
      } else if (value is double) {
        return await _pref.setDouble(key, value);
      } else if (value is List<String>) {
        return await _pref.setStringList(key, value);
      } else {
        throw ArgumentError('Unsupported value type: ${value.runtimeType}');
      }
    } catch (e, stackTrace) {
      _logService?.error('Failed to set value for key: $key', e, stackTrace);
      return false;
    }
  }

  @override
  Future<bool> clear() async {
    _checkInitialized();
    try {
      final result = await _pref.clear();
      _logService?.info('Local storage cleared');
      return result;
    } catch (e, stackTrace) {
      _logService?.error('Failed to clear local storage', e, stackTrace);
      return false;
    }
  }

  @override
  Future<bool> remove(String key) async {
    _checkInitialized();
    try {
      final result = await _pref.remove(key);
      return result;
    } catch (e, stackTrace) {
      _logService?.error('Failed to remove key: $key', e, stackTrace);
      return false;
    }
  }
}
