class AppDurations {
  AppDurations._();

  static Future<dynamic> baseDelay =
      Future.delayed(const Duration(milliseconds: 800));
  static Future<dynamic> delay1Sec = Future.delayed(const Duration(seconds: 1));
  static Future<dynamic> delay3Secs =
      Future.delayed(const Duration(seconds: 3));
}
