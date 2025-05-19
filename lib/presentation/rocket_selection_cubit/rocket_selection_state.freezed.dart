// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rocket_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RocketSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(int selected) selection,
    required TResult Function() launching,
    required TResult Function(int seconds) cooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(int selected)? selection,
    TResult? Function()? launching,
    TResult? Function(int seconds)? cooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(int selected)? selection,
    TResult Function()? launching,
    TResult Function(int seconds)? cooldown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Selection value) selection,
    required TResult Function(_Launching value) launching,
    required TResult Function(_Cooldown value) cooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Selection value)? selection,
    TResult? Function(_Launching value)? launching,
    TResult? Function(_Cooldown value)? cooldown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Selection value)? selection,
    TResult Function(_Launching value)? launching,
    TResult Function(_Cooldown value)? cooldown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocketSelectionStateCopyWith<$Res> {
  factory $RocketSelectionStateCopyWith(RocketSelectionState value,
          $Res Function(RocketSelectionState) then) =
      _$RocketSelectionStateCopyWithImpl<$Res, RocketSelectionState>;
}

/// @nodoc
class _$RocketSelectionStateCopyWithImpl<$Res,
        $Val extends RocketSelectionState>
    implements $RocketSelectionStateCopyWith<$Res> {
  _$RocketSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RocketSelectionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RocketSelectionState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(int selected) selection,
    required TResult Function() launching,
    required TResult Function(int seconds) cooldown,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(int selected)? selection,
    TResult? Function()? launching,
    TResult? Function(int seconds)? cooldown,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(int selected)? selection,
    TResult Function()? launching,
    TResult Function(int seconds)? cooldown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Selection value) selection,
    required TResult Function(_Launching value) launching,
    required TResult Function(_Cooldown value) cooldown,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Selection value)? selection,
    TResult? Function(_Launching value)? launching,
    TResult? Function(_Cooldown value)? cooldown,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Selection value)? selection,
    TResult Function(_Launching value)? launching,
    TResult Function(_Cooldown value)? cooldown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RocketSelectionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RocketSelectionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'RocketSelectionState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(int selected) selection,
    required TResult Function() launching,
    required TResult Function(int seconds) cooldown,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(int selected)? selection,
    TResult? Function()? launching,
    TResult? Function(int seconds)? cooldown,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(int selected)? selection,
    TResult Function()? launching,
    TResult Function(int seconds)? cooldown,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Selection value) selection,
    required TResult Function(_Launching value) launching,
    required TResult Function(_Cooldown value) cooldown,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Selection value)? selection,
    TResult? Function(_Launching value)? launching,
    TResult? Function(_Cooldown value)? cooldown,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Selection value)? selection,
    TResult Function(_Launching value)? launching,
    TResult Function(_Cooldown value)? cooldown,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RocketSelectionState {
  const factory _Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$SelectionImplCopyWith<$Res> {
  factory _$$SelectionImplCopyWith(
          _$SelectionImpl value, $Res Function(_$SelectionImpl) then) =
      __$$SelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selected});
}

/// @nodoc
class __$$SelectionImplCopyWithImpl<$Res>
    extends _$RocketSelectionStateCopyWithImpl<$Res, _$SelectionImpl>
    implements _$$SelectionImplCopyWith<$Res> {
  __$$SelectionImplCopyWithImpl(
      _$SelectionImpl _value, $Res Function(_$SelectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectionImpl(
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectionImpl implements _Selection {
  const _$SelectionImpl({required this.selected});

  @override
  final int selected;

  @override
  String toString() {
    return 'RocketSelectionState.selection(selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectionImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectionImplCopyWith<_$SelectionImpl> get copyWith =>
      __$$SelectionImplCopyWithImpl<_$SelectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(int selected) selection,
    required TResult Function() launching,
    required TResult Function(int seconds) cooldown,
  }) {
    return selection(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(int selected)? selection,
    TResult? Function()? launching,
    TResult? Function(int seconds)? cooldown,
  }) {
    return selection?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(int selected)? selection,
    TResult Function()? launching,
    TResult Function(int seconds)? cooldown,
    required TResult orElse(),
  }) {
    if (selection != null) {
      return selection(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Selection value) selection,
    required TResult Function(_Launching value) launching,
    required TResult Function(_Cooldown value) cooldown,
  }) {
    return selection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Selection value)? selection,
    TResult? Function(_Launching value)? launching,
    TResult? Function(_Cooldown value)? cooldown,
  }) {
    return selection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Selection value)? selection,
    TResult Function(_Launching value)? launching,
    TResult Function(_Cooldown value)? cooldown,
    required TResult orElse(),
  }) {
    if (selection != null) {
      return selection(this);
    }
    return orElse();
  }
}

abstract class _Selection implements RocketSelectionState {
  const factory _Selection({required final int selected}) = _$SelectionImpl;

  int get selected;

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectionImplCopyWith<_$SelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LaunchingImplCopyWith<$Res> {
  factory _$$LaunchingImplCopyWith(
          _$LaunchingImpl value, $Res Function(_$LaunchingImpl) then) =
      __$$LaunchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LaunchingImplCopyWithImpl<$Res>
    extends _$RocketSelectionStateCopyWithImpl<$Res, _$LaunchingImpl>
    implements _$$LaunchingImplCopyWith<$Res> {
  __$$LaunchingImplCopyWithImpl(
      _$LaunchingImpl _value, $Res Function(_$LaunchingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LaunchingImpl implements _Launching {
  const _$LaunchingImpl();

  @override
  String toString() {
    return 'RocketSelectionState.launching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LaunchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(int selected) selection,
    required TResult Function() launching,
    required TResult Function(int seconds) cooldown,
  }) {
    return launching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(int selected)? selection,
    TResult? Function()? launching,
    TResult? Function(int seconds)? cooldown,
  }) {
    return launching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(int selected)? selection,
    TResult Function()? launching,
    TResult Function(int seconds)? cooldown,
    required TResult orElse(),
  }) {
    if (launching != null) {
      return launching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Selection value) selection,
    required TResult Function(_Launching value) launching,
    required TResult Function(_Cooldown value) cooldown,
  }) {
    return launching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Selection value)? selection,
    TResult? Function(_Launching value)? launching,
    TResult? Function(_Cooldown value)? cooldown,
  }) {
    return launching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Selection value)? selection,
    TResult Function(_Launching value)? launching,
    TResult Function(_Cooldown value)? cooldown,
    required TResult orElse(),
  }) {
    if (launching != null) {
      return launching(this);
    }
    return orElse();
  }
}

abstract class _Launching implements RocketSelectionState {
  const factory _Launching() = _$LaunchingImpl;
}

/// @nodoc
abstract class _$$CooldownImplCopyWith<$Res> {
  factory _$$CooldownImplCopyWith(
          _$CooldownImpl value, $Res Function(_$CooldownImpl) then) =
      __$$CooldownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int seconds});
}

/// @nodoc
class __$$CooldownImplCopyWithImpl<$Res>
    extends _$RocketSelectionStateCopyWithImpl<$Res, _$CooldownImpl>
    implements _$$CooldownImplCopyWith<$Res> {
  __$$CooldownImplCopyWithImpl(
      _$CooldownImpl _value, $Res Function(_$CooldownImpl) _then)
      : super(_value, _then);

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seconds = null,
  }) {
    return _then(_$CooldownImpl(
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CooldownImpl implements _Cooldown {
  const _$CooldownImpl({required this.seconds});

  @override
  final int seconds;

  @override
  String toString() {
    return 'RocketSelectionState.cooldown(seconds: $seconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CooldownImpl &&
            (identical(other.seconds, seconds) || other.seconds == seconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seconds);

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CooldownImplCopyWith<_$CooldownImpl> get copyWith =>
      __$$CooldownImplCopyWithImpl<_$CooldownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(int selected) selection,
    required TResult Function() launching,
    required TResult Function(int seconds) cooldown,
  }) {
    return cooldown(seconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(int selected)? selection,
    TResult? Function()? launching,
    TResult? Function(int seconds)? cooldown,
  }) {
    return cooldown?.call(seconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(int selected)? selection,
    TResult Function()? launching,
    TResult Function(int seconds)? cooldown,
    required TResult orElse(),
  }) {
    if (cooldown != null) {
      return cooldown(seconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Selection value) selection,
    required TResult Function(_Launching value) launching,
    required TResult Function(_Cooldown value) cooldown,
  }) {
    return cooldown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Selection value)? selection,
    TResult? Function(_Launching value)? launching,
    TResult? Function(_Cooldown value)? cooldown,
  }) {
    return cooldown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Selection value)? selection,
    TResult Function(_Launching value)? launching,
    TResult Function(_Cooldown value)? cooldown,
    required TResult orElse(),
  }) {
    if (cooldown != null) {
      return cooldown(this);
    }
    return orElse();
  }
}

abstract class _Cooldown implements RocketSelectionState {
  const factory _Cooldown({required final int seconds}) = _$CooldownImpl;

  int get seconds;

  /// Create a copy of RocketSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CooldownImplCopyWith<_$CooldownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
