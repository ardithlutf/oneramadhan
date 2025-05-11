import 'package:oneramadhan/common/app_spacing.dart';
import 'package:oneramadhan/configs/app_config.dart';
import 'package:oneramadhan/features/application/bloc/application_bloc.dart';
import 'package:oneramadhan/generated/l10n.dart';
import 'package:oneramadhan/injector/injector.dart';
import 'package:oneramadhan/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ApplicationBloc _bloc = Injector.instance<ApplicationBloc>();
  late String _locale;
  late bool _isDarkMode;
  late final AppLocalizationDelegate appLocalizationDelegate;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  void initState() {
    _locale = AppConfig.defaultLocale;
    _bloc.add(const ApplicationEvent.loaded());
    _isDarkMode = false;
    appLocalizationDelegate = const AppLocalizationDelegate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$_counter',
                style: Theme.of(context).textTheme.headlineMedium),
            ElevatedButton(
              child: Text(S.of(context).increment),
              onPressed: () {
                // context.push(AppRouter.home);
                _incrementCounter();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: S.of(context).increment,
        child: const Icon(Icons.exposure_plus_1),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
