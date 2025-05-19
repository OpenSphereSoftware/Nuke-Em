// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfigModel _$ConfigModelFromJson(Map<String, dynamic> json) {
  return _ConfigModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigModel {
  String get disclaimerMessage => throw _privateConstructorUsedError;
  DateTime get currentTimeUtc => throw _privateConstructorUsedError;
  DateTime get nextRefreshTimeUtc => throw _privateConstructorUsedError;
  int get refreshInHours => throw _privateConstructorUsedError;

  /// Serializes this ConfigModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigModelCopyWith<ConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigModelCopyWith<$Res> {
  factory $ConfigModelCopyWith(
          ConfigModel value, $Res Function(ConfigModel) then) =
      _$ConfigModelCopyWithImpl<$Res, ConfigModel>;
  @useResult
  $Res call(
      {String disclaimerMessage,
      DateTime currentTimeUtc,
      DateTime nextRefreshTimeUtc,
      int refreshInHours});
}

/// @nodoc
class _$ConfigModelCopyWithImpl<$Res, $Val extends ConfigModel>
    implements $ConfigModelCopyWith<$Res> {
  _$ConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disclaimerMessage = null,
    Object? currentTimeUtc = null,
    Object? nextRefreshTimeUtc = null,
    Object? refreshInHours = null,
  }) {
    return _then(_value.copyWith(
      disclaimerMessage: null == disclaimerMessage
          ? _value.disclaimerMessage
          : disclaimerMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentTimeUtc: null == currentTimeUtc
          ? _value.currentTimeUtc
          : currentTimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextRefreshTimeUtc: null == nextRefreshTimeUtc
          ? _value.nextRefreshTimeUtc
          : nextRefreshTimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshInHours: null == refreshInHours
          ? _value.refreshInHours
          : refreshInHours // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigModelImplCopyWith<$Res>
    implements $ConfigModelCopyWith<$Res> {
  factory _$$ConfigModelImplCopyWith(
          _$ConfigModelImpl value, $Res Function(_$ConfigModelImpl) then) =
      __$$ConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String disclaimerMessage,
      DateTime currentTimeUtc,
      DateTime nextRefreshTimeUtc,
      int refreshInHours});
}

/// @nodoc
class __$$ConfigModelImplCopyWithImpl<$Res>
    extends _$ConfigModelCopyWithImpl<$Res, _$ConfigModelImpl>
    implements _$$ConfigModelImplCopyWith<$Res> {
  __$$ConfigModelImplCopyWithImpl(
      _$ConfigModelImpl _value, $Res Function(_$ConfigModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disclaimerMessage = null,
    Object? currentTimeUtc = null,
    Object? nextRefreshTimeUtc = null,
    Object? refreshInHours = null,
  }) {
    return _then(_$ConfigModelImpl(
      disclaimerMessage: null == disclaimerMessage
          ? _value.disclaimerMessage
          : disclaimerMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentTimeUtc: null == currentTimeUtc
          ? _value.currentTimeUtc
          : currentTimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextRefreshTimeUtc: null == nextRefreshTimeUtc
          ? _value.nextRefreshTimeUtc
          : nextRefreshTimeUtc // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refreshInHours: null == refreshInHours
          ? _value.refreshInHours
          : refreshInHours // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigModelImpl implements _ConfigModel {
  const _$ConfigModelImpl(
      {required this.disclaimerMessage,
      required this.currentTimeUtc,
      required this.nextRefreshTimeUtc,
      required this.refreshInHours});

  factory _$ConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigModelImplFromJson(json);

  @override
  final String disclaimerMessage;
  @override
  final DateTime currentTimeUtc;
  @override
  final DateTime nextRefreshTimeUtc;
  @override
  final int refreshInHours;

  @override
  String toString() {
    return 'ConfigModel(disclaimerMessage: $disclaimerMessage, currentTimeUtc: $currentTimeUtc, nextRefreshTimeUtc: $nextRefreshTimeUtc, refreshInHours: $refreshInHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigModelImpl &&
            (identical(other.disclaimerMessage, disclaimerMessage) ||
                other.disclaimerMessage == disclaimerMessage) &&
            (identical(other.currentTimeUtc, currentTimeUtc) ||
                other.currentTimeUtc == currentTimeUtc) &&
            (identical(other.nextRefreshTimeUtc, nextRefreshTimeUtc) ||
                other.nextRefreshTimeUtc == nextRefreshTimeUtc) &&
            (identical(other.refreshInHours, refreshInHours) ||
                other.refreshInHours == refreshInHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, disclaimerMessage,
      currentTimeUtc, nextRefreshTimeUtc, refreshInHours);

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigModelImplCopyWith<_$ConfigModelImpl> get copyWith =>
      __$$ConfigModelImplCopyWithImpl<_$ConfigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigModelImplToJson(
      this,
    );
  }
}

abstract class _ConfigModel implements ConfigModel {
  const factory _ConfigModel(
      {required final String disclaimerMessage,
      required final DateTime currentTimeUtc,
      required final DateTime nextRefreshTimeUtc,
      required final int refreshInHours}) = _$ConfigModelImpl;

  factory _ConfigModel.fromJson(Map<String, dynamic> json) =
      _$ConfigModelImpl.fromJson;

  @override
  String get disclaimerMessage;
  @override
  DateTime get currentTimeUtc;
  @override
  DateTime get nextRefreshTimeUtc;
  @override
  int get refreshInHours;

  /// Create a copy of ConfigModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigModelImplCopyWith<_$ConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
