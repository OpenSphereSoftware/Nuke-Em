// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, int? code) server,
    required TResult Function(dynamic throwable, dynamic stacktrace) cache,
    required TResult Function(dynamic throwable, dynamic stacktrace) localData,
    required TResult Function(dynamic throwable, dynamic stacktrace) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, int? code)? server,
    TResult? Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult? Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult? Function(dynamic throwable, dynamic stacktrace)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, int? code)? server,
    TResult Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult Function(dynamic throwable, dynamic stacktrace)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataExceptionCopyWith<$Res> {
  factory $DataExceptionCopyWith(
          DataException value, $Res Function(DataException) then) =
      _$DataExceptionCopyWithImpl<$Res, DataException>;
}

/// @nodoc
class _$DataExceptionCopyWithImpl<$Res, $Val extends DataException>
    implements $DataExceptionCopyWith<$Res> {
  _$DataExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? body, int? code});
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? body = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ServerImpl(
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerImpl implements _Server {
  const _$ServerImpl({this.body, this.code});

  @override
  final String? body;
  @override
  final int? code;

  @override
  String toString() {
    return 'DataException.server(body: $body, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerImpl &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body, code);

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      __$$ServerImplCopyWithImpl<_$ServerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, int? code) server,
    required TResult Function(dynamic throwable, dynamic stacktrace) cache,
    required TResult Function(dynamic throwable, dynamic stacktrace) localData,
    required TResult Function(dynamic throwable, dynamic stacktrace) unknown,
  }) {
    return server(body, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, int? code)? server,
    TResult? Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult? Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult? Function(dynamic throwable, dynamic stacktrace)? unknown,
  }) {
    return server?.call(body, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, int? code)? server,
    TResult Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult Function(dynamic throwable, dynamic stacktrace)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(body, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_Unknown value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements DataException {
  const factory _Server({final String? body, final int? code}) = _$ServerImpl;

  String? get body;
  int? get code;

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerImplCopyWith<_$ServerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheImplCopyWith<$Res> {
  factory _$$CacheImplCopyWith(
          _$CacheImpl value, $Res Function(_$CacheImpl) then) =
      __$$CacheImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic throwable, dynamic stacktrace});
}

/// @nodoc
class __$$CacheImplCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$CacheImpl>
    implements _$$CacheImplCopyWith<$Res> {
  __$$CacheImplCopyWithImpl(
      _$CacheImpl _value, $Res Function(_$CacheImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? throwable = freezed,
    Object? stacktrace = freezed,
  }) {
    return _then(_$CacheImpl(
      throwable: freezed == throwable
          ? _value.throwable
          : throwable // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stacktrace: freezed == stacktrace
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CacheImpl implements _Cache {
  const _$CacheImpl({this.throwable, this.stacktrace});

  @override
  final dynamic throwable;
  @override
  final dynamic stacktrace;

  @override
  String toString() {
    return 'DataException.cache(throwable: $throwable, stacktrace: $stacktrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheImpl &&
            const DeepCollectionEquality().equals(other.throwable, throwable) &&
            const DeepCollectionEquality()
                .equals(other.stacktrace, stacktrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(throwable),
      const DeepCollectionEquality().hash(stacktrace));

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheImplCopyWith<_$CacheImpl> get copyWith =>
      __$$CacheImplCopyWithImpl<_$CacheImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, int? code) server,
    required TResult Function(dynamic throwable, dynamic stacktrace) cache,
    required TResult Function(dynamic throwable, dynamic stacktrace) localData,
    required TResult Function(dynamic throwable, dynamic stacktrace) unknown,
  }) {
    return cache(throwable, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, int? code)? server,
    TResult? Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult? Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult? Function(dynamic throwable, dynamic stacktrace)? unknown,
  }) {
    return cache?.call(throwable, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, int? code)? server,
    TResult Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult Function(dynamic throwable, dynamic stacktrace)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(throwable, stacktrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_Unknown value) unknown,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class _Cache implements DataException {
  const factory _Cache({final dynamic throwable, final dynamic stacktrace}) =
      _$CacheImpl;

  dynamic get throwable;
  dynamic get stacktrace;

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheImplCopyWith<_$CacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocalDataImplCopyWith<$Res> {
  factory _$$LocalDataImplCopyWith(
          _$LocalDataImpl value, $Res Function(_$LocalDataImpl) then) =
      __$$LocalDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic throwable, dynamic stacktrace});
}

/// @nodoc
class __$$LocalDataImplCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$LocalDataImpl>
    implements _$$LocalDataImplCopyWith<$Res> {
  __$$LocalDataImplCopyWithImpl(
      _$LocalDataImpl _value, $Res Function(_$LocalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? throwable = freezed,
    Object? stacktrace = freezed,
  }) {
    return _then(_$LocalDataImpl(
      throwable: freezed == throwable
          ? _value.throwable
          : throwable // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stacktrace: freezed == stacktrace
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$LocalDataImpl implements _LocalData {
  const _$LocalDataImpl({this.throwable, this.stacktrace});

  @override
  final dynamic throwable;
  @override
  final dynamic stacktrace;

  @override
  String toString() {
    return 'DataException.localData(throwable: $throwable, stacktrace: $stacktrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalDataImpl &&
            const DeepCollectionEquality().equals(other.throwable, throwable) &&
            const DeepCollectionEquality()
                .equals(other.stacktrace, stacktrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(throwable),
      const DeepCollectionEquality().hash(stacktrace));

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalDataImplCopyWith<_$LocalDataImpl> get copyWith =>
      __$$LocalDataImplCopyWithImpl<_$LocalDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, int? code) server,
    required TResult Function(dynamic throwable, dynamic stacktrace) cache,
    required TResult Function(dynamic throwable, dynamic stacktrace) localData,
    required TResult Function(dynamic throwable, dynamic stacktrace) unknown,
  }) {
    return localData(throwable, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, int? code)? server,
    TResult? Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult? Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult? Function(dynamic throwable, dynamic stacktrace)? unknown,
  }) {
    return localData?.call(throwable, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, int? code)? server,
    TResult Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult Function(dynamic throwable, dynamic stacktrace)? unknown,
    required TResult orElse(),
  }) {
    if (localData != null) {
      return localData(throwable, stacktrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_Unknown value) unknown,
  }) {
    return localData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return localData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (localData != null) {
      return localData(this);
    }
    return orElse();
  }
}

abstract class _LocalData implements DataException {
  const factory _LocalData(
      {final dynamic throwable, final dynamic stacktrace}) = _$LocalDataImpl;

  dynamic get throwable;
  dynamic get stacktrace;

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalDataImplCopyWith<_$LocalDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic throwable, dynamic stacktrace});
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$DataExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? throwable = freezed,
    Object? stacktrace = freezed,
  }) {
    return _then(_$UnknownImpl(
      freezed == throwable
          ? _value.throwable
          : throwable // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == stacktrace
          ? _value.stacktrace
          : stacktrace // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl(this.throwable, this.stacktrace);

  @override
  final dynamic throwable;
  @override
  final dynamic stacktrace;

  @override
  String toString() {
    return 'DataException.unknown(throwable: $throwable, stacktrace: $stacktrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownImpl &&
            const DeepCollectionEquality().equals(other.throwable, throwable) &&
            const DeepCollectionEquality()
                .equals(other.stacktrace, stacktrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(throwable),
      const DeepCollectionEquality().hash(stacktrace));

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      __$$UnknownImplCopyWithImpl<_$UnknownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? body, int? code) server,
    required TResult Function(dynamic throwable, dynamic stacktrace) cache,
    required TResult Function(dynamic throwable, dynamic stacktrace) localData,
    required TResult Function(dynamic throwable, dynamic stacktrace) unknown,
  }) {
    return unknown(throwable, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? body, int? code)? server,
    TResult? Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult? Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult? Function(dynamic throwable, dynamic stacktrace)? unknown,
  }) {
    return unknown?.call(throwable, stacktrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? body, int? code)? server,
    TResult Function(dynamic throwable, dynamic stacktrace)? cache,
    TResult Function(dynamic throwable, dynamic stacktrace)? localData,
    TResult Function(dynamic throwable, dynamic stacktrace)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(throwable, stacktrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_LocalData value) localData,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_LocalData value)? localData,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_LocalData value)? localData,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements DataException {
  const factory _Unknown(final dynamic throwable, final dynamic stacktrace) =
      _$UnknownImpl;

  dynamic get throwable;
  dynamic get stacktrace;

  /// Create a copy of DataException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownImplCopyWith<_$UnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
