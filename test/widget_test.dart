// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:oneramadhan/features/mainscreen/home_page.dart';
import 'package:oneramadhan/generated/l10n.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  SharedPreferences.setMockInitialValues({});
  Injector.init();

  testWidgets('One Ramadhan widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    // debugDumpApp();
  });

  // runApp(app);
}

const app = MaterialApp(
  localizationsDelegates: [
    S.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  home: MainScreenPage(),
);
