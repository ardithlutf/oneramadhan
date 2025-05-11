import 'dart:async';

/// Abstract interface for local storage functionality throughout the application.
///
/// This service provides persistent storage capabilities for app settings,
/// user preferences, and authentication state.
abstract class LocalStorageService {
  /// Initializes the storage service.
  ///
  /// This should be called before using the service, typically during app startup.
  /// Returns a [Future] that completes when initialization is done.
  FutureOr<void> initialize();

  /// Key for storing the auth token
  String get tokenKey;

  /// Key for storing the app locale
  String get localeKey;

  /// Key for storing the dark mode preference
  String get isDarkModeKey;

  /// Key for storing the first use flag
  String get isFirstUseKey;

  /// Key for storing the logged in status
  String get isLoggedInKey;

  /// Key for storing the logged as guest
  String get isGuestModeKey;

  /// Gets the current authentication token, if any
  String? get token;

  /// Gets whether dark mode is enabled
  bool get isDarkMode;

  /// Gets whether this is the first time the app is used
  bool get isFirstUse;

  /// Gets whether the user is logged in
  bool get isLoggedIn;

  /// Gets whether the user is a guest
  bool get isGuestMode;

  /// Gets the current app locale
  String get locale;

  /// Sets the dark mode preference
  Future<bool> setIsDarkMode(bool isDarkMode);

  /// Sets the first use flag
  Future<bool> setIsFirstUse(bool isFirstUse);

  /// Sets the logged in status
  Future<bool> setIsLoggedIn(bool isLoggedIn);

  /// Sets the logged as guest
  Future<bool> setIsGuestMode(bool isGuestMode);

  /// Sets the app locale
  Future<bool> setLocale(String locale);

  /// Sets the authentication token
  Future<bool> setToken(String token);

  /// Gets a value by key from storage
  dynamic getValue({required String key});

  /// Sets a value by key in storage
  ///
  /// Returns a Future that completes with success status
  Future<bool> setValue({required String key, required dynamic value});

  /// Clears all stored values
  ///
  /// Returns a Future that completes with success status
  Future<bool> clear();

  /// Removes a specific key from storage
  ///
  /// Returns a Future that completes with success status
  Future<bool> remove(String key);
}
