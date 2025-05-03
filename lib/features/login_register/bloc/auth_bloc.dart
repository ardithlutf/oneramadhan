import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oneramadhan/common/app_enums.dart';
import 'package:oneramadhan/services/local_storage_service/local_storage_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late LocalStorageService _localStorageService;

  AuthBloc({
    required LocalStorageService localStorageService,
  }) : super(const AuthState()) {
    _localStorageService = localStorageService;

    on<_StartedEvent>(_onStarted);
    on<_CreateAccountEvent>(_onCreateAccount);
    on<_GuestEvent>(_onLoginGuest);
    on<_GoogleEvent>(_onLoginGoogle);
    // TODO:
    on<_EmailPasswordEvent>(_onLoginEmailPassword);
    on<_AuthSingOutEvent>(_onLogout);
  }

  FutureOr<void> _onStarted(_StartedEvent event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      status: UIStatus.initial,
    ));

    emit(state.copyWith(
      status: UIStatus.loadSuccess,
    ));
  }

  FutureOr<void> _onCreateAccount(
      _CreateAccountEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      status: UIStatus.loading,
    ));

    if (event.email.isEmpty ||
        event.password.isEmpty ||
        event.password2.isEmpty) {
      emit(state.copyWith(
        status: UIStatus.authFailed,
        error: 'Please fill all data below',
      ));
    } else {
      if (event.password != event.password2) {
        emit(state.copyWith(
          status: UIStatus.authFailed,
          error: 'Password doesn\'t match',
        ));
      } else {
        try {
          await Future.delayed(const Duration(seconds: 1));

          await signOutFromGoogle();

          _localStorageService.setIsLoggedIn(true);

          emit(state.copyWith(status: UIStatus.newUser));
        } catch (e) {
          emit(state.copyWith(
            status: UIStatus.authFailed,
            error: 'Sign up failed.',
          ));
        }
      }
    }
  }

  FutureOr<void> _onLoginGuest(
      _GuestEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      status: UIStatus.loading,
    ));

    try {
      await Future.delayed(const Duration(seconds: 3));

      await loginAnonymously();
      _localStorageService.setIsLoggedIn(true);

      emit(state.copyWith(
          status: UIStatus.authSuccess, loginAs: UserEnum.guest));
    } catch (e) {
      emit(state.copyWith(
        status: UIStatus.authFailed,
        error: e.toString(),
      ));
    }
  }

  FutureOr<void> _onLoginGoogle(
      _GoogleEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      status: UIStatus.loadingAuthGoogle,
    ));

    try {
      await Future.delayed(const Duration(seconds: 3));

      final authGoogle = await loginWithGoogle();

      _localStorageService.setIsLoggedIn(true);

      final String _displayName = authGoogle!.user!.displayName ?? '';

      emit(state.copyWith(
          status: UIStatus.authSuccess,
          loginAs: UserEnum.userGoogle,
          displayName: _displayName));
    } catch (e) {
      emit(state.copyWith(
        status: UIStatus.authFailed,
        error: 'Google sign in failed. Please try again',
      ));
    }
  }

  FutureOr<void> _onLoginEmailPassword(
      _EmailPasswordEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      status: UIStatus.loadingAuthCr,
    ));

    if (event.username.isEmpty || event.password.isEmpty) {
      emit(state.copyWith(
        status: UIStatus.authFailed,
        error: 'Username or password can\'t be empty',
      ));
    } else {
      await Future.delayed(const Duration(seconds: 1));

      if (event.username == 'admin' && event.password == 'one1') {
        _localStorageService.setIsLoggedIn(true);

        emit(state.copyWith(status: UIStatus.authSuccess));
      } else {
        emit(state.copyWith(
          status: UIStatus.authFailed,
          error: 'Account not found',
        ));
      }
    }
  }

  FutureOr<void> _onLogout(
      _AuthSingOutEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(
      status: UIStatus.loading,
    ));

    try {
      await Future.delayed(const Duration(seconds: 1));

      await signOutFromGoogle();

      _localStorageService.setIsLoggedIn(false);

      emit(state.copyWith(status: UIStatus.authSuccess));
    } catch (e) {
      emit(state.copyWith(
        status: UIStatus.authFailed,
        error: 'Log out failed.',
      ));
    }
  }
}

Future<void> loginAnonymously() async {
  try {
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    debugPrint(
        "Signed in with temporary account. ${userCredential.user?.displayName}");
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "provider-already-linked":
        debugPrint("The provider has already been linked to the user.");
        break;
      case "invalid-credential":
        debugPrint("The provider's credential is not valid.");
        break;
      case "credential-already-in-use":
        debugPrint(
            "The account corresponding to the credential already exists, "
            "or is already linked to a Firebase User.");
        break;
      // See the API reference for the full list of error codes.
      default:
        debugPrint("Unknown error.");
    }
    throw Exception(e);
  }
}

Future<UserCredential?> loginWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await FirebaseAuth.instance.signInWithCredential(credential);
  } on Exception catch (e) {
    debugPrint('exception->$e');
    return null;
  }
}

Future<bool> signOutFromGoogle() async {
  try {
    await FirebaseAuth.instance.signOut();
    return true;
  } on Exception catch (_) {
    return false;
  }
}
