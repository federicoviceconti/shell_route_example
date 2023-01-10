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
mixin _$AppState {
  bool get loggedIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({bool loggedIn});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
  }) {
    return _then(_value.copyWith(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loggedIn});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$_AppState>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loggedIn = null,
  }) {
    return _then(_$_AppState(
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState({this.loggedIn = false});

  @override
  @JsonKey()
  final bool loggedIn;

  @override
  String toString() {
    return 'AppState(loggedIn: $loggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({final bool loggedIn}) = _$_AppState;

  @override
  bool get loggedIn;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  int get index => throw _privateConstructorUsedError;

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
  $Res call({int index});
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
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int index});
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
    Object? index = null,
  }) {
    return _then(_$_FlowDashboardState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FlowDashboardState implements _FlowDashboardState {
  const _$_FlowDashboardState({this.index = 0});

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'FlowDashboardState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlowDashboardState &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlowDashboardStateCopyWith<_$_FlowDashboardState> get copyWith =>
      __$$_FlowDashboardStateCopyWithImpl<_$_FlowDashboardState>(
          this, _$identity);
}

abstract class _FlowDashboardState implements FlowDashboardState {
  const factory _FlowDashboardState({final int index}) = _$_FlowDashboardState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_FlowDashboardStateCopyWith<_$_FlowDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FlowActivateOfferState {
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlowActivateOfferStateCopyWith<FlowActivateOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowActivateOfferStateCopyWith<$Res> {
  factory $FlowActivateOfferStateCopyWith(FlowActivateOfferState value,
          $Res Function(FlowActivateOfferState) then) =
      _$FlowActivateOfferStateCopyWithImpl<$Res, FlowActivateOfferState>;
  @useResult
  $Res call({String email, String phoneNumber});
}

/// @nodoc
class _$FlowActivateOfferStateCopyWithImpl<$Res,
        $Val extends FlowActivateOfferState>
    implements $FlowActivateOfferStateCopyWith<$Res> {
  _$FlowActivateOfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlowActivateOfferStateCopyWith<$Res>
    implements $FlowActivateOfferStateCopyWith<$Res> {
  factory _$$_FlowActivateOfferStateCopyWith(_$_FlowActivateOfferState value,
          $Res Function(_$_FlowActivateOfferState) then) =
      __$$_FlowActivateOfferStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String phoneNumber});
}

/// @nodoc
class __$$_FlowActivateOfferStateCopyWithImpl<$Res>
    extends _$FlowActivateOfferStateCopyWithImpl<$Res,
        _$_FlowActivateOfferState>
    implements _$$_FlowActivateOfferStateCopyWith<$Res> {
  __$$_FlowActivateOfferStateCopyWithImpl(_$_FlowActivateOfferState _value,
      $Res Function(_$_FlowActivateOfferState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$_FlowActivateOfferState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FlowActivateOfferState implements _FlowActivateOfferState {
  const _$_FlowActivateOfferState({this.email = '', this.phoneNumber = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phoneNumber;

  @override
  String toString() {
    return 'FlowActivateOfferState(email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlowActivateOfferState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlowActivateOfferStateCopyWith<_$_FlowActivateOfferState> get copyWith =>
      __$$_FlowActivateOfferStateCopyWithImpl<_$_FlowActivateOfferState>(
          this, _$identity);
}

abstract class _FlowActivateOfferState implements FlowActivateOfferState {
  const factory _FlowActivateOfferState(
      {final String email,
      final String phoneNumber}) = _$_FlowActivateOfferState;

  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$_FlowActivateOfferStateCopyWith<_$_FlowActivateOfferState> get copyWith =>
      throw _privateConstructorUsedError;
}
