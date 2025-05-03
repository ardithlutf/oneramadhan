import 'package:flutter/foundation.dart';
import 'package:oneramadhan/services/crashlytics_service/crashlytics_service.dart';
import 'package:oneramadhan/services/crashlytics_service/firebase_crashlytics_service.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';
import 'package:oneramadhan/services/local_storage_service/shared_preferences_service.dart';
import 'package:oneramadhan/services/log_service/debug_log_service.dart';
import 'package:oneramadhan/services/log_service/log_service.dart';
import 'package:oneramadhan/services/log_service/production_log_service.dart';

import 'injector.dart';

/// Registers and configures all service-layer dependencies.
///
/// This module is responsible for registering core services like logging,
/// crashlytics, and local storage that other components depend on.
class ServiceModule {
  /// Prevents creating an instance of this class
  ServiceModule._();

  /// Initializes and registers all service dependencies
  ///
  /// Returns a [Future] that completes when all services are initialized.
  static Future<void> init() async {
    try {
      final injector = Injector.instance;
      final environment = Injector.environment;

      // Register Crashlytics service
      injector.registerSingletonAsync<CrashlyticsService>(() async {
        final service = FirebaseCrashlyticsService();
        await service.initialize();
        return service;
      });

      // Register Logger service with environment-specific implementation
      if (environment == 'prod') {
        // In production, use the ProductionLogService with crashlytics integration
        injector.registerLazySingletonAsync<LogService>(() async {
          // Wait for crashlytics to be initialized first
          final crashlytics = await injector.getAsync<CrashlyticsService>();
          return ProductionLogService(crashlytics: crashlytics);
        });
      } else {
        // In development and other environments, use the DebugLogService
        injector.registerLazySingleton<LogService>(() => DebugLogService());
      }

      // Register LocalStorage with proper initialization
      injector.registerSingletonAsync<LocalStorageService>(() async {
        final service = SharedPreferencesService();
        await service.initialize();
        return service;
      });

      debugPrint('✅ Service module initialized');
    } catch (e, stackTrace) {
      debugPrint('❌ Service module initialization failed: $e');
      // Log the error to a crash reporting service if available
      try {
        final crashlytics = Injector.instance.get<CrashlyticsService>();
        crashlytics.recordError(e, stackTrace);
      } catch (_) {
        // Crashlytics might not be available yet
      }
      rethrow;
    }
  }
}
