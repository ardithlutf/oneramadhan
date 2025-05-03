/// Abstract interface for crash reporting functionality throughout the application.
///
/// This service provides methods to report errors, exceptions, and custom logs
/// to a crash reporting service. It abstracts the underlying implementation,
/// allowing for different crash reporting providers or mock implementations.
abstract class CrashlyticsService {
  /// Initializes the crash reporting service.
  ///
  /// This method should be called before using the service, typically
  /// during app startup.
  /// Returns a [Future] that completes when initialization is done.
  Future<void> initialize();

  /// Records a non-fatal error with an associated stack trace.
  ///
  /// [error] The exception or error to be recorded
  /// [stackTrace] The stack trace associated with the error
  /// [reason] Optional description of what caused the error
  void recordError(dynamic error, StackTrace stackTrace, {String? reason});

  /// Records a custom message to the crash reporting service.
  ///
  /// This can be used for breadcrumbs or context before crashes.
  /// [message] The message to be logged
  void log(String message);

  /// Sets a custom key-value pair that will be attached to crash reports.
  ///
  /// This can be used to add extra context to crash reports.
  /// [key] The identifier for this value
  /// [value] The value to associate with the key
  void setCustomKey(String key, dynamic value);

  /// Sets user identifier for crash reports.
  ///
  /// This helps identify which users are experiencing crashes.
  /// [userId] The user identifier
  void setUserIdentifier(String userId);

  /// Enables or disables crash reporting collection.
  ///
  /// [enabled] Whether crash collection should be enabled
  Future<void> setCrashlyticsCollectionEnabled(bool enabled);

  /// Forces a crash for testing crash reporting.
  ///
  /// This should only be used during development and testing.
  void forceCrash();
}