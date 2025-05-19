// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deployed_nuke_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeployedNuke _$DeployedNukeFromJson(Map<String, dynamic> json) {
  return _DeployedNuke.fromJson(json);
}

/// @nodoc
mixin _$DeployedNuke {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  int get whooperId => throw _privateConstructorUsedError;

  /// Serializes this DeployedNuke to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeployedNuke
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeployedNukeCopyWith<DeployedNuke> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeployedNukeCopyWith<$Res> {
  factory $DeployedNukeCopyWith(
          DeployedNuke value, $Res Function(DeployedNuke) then) =
      _$DeployedNukeCopyWithImpl<$Res, DeployedNuke>;
  @useResult
  $Res call({double latitude, double longitude, int whooperId});
}

/// @nodoc
class _$DeployedNukeCopyWithImpl<$Res, $Val extends DeployedNuke>
    implements $DeployedNukeCopyWith<$Res> {
  _$DeployedNukeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeployedNuke
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? whooperId = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      whooperId: null == whooperId
          ? _value.whooperId
          : whooperId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeployedNukeImplCopyWith<$Res>
    implements $DeployedNukeCopyWith<$Res> {
  factory _$$DeployedNukeImplCopyWith(
          _$DeployedNukeImpl value, $Res Function(_$DeployedNukeImpl) then) =
      __$$DeployedNukeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, int whooperId});
}

/// @nodoc
class __$$DeployedNukeImplCopyWithImpl<$Res>
    extends _$DeployedNukeCopyWithImpl<$Res, _$DeployedNukeImpl>
    implements _$$DeployedNukeImplCopyWith<$Res> {
  __$$DeployedNukeImplCopyWithImpl(
      _$DeployedNukeImpl _value, $Res Function(_$DeployedNukeImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeployedNuke
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? whooperId = null,
  }) {
    return _then(_$DeployedNukeImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      whooperId: null == whooperId
          ? _value.whooperId
          : whooperId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeployedNukeImpl implements _DeployedNuke {
  const _$DeployedNukeImpl(
      {required this.latitude,
      required this.longitude,
      required this.whooperId});

  factory _$DeployedNukeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeployedNukeImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int whooperId;

  @override
  String toString() {
    return 'DeployedNuke(latitude: $latitude, longitude: $longitude, whooperId: $whooperId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeployedNukeImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.whooperId, whooperId) ||
                other.whooperId == whooperId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, whooperId);

  /// Create a copy of DeployedNuke
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeployedNukeImplCopyWith<_$DeployedNukeImpl> get copyWith =>
      __$$DeployedNukeImplCopyWithImpl<_$DeployedNukeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeployedNukeImplToJson(
      this,
    );
  }
}

abstract class _DeployedNuke implements DeployedNuke {
  const factory _DeployedNuke(
      {required final double latitude,
      required final double longitude,
      required final int whooperId}) = _$DeployedNukeImpl;

  factory _DeployedNuke.fromJson(Map<String, dynamic> json) =
      _$DeployedNukeImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  int get whooperId;

  /// Create a copy of DeployedNuke
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeployedNukeImplCopyWith<_$DeployedNukeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
