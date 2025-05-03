part of 'auth_bloc.dart';

@Freezed()
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _StartedEvent;
  const factory AuthEvent.createAccount({
    required String email,
    required String password,
    required String password2,
  }) = _CreateAccountEvent;
  const factory AuthEvent.authGuest() = _GuestEvent;
  const factory AuthEvent.authGoogle() = _GoogleEvent;
  const factory AuthEvent.authEmailPassword({
    required String username,
    required String password,
  }) = _EmailPasswordEvent;
  const factory AuthEvent.authSingOut() = _AuthSingOutEvent;
}
