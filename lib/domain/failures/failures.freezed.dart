// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() localData,
    required TResult Function() general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? localData,
    TResult? Function()? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? localData,
    TResult Function()? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_CacheFailure value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_GeneralFailure value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_CacheFailure value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_GeneralFailure value)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_CacheFailure value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_GeneralFailure value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerFailureImpl extends _ServerFailure {
  const _$ServerFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.server()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() localData,
    required TResult Function() general,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? localData,
    TResult? Function()? general,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? localData,
    TResult Function()? general,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_CacheFailure value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_GeneralFailure value) general,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_CacheFailure value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_GeneralFailure value)? general,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_CacheFailure value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_GeneralFailure value)? general,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure extends Failure {
  const factory _ServerFailure() = _$ServerFailureImpl;
  const _ServerFailure._() : super._();
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CacheFailureImpl extends _CacheFailure {
  const _$CacheFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.cache()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() localData,
    required TResult Function() general,
  }) {
    return cache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? localData,
    TResult? Function()? general,
  }) {
    return cache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? localData,
    TResult Function()? general,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_CacheFailure value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_GeneralFailure value) general,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_CacheFailure value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_GeneralFailure value)? general,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_CacheFailure value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_GeneralFailure value)? general,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class _CacheFailure extends Failure {
  const factory _CacheFailure() = _$CacheFailureImpl;
  const _CacheFailure._() : super._();
}

/// @nodoc
abstract class _$$LocalDataImplCopyWith<$Res> {
  factory _$$LocalDataImplCopyWith(
          _$LocalDataImpl value, $Res Function(_$LocalDataImpl) then) =
      __$$LocalDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocalDataImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LocalDataImpl>
    implements _$$LocalDataImplCopyWith<$Res> {
  __$$LocalDataImplCopyWithImpl(
      _$LocalDataImpl _value, $Res Function(_$LocalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LocalDataImpl extends _LocalData {
  const _$LocalDataImpl() : super._();

  @override
  String toString() {
    return 'Failure.localData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocalDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() localData,
    required TResult Function() general,
  }) {
    return localData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? localData,
    TResult? Function()? general,
  }) {
    return localData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? localData,
    TResult Function()? general,
    required TResult orElse(),
  }) {
    if (localData != null) {
      return localData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_CacheFailure value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_GeneralFailure value) general,
  }) {
    return localData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_CacheFailure value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_GeneralFailure value)? general,
  }) {
    return localData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_CacheFailure value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_GeneralFailure value)? general,
    required TResult orElse(),
  }) {
    if (localData != null) {
      return localData(this);
    }
    return orElse();
  }
}

abstract class _LocalData extends Failure {
  const factory _LocalData() = _$LocalDataImpl;
  const _LocalData._() : super._();
}

/// @nodoc
abstract class _$$GeneralFailureImplCopyWith<$Res> {
  factory _$$GeneralFailureImplCopyWith(_$GeneralFailureImpl value,
          $Res Function(_$GeneralFailureImpl) then) =
      __$$GeneralFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GeneralFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$GeneralFailureImpl>
    implements _$$GeneralFailureImplCopyWith<$Res> {
  __$$GeneralFailureImplCopyWithImpl(
      _$GeneralFailureImpl _value, $Res Function(_$GeneralFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GeneralFailureImpl extends _GeneralFailure {
  const _$GeneralFailureImpl() : super._();

  @override
  String toString() {
    return 'Failure.general()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GeneralFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() localData,
    required TResult Function() general,
  }) {
    return general();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? localData,
    TResult? Function()? general,
  }) {
    return general?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? localData,
    TResult Function()? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) server,
    required TResult Function(_CacheFailure value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_GeneralFailure value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? server,
    TResult? Function(_CacheFailure value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_GeneralFailure value)? general,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? server,
    TResult Function(_CacheFailure value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_GeneralFailure value)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class _GeneralFailure extends Failure {
  const factory _GeneralFailure() = _$GeneralFailureImpl;
  const _GeneralFailure._() : super._();
}
