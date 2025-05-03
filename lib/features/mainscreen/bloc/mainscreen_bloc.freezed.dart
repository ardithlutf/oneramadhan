// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mainscreen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainscreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainscreenEventCopyWith<$Res> {
  factory $MainscreenEventCopyWith(
          MainscreenEvent value, $Res Function(MainscreenEvent) then) =
      _$MainscreenEventCopyWithImpl<$Res, MainscreenEvent>;
}

/// @nodoc
class _$MainscreenEventCopyWithImpl<$Res, $Val extends MainscreenEvent>
    implements $MainscreenEventCopyWith<$Res> {
  _$MainscreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainscreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MainscreenEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainscreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MainscreenEvent.started()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }
}

abstract class _Started implements MainscreenEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$MainscreenState {
  UIStatus get status => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UIStatus status, String locale, bool isDarkMode) $default,
  ) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UIStatus status, String locale, bool isDarkMode)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MainscreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainscreenStateCopyWith<MainscreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainscreenStateCopyWith<$Res> {
  factory $MainscreenStateCopyWith(
          MainscreenState value, $Res Function(MainscreenState) then) =
      _$MainscreenStateCopyWithImpl<$Res, MainscreenState>;
  @useResult
  $Res call({UIStatus status, String locale, bool isDarkMode});
}

/// @nodoc
class _$MainscreenStateCopyWithImpl<$Res, $Val extends MainscreenState>
    implements $MainscreenStateCopyWith<$Res> {
  _$MainscreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainscreenState
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $MainscreenStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UIStatus status, String locale, bool isDarkMode});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainscreenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainscreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? locale = null,
    Object? isDarkMode = null,
  }) {
    return _then(_$InitialImpl(
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = UIStatus.loading,
      this.locale = 'en',
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
    return 'MainscreenState(status: $status, locale: $locale, isDarkMode: $isDarkMode)';
  }

  /// Create a copy of MainscreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UIStatus status, String locale, bool isDarkMode) $default,
  ) {
    return $default(status, locale, isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UIStatus status, String locale, bool isDarkMode)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(status, locale, isDarkMode);
    }
    return orElse();
  }
}

abstract class _Initial implements MainscreenState {
  const factory _Initial(
      {final UIStatus status,
      final String locale,
      final bool isDarkMode}) = _$InitialImpl;

  @override
  UIStatus get status;
  @override
  String get locale;
  @override
  bool get isDarkMode;

  /// Create a copy of MainscreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
