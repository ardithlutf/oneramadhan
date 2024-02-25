library rest_api;

export 'src/models/models.dart';
export 'src/apis/apis.dart';
export 'src/exceptions/custom_exception.dart';
export 'src/exceptions/exception_handler.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}
