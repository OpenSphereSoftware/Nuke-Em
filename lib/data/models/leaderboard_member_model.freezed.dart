// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeaderBoardMember _$LeaderBoardMemberFromJson(Map<String, dynamic> json) {
  return _LeaderBoardMember.fromJson(json);
}

/// @nodoc
mixin _$LeaderBoardMember {
  String get name => throw _privateConstructorUsedError;
  String get countryName => throw _privateConstructorUsedError;
  int get counter => throw _privateConstructorUsedError;

  /// Serializes this LeaderBoardMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaderBoardMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaderBoardMemberCopyWith<LeaderBoardMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderBoardMemberCopyWith<$Res> {
  factory $LeaderBoardMemberCopyWith(
          LeaderBoardMember value, $Res Function(LeaderBoardMember) then) =
      _$LeaderBoardMemberCopyWithImpl<$Res, LeaderBoardMember>;
  @useResult
  $Res call({String name, String countryName, int counter});
}

/// @nodoc
class _$LeaderBoardMemberCopyWithImpl<$Res, $Val extends LeaderBoardMember>
    implements $LeaderBoardMemberCopyWith<$Res> {
  _$LeaderBoardMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderBoardMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? countryName = null,
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderBoardMemberImplCopyWith<$Res>
    implements $LeaderBoardMemberCopyWith<$Res> {
  factory _$$LeaderBoardMemberImplCopyWith(_$LeaderBoardMemberImpl value,
          $Res Function(_$LeaderBoardMemberImpl) then) =
      __$$LeaderBoardMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String countryName, int counter});
}

/// @nodoc
class __$$LeaderBoardMemberImplCopyWithImpl<$Res>
    extends _$LeaderBoardMemberCopyWithImpl<$Res, _$LeaderBoardMemberImpl>
    implements _$$LeaderBoardMemberImplCopyWith<$Res> {
  __$$LeaderBoardMemberImplCopyWithImpl(_$LeaderBoardMemberImpl _value,
      $Res Function(_$LeaderBoardMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderBoardMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? countryName = null,
    Object? counter = null,
  }) {
    return _then(_$LeaderBoardMemberImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      countryName: null == countryName
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderBoardMemberImpl implements _LeaderBoardMember {
  const _$LeaderBoardMemberImpl(
      {required this.name, required this.countryName, required this.counter});

  factory _$LeaderBoardMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderBoardMemberImplFromJson(json);

  @override
  final String name;
  @override
  final String countryName;
  @override
  final int counter;

  @override
  String toString() {
    return 'LeaderBoardMember(name: $name, countryName: $countryName, counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderBoardMemberImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countryName, countryName) ||
                other.countryName == countryName) &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, countryName, counter);

  /// Create a copy of LeaderBoardMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderBoardMemberImplCopyWith<_$LeaderBoardMemberImpl> get copyWith =>
      __$$LeaderBoardMemberImplCopyWithImpl<_$LeaderBoardMemberImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderBoardMemberImplToJson(
      this,
    );
  }
}

abstract class _LeaderBoardMember implements LeaderBoardMember {
  const factory _LeaderBoardMember(
      {required final String name,
      required final String countryName,
      required final int counter}) = _$LeaderBoardMemberImpl;

  factory _LeaderBoardMember.fromJson(Map<String, dynamic> json) =
      _$LeaderBoardMemberImpl.fromJson;

  @override
  String get name;
  @override
  String get countryName;
  @override
  int get counter;

  /// Create a copy of LeaderBoardMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaderBoardMemberImplCopyWith<_$LeaderBoardMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
