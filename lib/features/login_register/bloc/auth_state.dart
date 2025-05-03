part of 'auth_bloc.dart';

@Freezed()
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(UIStatus.loading) UIStatus status,
    @Default(UserEnum.guest) UserEnum loginAs,
    @Default('') String displayName,
    @Default('Unknown error.') String error,
  }) = _AuthState;
}

enum UIStatus {
  initial,
  loading,
  loadingAuthCr,
  loadingAuthGoogle,
  newUser,
  authSuccess,
  authFailed,
  loadSuccess
}
