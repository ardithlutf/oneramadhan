part of 'auth_bloc.dart';

@Freezed()
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _StartedEvent;
  const factory AuthEvent.authGuest() = _GuestEvent;
  const factory AuthEvent.authGoogle() = _GoogleEvent;
  const factory AuthEvent.authEmailPassword() = _EmailPasswordEvent;
  const factory AuthEvent.authSingOut() = _AuthSingOutEvent;
}
