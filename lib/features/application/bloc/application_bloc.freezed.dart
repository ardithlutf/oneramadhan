// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationLoadedEvent value) loaded,
    required TResult Function(_LocaleChangedEvent value) localeChanged,
    required TResult Function(_DarkModeChangedEvent value) darkModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationLoadedEvent value)? loaded,
    TResult? Function(_LocaleChangedEvent value)? localeChanged,
    TResult? Function(_DarkModeChangedEvent value)? darkModeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationLoadedEvent value)? loaded,
    TResult Function(_LocaleChangedEvent value)? localeChanged,
    TResult Function(_DarkModeChangedEvent value)? darkModeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApplicationLoadedEventImplCopyWith<$Res> {
  factory _$$ApplicationLoadedEventImplCopyWith(
          _$ApplicationLoadedEventImpl value,
          $Res Function(_$ApplicationLoadedEventImpl) then) =
      __$$ApplicationLoadedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationLoadedEventImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ApplicationLoadedEventImpl>
    implements _$$ApplicationLoadedEventImplCopyWith<$Res> {
  __$$ApplicationLoadedEventImplCopyWithImpl(
      _$ApplicationLoadedEventImpl _value,
      $Res Function(_$ApplicationLoadedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplicationLoadedEventImpl implements _ApplicationLoadedEvent {
  const _$ApplicationLoadedEventImpl();

  @override
  String toString() {
    return 'ApplicationEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationLoadedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationLoadedEvent value) loaded,
    required TResult Function(_LocaleChangedEvent value) localeChanged,
    required TResult Function(_DarkModeChangedEvent value) darkModeChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationLoadedEvent value)? loaded,
    TResult? Function(_LocaleChangedEvent value)? localeChanged,
    TResult? Function(_DarkModeChangedEvent value)? darkModeChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationLoadedEvent value)? loaded,
    TResult Function(_LocaleChangedEvent value)? localeChanged,
    TResult Function(_DarkModeChangedEvent value)? darkModeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ApplicationLoadedEvent implements ApplicationEvent {
  const factory _ApplicationLoadedEvent() = _$ApplicationLoadedEventImpl;
}

/// @nodoc
abstract class _$$LocaleChangedEventImplCopyWith<$Res> {
  factory _$$LocaleChangedEventImplCopyWith(_$LocaleChangedEventImpl value,
          $Res Function(_$LocaleChangedEventImpl) then) =
      __$$LocaleChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$LocaleChangedEventImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$LocaleChangedEventImpl>
    implements _$$LocaleChangedEventImplCopyWith<$Res> {
  __$$LocaleChangedEventImplCopyWithImpl(_$LocaleChangedEventImpl _value,
      $Res Function(_$LocaleChangedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$LocaleChangedEventImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocaleChangedEventImpl implements _LocaleChangedEvent {
  const _$LocaleChangedEventImpl({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'ApplicationEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocaleChangedEventImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocaleChangedEventImplCopyWith<_$LocaleChangedEventImpl> get copyWith =>
      __$$LocaleChangedEventImplCopyWithImpl<_$LocaleChangedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationLoadedEvent value) loaded,
    required TResult Function(_LocaleChangedEvent value) localeChanged,
    required TResult Function(_DarkModeChangedEvent value) darkModeChanged,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationLoadedEvent value)? loaded,
    TResult? Function(_LocaleChangedEvent value)? localeChanged,
    TResult? Function(_DarkModeChangedEvent value)? darkModeChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationLoadedEvent value)? loaded,
    TResult Function(_LocaleChangedEvent value)? localeChanged,
    TResult Function(_DarkModeChangedEvent value)? darkModeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class _LocaleChangedEvent implements ApplicationEvent {
  const factory _LocaleChangedEvent({required final String locale}) =
      _$LocaleChangedEventImpl;

  String get locale;
  @JsonKey(ignore: true)
  _$$LocaleChangedEventImplCopyWith<_$LocaleChangedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DarkModeChangedEventImplCopyWith<$Res> {
  factory _$$DarkModeChangedEventImplCopyWith(_$DarkModeChangedEventImpl value,
          $Res Function(_$DarkModeChangedEventImpl) then) =
      __$$DarkModeChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enable});
}

/// @nodoc
class __$$DarkModeChangedEventImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$DarkModeChangedEventImpl>
    implements _$$DarkModeChangedEventImplCopyWith<$Res> {
  __$$DarkModeChangedEventImplCopyWithImpl(_$DarkModeChangedEventImpl _value,
      $Res Function(_$DarkModeChangedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
  }) {
    return _then(_$DarkModeChangedEventImpl(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DarkModeChangedEventImpl implements _DarkModeChangedEvent {
  const _$DarkModeChangedEventImpl({required this.enable});

  @override
  final bool enable;

  @override
  String toString() {
    return 'ApplicationEvent.darkModeChanged(enable: $enable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DarkModeChangedEventImpl &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DarkModeChangedEventImplCopyWith<_$DarkModeChangedEventImpl>
      get copyWith =>
          __$$DarkModeChangedEventImplCopyWithImpl<_$DarkModeChangedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool enable) darkModeChanged,
  }) {
    return darkModeChanged(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool enable)? darkModeChanged,
  }) {
    return darkModeChanged?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool enable)? darkModeChanged,
    required TResult orElse(),
  }) {
    if (darkModeChanged != null) {
      return darkModeChanged(enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationLoadedEvent value) loaded,
    required TResult Function(_LocaleChangedEvent value) localeChanged,
    required TResult Function(_DarkModeChangedEvent value) darkModeChanged,
  }) {
    return darkModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationLoadedEvent value)? loaded,
    TResult? Function(_LocaleChangedEvent value)? localeChanged,
    TResult? Function(_DarkModeChangedEvent value)? darkModeChanged,
  }) {
    return darkModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationLoadedEvent value)? loaded,
    TResult Function(_LocaleChangedEvent value)? localeChanged,
    TResult Function(_DarkModeChangedEvent value)? darkModeChanged,
    required TResult orElse(),
  }) {
    if (darkModeChanged != null) {
      return darkModeChanged(this);
    }
    return orElse();
  }
}

abstract class _DarkModeChangedEvent implements ApplicationEvent {
  const factory _DarkModeChangedEvent({required final bool enable}) =
      _$DarkModeChangedEventImpl;

  bool get enable;
  @JsonKey(ignore: true)
  _$$DarkModeChangedEventImplCopyWith<_$DarkModeChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationState {
  UIStatus get status => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call({UIStatus status, String locale, bool isDarkMode});
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? isDarkMode = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicationStateImplCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$ApplicationStateImplCopyWith(_$ApplicationStateImpl value,
          $Res Function(_$ApplicationStateImpl) then) =
      __$$ApplicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UIStatus status, String locale, bool isDarkMode});
}

/// @nodoc
class __$$ApplicationStateImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$ApplicationStateImpl>
    implements _$$ApplicationStateImplCopyWith<$Res> {
  __$$ApplicationStateImplCopyWithImpl(_$ApplicationStateImpl _value,
      $Res Function(_$ApplicationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? isDarkMode = null,
  }) {
    return _then(_$ApplicationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UIStatus,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ApplicationStateImpl implements _ApplicationState {
  const _$ApplicationStateImpl(
      {this.status = UIStatus.loading,
      this.locale = AppConfig.defaultLocale,
      this.isDarkMode = false});

  @override
  @JsonKey()
  final UIStatus status;
  @override
  @JsonKey()
  final String locale;
  @override
  @JsonKey()
  final bool isDarkMode;

  @override
  String toString() {
    return 'ApplicationState(status: $status, locale: $locale, isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, locale, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      __$$ApplicationStateImplCopyWithImpl<_$ApplicationStateImpl>(
          this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState(
      {final UIStatus status,
      final String locale,
      final bool isDarkMode}) = _$ApplicationStateImpl;

  @override
  UIStatus get status;
  @override
  String get locale;
  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
