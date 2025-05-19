// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rocket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Rocket _$RocketFromJson(Map<String, dynamic> json) {
  return _Rocket.fromJson(json);
}

/// @nodoc
mixin _$Rocket {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get damage => throw _privateConstructorUsedError;

  /// Serializes this Rocket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rocket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RocketCopyWith<Rocket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocketCopyWith<$Res> {
  factory $RocketCopyWith(Rocket value, $Res Function(Rocket) then) =
      _$RocketCopyWithImpl<$Res, Rocket>;
  @useResult
  $Res call({int id, String name, int damage});
}

/// @nodoc
class _$RocketCopyWithImpl<$Res, $Val extends Rocket>
    implements $RocketCopyWith<$Res> {
  _$RocketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rocket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? damage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RocketImplCopyWith<$Res> implements $RocketCopyWith<$Res> {
  factory _$$RocketImplCopyWith(
          _$RocketImpl value, $Res Function(_$RocketImpl) then) =
      __$$RocketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int damage});
}

/// @nodoc
class __$$RocketImplCopyWithImpl<$Res>
    extends _$RocketCopyWithImpl<$Res, _$RocketImpl>
    implements _$$RocketImplCopyWith<$Res> {
  __$$RocketImplCopyWithImpl(
      _$RocketImpl _value, $Res Function(_$RocketImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rocket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? damage = null,
  }) {
    return _then(_$RocketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      damage: null == damage
          ? _value.damage
          : damage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RocketImpl implements _Rocket {
  const _$RocketImpl(
      {required this.id, required this.name, required this.damage});

  factory _$RocketImpl.fromJson(Map<String, dynamic> json) =>
      _$$RocketImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int damage;

  @override
  String toString() {
    return 'Rocket(id: $id, name: $name, damage: $damage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RocketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.damage, damage) || other.damage == damage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, damage);

  /// Create a copy of Rocket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RocketImplCopyWith<_$RocketImpl> get copyWith =>
      __$$RocketImplCopyWithImpl<_$RocketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RocketImplToJson(
      this,
    );
  }
}

abstract class _Rocket implements Rocket {
  const factory _Rocket(
      {required final int id,
      required final String name,
      required final int damage}) = _$RocketImpl;

  factory _Rocket.fromJson(Map<String, dynamic> json) = _$RocketImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get damage;

  /// Create a copy of Rocket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RocketImplCopyWith<_$RocketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
