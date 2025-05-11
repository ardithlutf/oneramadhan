import 'package:oneramadhan/injector/database_module.dart';
import 'package:oneramadhan/injector/repository_module.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'dart:async';

import 'bloc_module.dart';
import 'rest_client_module.dart';
import 'service_module.dart';

/// A service locator class that manages all dependencies across the application.
///
/// This injector implements a modular architecture where each module can register
/// its own dependencies independently. The initialization follows a specific order
/// to ensure dependencies are available when needed.
class Injector {
  /// The shared GetIt instance used across the application
  static final GetIt instance = GetIt.instance;

  /// Prevents creating an instance of this class
  Injector._();

  /// Environment flag to control different initialization behaviors
  static String _environment = 'dev';

  /// Sets the current environment for the injector
  ///
  /// Valid options: 'dev', 'staging', 'prod', 'test'
  static void setEnvironment(String env) {
    _environment = env;
  }

  /// Gets the current environment
  static String get environment => _environment;

  /// Initializes all application dependencies in the correct order
  ///
  /// Returns a [Future] that completes when all modules are initialized.
  static Future<void> init() async {
    try {
      // Core services should be initialized first
      await ServiceModule.init();
      await RestClientModule.init();

      // Database initialization for non-web platforms
      if (!kIsWeb) {
        // await DatabaseModule.init();
        // await DatabaseModule.initRepositories();
      }

      // Repositories depend on services and database
      RepositoryModule.init();

      // BLoCs should be initialized last as they depend on repositories
      BlocModule.init();

      debugPrint('✅ Dependency injection initialized successfully');
    } catch (e) {
      debugPrint('❌ Error initializing dependencies: $e');
      rethrow; // Allow the calling code to handle the error
    }
  }

  /// Completely resets the injector, removing all registered dependencies
  ///
  /// Use this method carefully, typically only for testing or app reset
  static Future<void> reset() async {
    await instance.reset();
    debugPrint('🔄 Dependency injector has been reset');
  }

  /// Resets only lazy singletons while keeping factory registrations
  ///
  /// This is useful when you want to refresh the state of singleton objects
  /// without re-registering all dependencies
  static void resetLazySingleton() {
    instance.resetLazySingleton();
    debugPrint('🔄 Lazy singletons have been reset');
  }

  /// Checks if a specific dependency is registered
  static bool isRegistered<T extends Object>({Object? instance}) {
    return Injector.instance
        .isRegistered<T>(instanceName: instance?.toString());
  }

  /// Utility method to get a registered dependency
  ///
  /// This provides a cleaner API for getting dependencies
  static T get<T extends Object>({String? instanceName}) {
    return instance.get<T>(instanceName: instanceName);
  }
}
