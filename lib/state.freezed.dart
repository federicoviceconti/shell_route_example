// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlowLoginState {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlowLoginStateCopyWith<FlowLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowLoginStateCopyWith<$Res> {
  factory $FlowLoginStateCopyWith(
          FlowLoginState value, $Res Function(FlowLoginState) then) =
      _$FlowLoginStateCopyWithImpl<$Res, FlowLoginState>;
  @useResult
  $Res call({String? username, String? password});
}

/// @nodoc
class _$FlowLoginStateCopyWithImpl<$Res, $Val extends FlowLoginState>
    implements $FlowLoginStateCopyWith<$Res> {
  _$FlowLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlowAStateCopyWith<$Res>
    implements $FlowLoginStateCopyWith<$Res> {
  factory _$$_FlowAStateCopyWith(
          _$_FlowAState value, $Res Function(_$_FlowAState) then) =
      __$$_FlowAStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? password});
}

/// @nodoc
class __$$_FlowAStateCopyWithImpl<$Res>
    extends _$FlowLoginStateCopyWithImpl<$Res, _$_FlowAState>
    implements _$$_FlowAStateCopyWith<$Res> {
  __$$_FlowAStateCopyWithImpl(
      _$_FlowAState _value, $Res Function(_$_FlowAState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_FlowAState(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FlowAState implements _FlowAState {
  const _$_FlowAState({this.username, this.password});

  @override
  final String? username;
  @override
  final String? password;

  @override
  String toString() {
    return 'FlowLoginState(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlowAState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlowAStateCopyWith<_$_FlowAState> get copyWith =>
      __$$_FlowAStateCopyWithImpl<_$_FlowAState>(this, _$identity);
}

abstract class _FlowAState implements FlowLoginState {
  const factory _FlowAState({final String? username, final String? password}) =
      _$_FlowAState;

  @override
  String? get username;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_FlowAStateCopyWith<_$_FlowAState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlowDashboardState {
  String get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlowDashboardStateCopyWith<FlowDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowDashboardStateCopyWith<$Res> {
  factory $FlowDashboardStateCopyWith(
          FlowDashboardState value, $Res Function(FlowDashboardState) then) =
      _$FlowDashboardStateCopyWithImpl<$Res, FlowDashboardState>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$FlowDashboardStateCopyWithImpl<$Res, $Val extends FlowDashboardState>
    implements $FlowDashboardStateCopyWith<$Res> {
  _$FlowDashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlowDashboardStateCopyWith<$Res>
    implements $FlowDashboardStateCopyWith<$Res> {
  factory _$$_FlowDashboardStateCopyWith(_$_FlowDashboardState value,
          $Res Function(_$_FlowDashboardState) then) =
      __$$_FlowDashboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$_FlowDashboardStateCopyWithImpl<$Res>
    extends _$FlowDashboardStateCopyWithImpl<$Res, _$_FlowDashboardState>
    implements _$$_FlowDashboardStateCopyWith<$Res> {
  __$$_FlowDashboardStateCopyWithImpl(
      _$_FlowDashboardState _value, $Res Function(_$_FlowDashboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$_FlowDashboardState(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FlowDashboardState implements _FlowDashboardState {
  const _$_FlowDashboardState({this.label = 'Value not initialized'});

  @override
  @JsonKey()
  final String label;

  @override
  String toString() {
    return 'FlowDashboardState(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlowDashboardState &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlowDashboardStateCopyWith<_$_FlowDashboardState> get copyWith =>
      __$$_FlowDashboardStateCopyWithImpl<_$_FlowDashboardState>(
          this, _$identity);
}

abstract class _FlowDashboardState implements FlowDashboardState {
  const factory _FlowDashboardState({final String label}) =
      _$_FlowDashboardState;

  @override
  String get label;
  @override
  @JsonKey(ignore: true)
  _$$_FlowDashboardStateCopyWith<_$_FlowDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
