/// Abstract interface defining logging capabilities throughout the application.
///
/// This service abstracts logging operations, allowing for different
/// implementations in different environments (debug, production, testing).
abstract class LogService {
  /// Logs a debug message intended for developers.
  ///
  /// Debug logs should contain detailed information useful during development
  /// but may be suppressed in production.
  void debug(String message);

  /// Logs an informational message.
  ///
  /// Info logs should contain general information about application flow that
  /// might be useful in all environments.
  void info(String message);

  /// Logs a warning message.
  ///
  /// Warning logs indicate potential issues that don't prevent the application
  /// from functioning but might indicate problems.
  void warning(String message);

  /// Logs an error message with optional error object and stack trace.
  ///
  /// Error logs indicate problems that affect application functionality
  /// and should be addressed.
  ///
  /// [message] A descriptive message about the error
  /// [error] The actual error object (optional)
  /// [stackTrace] The stack trace associated with the error (optional)
  void error(String message, [dynamic error, StackTrace? stackTrace]);

  /// Sets a handler function for processing errors.
  ///
  /// This allows different logging implementations to handle errors differently,
  /// such as sending them to a remote service or displaying them to the user.
  void setErrorHandler(Function(dynamic error, StackTrace stackTrace) handler);
}
