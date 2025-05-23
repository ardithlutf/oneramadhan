// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String password2)
        createAccount,
    required TResult Function() authGuest,
    required TResult Function() authGoogle,
    required TResult Function(String username, String password)
        authEmailPassword,
    required TResult Function() authSingOut,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String password2)?
        createAccount,
    TResult Function()? authGuest,
    TResult Function()? authGoogle,
    TResult Function(String username, String password)? authEmailPassword,
    TResult Function()? authSingOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedEventImplCopyWith<$Res> {
  factory _$$StartedEventImplCopyWith(
          _$StartedEventImpl value, $Res Function(_$StartedEventImpl) then) =
      __$$StartedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$StartedEventImpl>
    implements _$$StartedEventImplCopyWith<$Res> {
  __$$StartedEventImplCopyWithImpl(
      _$StartedEventImpl _value, $Res Function(_$StartedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedEventImpl with DiagnosticableTreeMixin implements _StartedEvent {
  const _$StartedEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.started'));
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String password2)
        createAccount,
    required TResult Function() authGuest,
    required TResult Function() authGoogle,
    required TResult Function(String username, String password)
        authEmailPassword,
    required TResult Function() authSingOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String password2)?
        createAccount,
    TResult Function()? authGuest,
    TResult Function()? authGoogle,
    TResult Function(String username, String password)? authEmailPassword,
    TResult Function()? authSingOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }
}

abstract class _StartedEvent implements AuthEvent {
  const factory _StartedEvent() = _$StartedEventImpl;
}

/// @nodoc
abstract class _$$CreateAccountEventImplCopyWith<$Res> {
  factory _$$CreateAccountEventImplCopyWith(_$CreateAccountEventImpl value,
          $Res Function(_$CreateAccountEventImpl) then) =
      __$$CreateAccountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String password2});
}

/// @nodoc
class __$$CreateAccountEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateAccountEventImpl>
    implements _$$CreateAccountEventImplCopyWith<$Res> {
  __$$CreateAccountEventImplCopyWithImpl(_$CreateAccountEventImpl _value,
      $Res Function(_$CreateAccountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? password2 = null,
  }) {
    return _then(_$CreateAccountEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      password2: null == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateAccountEventImpl
    with DiagnosticableTreeMixin
    implements _CreateAccountEvent {
  const _$CreateAccountEventImpl(
      {required this.email, required this.password, required this.password2});

  @override
  final String email;
  @override
  final String password;
  @override
  final String password2;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.createAccount(email: $email, password: $password, password2: $password2)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.createAccount'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('password2', password2));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAccountEventImplCopyWith<_$CreateAccountEventImpl> get copyWith =>
      __$$CreateAccountEventImplCopyWithImpl<_$CreateAccountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String password2)
        createAccount,
    required TResult Function() authGuest,
    required TResult Function() authGoogle,
    required TResult Function(String username, String password)
        authEmailPassword,
    required TResult Function() authSingOut,
  }) {
    return createAccount(email, password, password2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String password2)?
        createAccount,
    TResult Function()? authGuest,
    TResult Function()? authGoogle,
    TResult Function(String username, String password)? authEmailPassword,
    TResult Function()? authSingOut,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(email, password, password2);
    }
    return orElse();
  }
}

abstract class _CreateAccountEvent implements AuthEvent {
  const factory _CreateAccountEvent(
      {required final String email,
      required final String password,
      required final String password2}) = _$CreateAccountEventImpl;

  String get email;
  String get password;
  String get password2;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateAccountEventImplCopyWith<_$CreateAccountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuestEventImplCopyWith<$Res> {
  factory _$$GuestEventImplCopyWith(
          _$GuestEventImpl value, $Res Function(_$GuestEventImpl) then) =
      __$$GuestEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GuestEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GuestEventImpl>
    implements _$$GuestEventImplCopyWith<$Res> {
  __$$GuestEventImplCopyWithImpl(
      _$GuestEventImpl _value, $Res Function(_$GuestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GuestEventImpl with DiagnosticableTreeMixin implements _GuestEvent {
  const _$GuestEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authGuest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.authGuest'));
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String password2)
        createAccount,
    required TResult Function() authGuest,
    required TResult Function() authGoogle,
    required TResult Function(String username, String password)
        authEmailPassword,
    required TResult Function() authSingOut,
  }) {
    return authGuest();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String password2)?
        createAccount,
    TResult Function()? authGuest,
    TResult Function()? authGoogle,
    TResult Function(String username, String password)? authEmailPassword,
    TResult Function()? authSingOut,
    required TResult orElse(),
  }) {
    if (authGuest != null) {
      return authGuest();
    }
    return orElse();
  }
}

abstract class _GuestEvent implements AuthEvent {
  const factory _GuestEvent() = _$GuestEventImpl;
}

/// @nodoc
abstract class _$$GoogleEventImplCopyWith<$Res> {
  factory _$$GoogleEventImplCopyWith(
          _$GoogleEventImpl value, $Res Function(_$GoogleEventImpl) then) =
      __$$GoogleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleEventImpl>
    implements _$$GoogleEventImplCopyWith<$Res> {
  __$$GoogleEventImplCopyWithImpl(
      _$GoogleEventImpl _value, $Res Function(_$GoogleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoogleEventImpl with DiagnosticableTreeMixin implements _GoogleEvent {
  const _$GoogleEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authGoogle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.authGoogle'));
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String password2)
        createAccount,
    required TResult Function() authGuest,
    required TResult Function() authGoogle,
    required TResult Function(String username, String password)
        authEmailPassword,
    required TResult Function() authSingOut,
  }) {
    return authGoogle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String password2)?
        createAccount,
    TResult Function()? authGuest,
    TResult Function()? authGoogle,
    TResult Function(String username, String password)? authEmailPassword,
    TResult Function()? authSingOut,
    required TResult orElse(),
  }) {
    if (authGoogle != null) {
      return authGoogle();
    }
    return orElse();
  }
}

abstract class _GoogleEvent implements AuthEvent {
  const factory _GoogleEvent() = _$GoogleEventImpl;
}

/// @nodoc
abstract class _$$EmailPasswordEventImplCopyWith<$Res> {
  factory _$$EmailPasswordEventImplCopyWith(_$EmailPasswordEventImpl value,
          $Res Function(_$EmailPasswordEventImpl) then) =
      __$$EmailPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$EmailPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmailPasswordEventImpl>
    implements _$$EmailPasswordEventImplCopyWith<$Res> {
  __$$EmailPasswordEventImplCopyWithImpl(_$EmailPasswordEventImpl _value,
      $Res Function(_$EmailPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$EmailPasswordEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailPasswordEventImpl
    with DiagnosticableTreeMixin
    implements _EmailPasswordEvent {
  const _$EmailPasswordEventImpl(
      {required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authEmailPassword(username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.authEmailPassword'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailPasswordEventImplCopyWith<_$EmailPasswordEventImpl> get copyWith =>
      __$$EmailPasswordEventImplCopyWithImpl<_$EmailPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String password2)
        createAccount,
    required TResult Function() authGuest,
    required TResult Function() authGoogle,
    required TResult Function(String username, String password)
        authEmailPassword,
    required TResult Function() authSingOut,
  }) {
    return authEmailPassword(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String password2)?
        createAccount,
    TResult Function()? authGuest,
    TResult Function()? authGoogle,
    TResult Function(String username, String password)? authEmailPassword,
    TResult Function()? authSingOut,
    required TResult orElse(),
  }) {
    if (authEmailPassword != null) {
      return authEmailPassword(username, password);
    }
    return orElse();
  }
}

abstract class _EmailPasswordEvent implements AuthEvent {
  const factory _EmailPasswordEvent(
      {required final String username,
      required final String password}) = _$EmailPasswordEventImpl;

  String get username;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailPasswordEventImplCopyWith<_$EmailPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSingOutEventImplCopyWith<$Res> {
  factory _$$AuthSingOutEventImplCopyWith(_$AuthSingOutEventImpl value,
          $Res Function(_$AuthSingOutEventImpl) then) =
      __$$AuthSingOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSingOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSingOutEventImpl>
    implements _$$AuthSingOutEventImplCopyWith<$Res> {
  __$$AuthSingOutEventImplCopyWithImpl(_$AuthSingOutEventImpl _value,
      $Res Function(_$AuthSingOutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthSingOutEventImpl
    with DiagnosticableTreeMixin
    implements _AuthSingOutEvent {
  const _$AuthSingOutEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.authSingOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.authSingOut'));
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password, String password2)
        createAccount,
    required TResult Function() authGuest,
    required TResult Function() authGoogle,
    required TResult Function(String username, String password)
        authEmailPassword,
    required TResult Function() authSingOut,
  }) {
    return authSingOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password, String password2)?
        createAccount,
    TResult Function()? authGuest,
    TResult Function()? authGoogle,
    TResult Function(String username, String password)? authEmailPassword,
    TResult Function()? authSingOut,
    required TResult orElse(),
  }) {
    if (authSingOut != null) {
      return authSingOut();
    }
    return orElse();
  }
}

abstract class _AuthSingOutEvent implements AuthEvent {
  const factory _AuthSingOutEvent() = _$AuthSingOutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  UIStatus get status => throw _privateConstructorUsedError;
  UserEnum get loginAs => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            UIStatus status, UserEnum loginAs, String displayName, String error)
        $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UIStatus status, UserEnum loginAs, String displayName,
            String error)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {UIStatus status, UserEnum loginAs, String displayName, String error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginAs = null,
    Object? displayName = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      loginAs: null == loginAs
          ? _value.loginAs
          : loginAs // ignore: cast_nullable_to_non_nullable
              as UserEnum,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UIStatus status, UserEnum loginAs, String displayName, String error});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginAs = null,
    Object? displayName = null,
    Object? error = null,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      loginAs: null == loginAs
          ? _value.loginAs
          : loginAs // ignore: cast_nullable_to_non_nullable
              as UserEnum,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl with DiagnosticableTreeMixin implements _AuthState {
  const _$AuthStateImpl(
      {this.status = UIStatus.loading,
      this.loginAs = UserEnum.guest,
      this.displayName = '',
      this.error = 'Unknown error.'});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final UserEnum loginAs;
  @override
  @JsonKey()
  final String displayName;
  @override
  @JsonKey()
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(status: $status, loginAs: $loginAs, displayName: $displayName, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('loginAs', loginAs))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('error', error));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            UIStatus status, UserEnum loginAs, String displayName, String error)
        $default,
  ) {
    return $default(status, loginAs, displayName, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UIStatus status, UserEnum loginAs, String displayName,
            String error)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(status, loginAs, displayName, error);
    }
    return orElse();
  }
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final UIStatus status,
      final UserEnum loginAs,
      final String displayName,
      final String error}) = _$AuthStateImpl;

  @override
  UIStatus get status;
  @override
  UserEnum get loginAs;
  @override
  String get displayName;
  @override
  String get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
