// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<T, $Res> {
  factory $RegisterStateCopyWith(
          RegisterState<T> value, $Res Function(RegisterState<T>) then) =
      _$RegisterStateCopyWithImpl<T, $Res, RegisterState<T>>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<T, $Res, $Val extends RegisterState<T>>
    implements $RegisterStateCopyWith<T, $Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements RegisterState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<T, $Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl<T> value,
          $Res Function(_$RegisterLoadingImpl<T>) then) =
      __$$RegisterLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$RegisterLoadingImpl<T>>
    implements _$$RegisterLoadingImplCopyWith<T, $Res> {
  __$$RegisterLoadingImplCopyWithImpl(_$RegisterLoadingImpl<T> _value,
      $Res Function(_$RegisterLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoadingImpl<T> implements RegisterLoading<T> {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'RegisterState<$T>.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading<T> implements RegisterState<T> {
  const factory RegisterLoading() = _$RegisterLoadingImpl<T>;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<T, $Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl<T> value,
          $Res Function(_$RegisterSuccessImpl<T>) then) =
      __$$RegisterSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$RegisterSuccessImpl<T>>
    implements _$$RegisterSuccessImplCopyWith<T, $Res> {
  __$$RegisterSuccessImplCopyWithImpl(_$RegisterSuccessImpl<T> _value,
      $Res Function(_$RegisterSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$RegisterSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessImpl<T> implements RegisterSuccess<T> {
  const _$RegisterSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'RegisterState<$T>.registerSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<T, _$RegisterSuccessImpl<T>> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<T, _$RegisterSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return registerSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return registerSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess<T> implements RegisterState<T> {
  const factory RegisterSuccess(final T data) = _$RegisterSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$RegisterSuccessImplCopyWith<T, _$RegisterSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<T, $Res> {
  factory _$$RegisterErrorImplCopyWith(_$RegisterErrorImpl<T> value,
          $Res Function(_$RegisterErrorImpl<T>) then) =
      __$$RegisterErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<T, $Res>
    extends _$RegisterStateCopyWithImpl<T, $Res, _$RegisterErrorImpl<T>>
    implements _$$RegisterErrorImplCopyWith<T, $Res> {
  __$$RegisterErrorImplCopyWithImpl(_$RegisterErrorImpl<T> _value,
      $Res Function(_$RegisterErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterErrorImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterErrorImpl<T> implements RegisterError<T> {
  const _$RegisterErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterState<$T>.registerError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<T, _$RegisterErrorImpl<T>> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<T, _$RegisterErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registerLoading,
    required TResult Function(T data) registerSuccess,
    required TResult Function(String message) registerError,
  }) {
    return registerError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registerLoading,
    TResult? Function(T data)? registerSuccess,
    TResult? Function(String message)? registerError,
  }) {
    return registerError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registerLoading,
    TResult Function(T data)? registerSuccess,
    TResult Function(String message)? registerError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(RegisterLoading<T> value) registerLoading,
    required TResult Function(RegisterSuccess<T> value) registerSuccess,
    required TResult Function(RegisterError<T> value) registerError,
  }) {
    return registerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(RegisterLoading<T> value)? registerLoading,
    TResult? Function(RegisterSuccess<T> value)? registerSuccess,
    TResult? Function(RegisterError<T> value)? registerError,
  }) {
    return registerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(RegisterLoading<T> value)? registerLoading,
    TResult Function(RegisterSuccess<T> value)? registerSuccess,
    TResult Function(RegisterError<T> value)? registerError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(this);
    }
    return orElse();
  }
}

abstract class RegisterError<T> implements RegisterState<T> {
  const factory RegisterError({required final String message}) =
      _$RegisterErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$RegisterErrorImplCopyWith<T, _$RegisterErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
