class CustomException implements Exception {
  CustomException({required String message});

  /// TODO: implement your exception from json
  CustomException.fromJson(Map<String, dynamic> json);

  /// TODO: implement your message
  @override
  String toString() {
    return 'CustomException';
  }
}
