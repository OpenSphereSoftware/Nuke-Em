// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heatmap_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeatmapItem _$HeatmapItemFromJson(Map<String, dynamic> json) {
  return _HeatmapItem.fromJson(json);
}

/// @nodoc
mixin _$HeatmapItem {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  /// Serializes this HeatmapItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapItemCopyWith<HeatmapItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapItemCopyWith<$Res> {
  factory $HeatmapItemCopyWith(
          HeatmapItem value, $Res Function(HeatmapItem) then) =
      _$HeatmapItemCopyWithImpl<$Res, HeatmapItem>;
  @useResult
  $Res call({double latitude, double longitude, int weight});
}

/// @nodoc
class _$HeatmapItemCopyWithImpl<$Res, $Val extends HeatmapItem>
    implements $HeatmapItemCopyWith<$Res> {
  _$HeatmapItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? weight = null,
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
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeatmapItemImplCopyWith<$Res>
    implements $HeatmapItemCopyWith<$Res> {
  factory _$$HeatmapItemImplCopyWith(
          _$HeatmapItemImpl value, $Res Function(_$HeatmapItemImpl) then) =
      __$$HeatmapItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude, int weight});
}

/// @nodoc
class __$$HeatmapItemImplCopyWithImpl<$Res>
    extends _$HeatmapItemCopyWithImpl<$Res, _$HeatmapItemImpl>
    implements _$$HeatmapItemImplCopyWith<$Res> {
  __$$HeatmapItemImplCopyWithImpl(
      _$HeatmapItemImpl _value, $Res Function(_$HeatmapItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? weight = null,
  }) {
    return _then(_$HeatmapItemImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatmapItemImpl implements _HeatmapItem {
  const _$HeatmapItemImpl(
      {required this.latitude, required this.longitude, required this.weight});

  factory _$HeatmapItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapItemImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int weight;

  @override
  String toString() {
    return 'HeatmapItem(latitude: $latitude, longitude: $longitude, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapItemImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, weight);

  /// Create a copy of HeatmapItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapItemImplCopyWith<_$HeatmapItemImpl> get copyWith =>
      __$$HeatmapItemImplCopyWithImpl<_$HeatmapItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapItemImplToJson(
      this,
    );
  }
}

abstract class _HeatmapItem implements HeatmapItem {
  const factory _HeatmapItem(
      {required final double latitude,
      required final double longitude,
      required final int weight}) = _$HeatmapItemImpl;

  factory _HeatmapItem.fromJson(Map<String, dynamic> json) =
      _$HeatmapItemImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  int get weight;

  /// Create a copy of HeatmapItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapItemImplCopyWith<_$HeatmapItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
