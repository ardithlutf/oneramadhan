class AppConfig {
  static String baseUrl = '';

  static const String defaultLocale = 'id';

  static void configDev() {
    baseUrl = 'http://10.0.2.2:5000/api';
  }

  static void configTest() {
    /// TODO
  }

  static void configProduction() {
    /// TODO
  }
}
