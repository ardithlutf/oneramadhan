import 'package:flutter/foundation.dart';
import 'log_service.dart';

/// Development-focused implementation of [LogService] with detailed console output.
///
/// This implementation prioritizes developer visibility with color-coded, formatted
/// logs and detailed error reporting to the console. It is intended for use during
/// development and debugging.
class DebugLogService implements LogService {
  /// ANSI color code for blue text (debug)
  static const String _blueColor = '\x1B[34m';

  /// ANSI color code for green text (info)
  static const String _greenColor = '\x1B[32m';

  /// ANSI color code for yellow text (warning)
  static const String _yellowColor = '\x1B[33m';

  /// ANSI color code for red text (error)
  static const String _redColor = '\x1B[31m';

  /// ANSI color code to reset text color
  static const String _resetColor = '\x1B[0m';

  /// Optional error handler for custom error processing
  Function(dynamic error, StackTrace stackTrace)? _errorHandler;

  /// Logs a debug message with blue coloring.
  @override
  void debug(String message) {
    _log('$_blueColor[DEBUG]$_resetColor $message');
  }

  /// Logs an info message with green coloring.
  @override
  void info(String message) {
    _log('$_greenColor[INFO]$_resetColor $message');
  }

  /// Logs a warning message with yellow coloring.
  @override
  void warning(String message) {
    _log('$_yellowColor[WARNING]$_resetColor $message');
  }

  /// Logs an error message with red coloring and optional error details.
  @override
  void error(String message, [dynamic error, StackTrace? stackTrace]) {
    final errorStackTrace = stackTrace ?? (error != null ? StackTrace.current : null);

    _log('$_redColor[ERROR]$_resetColor $message');

    if (error != null) {
      _log('$_redColor[ERROR DETAILS]$_resetColor ${error.toString()}');
    }

    if (errorStackTrace != null) {
      _log('$_redColor[STACK TRACE]$_resetColor\n${errorStackTrace.toString()}');
    }

    // Forward to error handler if available
    if (_errorHandler != null && error != null) {
      _errorHandler!(error, errorStackTrace ?? StackTrace.current);
    }
  }

  /// Sets a custom error handler function.
  @override
  void setErrorHandler(Function(dynamic error, StackTrace stackTrace) handler) {
    _errorHandler = handler;
    debug('Custom error handler registered');
  }

  /// Internal method to handle the actual logging with timestamp.
  void _log(String message) {
    final timestamp = DateTime.now().toString().split('.').first;
    debugPrint('$timestamp | $message');
  }

  /// Clears the error handler reference.
  void dispose() {
    _errorHandler = null;
  }
}