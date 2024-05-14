import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oneramadhan/features/login_register/bloc/auth_bloc.dart';
import 'package:oneramadhan/features/login_register/function/auth_functions.dart';
import 'package:oneramadhan/injector/injector.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage>
    with AuthFunctionMixin {
  late final AuthBloc _authBloc;

  @override
  void initState() {
    _authBloc = Injector.instance<AuthBloc>();
    _authBloc.add(const AuthEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>.value(
          value: _authBloc,
        ),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        bloc: _authBloc,
        listener: (context, state) {
          if (state.status == UIStatus.authSuccess) {
            setState(() {
              handleAuthSignOutSuccess(context, state);
            });
          }
          if (state.status == UIStatus.authFailed) {
            setState(() {
              handleAuthFailed(context, state);
            });
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('One Ramadhan'),
            actions: [
              IconButton(
                  onPressed: () {
                    _authBloc.add(const AuthEvent.authSingOut());
                  },
                  icon: const Icon(Icons.logout))
            ],
          ),
          body: Container(),
        ),
      ),
    );
  }
}
