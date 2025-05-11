import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

import 'crashlytics_service.dart';

/// Firebase implementation of the [CrashlyticsService] interface.
///
/// This class uses Firebase Crashlytics to report and track application errors.
/// It handles initialization of the Crashlytics instance and provides methods
/// to record errors, logs, and custom keys.
class FirebaseCrashlyticsService implements CrashlyticsService {
  /// Firebase Crashlytics instance
  late final FirebaseCrashlytics _crashlytics;

  /// Flag indicating if the service has been initialized
  bool _isInitialized = false;

  /// Initializes the Firebase Crashlytics instance.
  ///
  /// Sets up error handling for Flutter framework errors.
  /// Returns a [Future] that completes when initialization is done.
  @override
  Future<void> initialize() async {
    try {
      // Get Crashlytics instance
      _crashlytics = FirebaseCrashlytics.instance;

      // Set collection enabled based on build mode
      await _crashlytics.setCrashlyticsCollectionEnabled(!kDebugMode);

      // Catch Flutter errors
      FlutterError.onError = (FlutterErrorDetails details) {
        _crashlytics.recordFlutterError(details);
        // Also print to console in debug mode
        if (kDebugMode) {
          FlutterError.dumpErrorToConsole(details);
        }
      };

      // Catch platform errors (outside Flutter/Dart)
      PlatformDispatcher.instance.onError = (error, stack) {
        recordError(error, stack);
        return true; // Return true to prevent the error from propagating
      };

      _isInitialized = true;
      debugPrint('✅ Firebase Crashlytics initialized');
    } catch (e, stackTrace) {
      debugPrint('❌ Error initializing Firebase Crashlytics: $e');
      if (kDebugMode) {
        debugPrint(stackTrace.toString());
      }
      // We don't rethrow here to prevent app crashes if Crashlytics fails
      // Instead, all methods will safely handle the uninitialized state
    }
  }

  /// Records a non-fatal error with an associated stack trace.
  @override
  void recordError(dynamic error, StackTrace stackTrace, {String? reason}) {
    if (!_isInitialized) return;

    try {
      _crashlytics.recordError(
        error,
        stackTrace,
        reason: reason,
        fatal: false,
      );
    } catch (e) {
      // Fail silently in production, log in debug
      if (kDebugMode) {
        debugPrint('Error recording to Crashlytics: $e');
      }
    }
  }

  /// Records a custom message to Firebase Crashlytics.
  @override
  void log(String message) {
    if (!_isInitialized) return;

    try {
      _crashlytics.log(message);
    } catch (e) {
      // Fail silently
    }
  }

  /// Sets a custom key-value pair that will be attached to crash reports.
  @override
  void setCustomKey(String key, dynamic value) {
    if (!_isInitialized) return;

    try {
      if (value is String) {
        _crashlytics.setCustomKey(key, value);
      } else if (value is int) {
        _crashlytics.setCustomKey(key, value);
      } else if (value is double) {
        _crashlytics.setCustomKey(key, value);
      } else if (value is bool) {
        _crashlytics.setCustomKey(key, value);
      } else {
        _crashlytics.setCustomKey(key, value.toString());
      }
    } catch (e) {
      // Fail silently
    }
  }

  /// Sets user identifier for crash reports.
  @override
  void setUserIdentifier(String userId) {
    if (!_isInitialized) return;

    try {
      _crashlytics.setUserIdentifier(userId);
    } catch (e) {
      // Fail silently
    }
  }

  /// Enables or disables crash reporting collection.
  @override
  Future<void> setCrashlyticsCollectionEnabled(bool enabled) async {
    if (!_isInitialized) return;

    try {
      await _crashlytics.setCrashlyticsCollectionEnabled(enabled);
    } catch (e) {
      // Fail silently
    }
  }

  /// Forces a crash for testing crash reporting.
  @override
  void forceCrash() {
    if (!_isInitialized) {
      throw Exception('Crashlytics not initialized - test crash');
    }

    _crashlytics.crash();
  }
}
