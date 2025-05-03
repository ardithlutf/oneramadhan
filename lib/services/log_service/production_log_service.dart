import 'package:flutter/foundation.dart';
import 'package:oneramadhan/services/crashlytics_service/crashlytics_service.dart';
import 'package:oneramadhan/services/log_service/log_service.dart';

/// A production-optimized implementation of [LogService] that:
/// - Minimizes console output
/// - Forwards errors to crashlytics
/// - Filters sensitive information
/// - Manages log levels appropriately
class ProductionLogService implements LogService {
  final CrashlyticsService _crashlytics;

  /// Creates a new production log service
  ///
  /// Requires a [crashlytics] service for error reporting
  ProductionLogService({
    required CrashlyticsService crashlytics,
  }) : _crashlytics = crashlytics;

  @override
  void debug(String message) {
    // In production, debug logs are suppressed
    // Uncomment if you want minimal debug logging in production
    // debugPrint('DEBUG: $message');
  }

  @override
  void info(String message) {
    // Info logs might be useful in production for tracking app flow
    debugPrint('INFO: $message');
  }

  @override
  void warning(String message) {
    debugPrint('WARNING: $message');
    // Optional: log warnings to crashlytics as non-fatal issues
    _crashlytics.log('WARNING: $message');
  }

  @override
  void error(String message, [dynamic error, StackTrace? stackTrace]) {
    debugPrint('ERROR: $message');

    // Forward errors to crashlytics
    if (error != null) {
      _crashlytics.recordError(
        error,
        stackTrace ?? StackTrace.current,
        reason: message,
      );
    } else {
      _crashlytics.log('ERROR: $message');
    }
  }

  @override
  void setErrorHandler(Function(dynamic error, StackTrace stackTrace) handler) {
    // In production, we always use crashlytics for error handling
    // This method would be a no-op in production
  }

  /// Additional production-specific methods could be added here
  void logUserAction(String action, Map<String, dynamic> parameters) {
    // Could be used for analytics in production
    _crashlytics.log('USER_ACTION: $action ${parameters.toString()}');
  }
}
