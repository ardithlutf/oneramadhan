import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:oneramadhan/configs/app_config.dart';
import 'package:oneramadhan/features/application/home_page.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/my_app.dart';
import 'package:oneramadhan/services/crashlytics_service/crashlytics_service.dart';

void main() async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// Firebase initialize ...
    Logger.level = Level.verbose;
    AppConfig.configDev();
    Injector.init();

    await Injector.instance.allReady();

    runApp(const MyApp());
  }, (error, stack) {
    final CrashlyticsService crashlyticsService =
    Injector.instance<CrashlyticsService>();
    crashlyticsService.recordException(error, stack);
  });
}
