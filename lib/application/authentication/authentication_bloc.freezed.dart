// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String userName) userNameChaned,
    required TResult Function(String password) passwdChanged,
    required TResult Function() checkAuthenticated,
    required TResult Function() clearFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String userName)? userNameChaned,
    TResult? Function(String password)? passwdChanged,
    TResult? Function()? checkAuthenticated,
    TResult? Function()? clearFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String userName)? userNameChaned,
    TResult Function(String password)? passwdChanged,
    TResult Function()? checkAuthenticated,
    TResult Function()? clearFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(UserNameChaned value) userNameChaned,
    required TResult Function(PasswdChanged value) passwdChanged,
    required TResult Function(CheckAuthenticated value) checkAuthenticated,
    required TResult Function(ClearFailure value) clearFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(UserNameChaned value)? userNameChaned,
    TResult? Function(PasswdChanged value)? passwdChanged,
    TResult? Function(CheckAuthenticated value)? checkAuthenticated,
    TResult? Function(ClearFailure value)? clearFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(UserNameChaned value)? userNameChaned,
    TResult Function(PasswdChanged value)? passwdChanged,
    TResult Function(CheckAuthenticated value)? checkAuthenticated,
    TResult Function(ClearFailure value)? clearFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticateImplCopyWith<$Res> {
  factory _$$AuthenticateImplCopyWith(
          _$AuthenticateImpl value, $Res Function(_$AuthenticateImpl) then) =
      __$$AuthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateImpl implements Authenticate {
  const _$AuthenticateImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.authenticate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String userName) userNameChaned,
    required TResult Function(String password) passwdChanged,
    required TResult Function() checkAuthenticated,
    required TResult Function() clearFailure,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String userName)? userNameChaned,
    TResult? Function(String password)? passwdChanged,
    TResult? Function()? checkAuthenticated,
    TResult? Function()? clearFailure,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String userName)? userNameChaned,
    TResult Function(String password)? passwdChanged,
    TResult Function()? checkAuthenticated,
    TResult Function()? clearFailure,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(UserNameChaned value) userNameChaned,
    required TResult Function(PasswdChanged value) passwdChanged,
    required TResult Function(CheckAuthenticated value) checkAuthenticated,
    required TResult Function(ClearFailure value) clearFailure,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(UserNameChaned value)? userNameChaned,
    TResult? Function(PasswdChanged value)? passwdChanged,
    TResult? Function(CheckAuthenticated value)? checkAuthenticated,
    TResult? Function(ClearFailure value)? clearFailure,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(UserNameChaned value)? userNameChaned,
    TResult Function(PasswdChanged value)? passwdChanged,
    TResult Function(CheckAuthenticated value)? checkAuthenticated,
    TResult Function(ClearFailure value)? clearFailure,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class Authenticate implements AuthenticationEvent {
  const factory Authenticate() = _$AuthenticateImpl;
}

/// @nodoc
abstract class _$$UserNameChanedImplCopyWith<$Res> {
  factory _$$UserNameChanedImplCopyWith(_$UserNameChanedImpl value,
          $Res Function(_$UserNameChanedImpl) then) =
      __$$UserNameChanedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$UserNameChanedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$UserNameChanedImpl>
    implements _$$UserNameChanedImplCopyWith<$Res> {
  __$$UserNameChanedImplCopyWithImpl(
      _$UserNameChanedImpl _value, $Res Function(_$UserNameChanedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$UserNameChanedImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameChanedImpl implements UserNameChaned {
  const _$UserNameChanedImpl(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'AuthenticationEvent.userNameChaned(userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNameChanedImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNameChanedImplCopyWith<_$UserNameChanedImpl> get copyWith =>
      __$$UserNameChanedImplCopyWithImpl<_$UserNameChanedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String userName) userNameChaned,
    required TResult Function(String password) passwdChanged,
    required TResult Function() checkAuthenticated,
    required TResult Function() clearFailure,
  }) {
    return userNameChaned(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String userName)? userNameChaned,
    TResult? Function(String password)? passwdChanged,
    TResult? Function()? checkAuthenticated,
    TResult? Function()? clearFailure,
  }) {
    return userNameChaned?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String userName)? userNameChaned,
    TResult Function(String password)? passwdChanged,
    TResult Function()? checkAuthenticated,
    TResult Function()? clearFailure,
    required TResult orElse(),
  }) {
    if (userNameChaned != null) {
      return userNameChaned(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(UserNameChaned value) userNameChaned,
    required TResult Function(PasswdChanged value) passwdChanged,
    required TResult Function(CheckAuthenticated value) checkAuthenticated,
    required TResult Function(ClearFailure value) clearFailure,
  }) {
    return userNameChaned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(UserNameChaned value)? userNameChaned,
    TResult? Function(PasswdChanged value)? passwdChanged,
    TResult? Function(CheckAuthenticated value)? checkAuthenticated,
    TResult? Function(ClearFailure value)? clearFailure,
  }) {
    return userNameChaned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(UserNameChaned value)? userNameChaned,
    TResult Function(PasswdChanged value)? passwdChanged,
    TResult Function(CheckAuthenticated value)? checkAuthenticated,
    TResult Function(ClearFailure value)? clearFailure,
    required TResult orElse(),
  }) {
    if (userNameChaned != null) {
      return userNameChaned(this);
    }
    return orElse();
  }
}

abstract class UserNameChaned implements AuthenticationEvent {
  const factory UserNameChaned(final String userName) = _$UserNameChanedImpl;

  String get userName;
  @JsonKey(ignore: true)
  _$$UserNameChanedImplCopyWith<_$UserNameChanedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswdChangedImplCopyWith<$Res> {
  factory _$$PasswdChangedImplCopyWith(
          _$PasswdChangedImpl value, $Res Function(_$PasswdChangedImpl) then) =
      __$$PasswdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswdChangedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$PasswdChangedImpl>
    implements _$$PasswdChangedImplCopyWith<$Res> {
  __$$PasswdChangedImplCopyWithImpl(
      _$PasswdChangedImpl _value, $Res Function(_$PasswdChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswdChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswdChangedImpl implements PasswdChanged {
  const _$PasswdChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.passwdChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswdChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswdChangedImplCopyWith<_$PasswdChangedImpl> get copyWith =>
      __$$PasswdChangedImplCopyWithImpl<_$PasswdChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String userName) userNameChaned,
    required TResult Function(String password) passwdChanged,
    required TResult Function() checkAuthenticated,
    required TResult Function() clearFailure,
  }) {
    return passwdChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String userName)? userNameChaned,
    TResult? Function(String password)? passwdChanged,
    TResult? Function()? checkAuthenticated,
    TResult? Function()? clearFailure,
  }) {
    return passwdChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String userName)? userNameChaned,
    TResult Function(String password)? passwdChanged,
    TResult Function()? checkAuthenticated,
    TResult Function()? clearFailure,
    required TResult orElse(),
  }) {
    if (passwdChanged != null) {
      return passwdChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(UserNameChaned value) userNameChaned,
    required TResult Function(PasswdChanged value) passwdChanged,
    required TResult Function(CheckAuthenticated value) checkAuthenticated,
    required TResult Function(ClearFailure value) clearFailure,
  }) {
    return passwdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(UserNameChaned value)? userNameChaned,
    TResult? Function(PasswdChanged value)? passwdChanged,
    TResult? Function(CheckAuthenticated value)? checkAuthenticated,
    TResult? Function(ClearFailure value)? clearFailure,
  }) {
    return passwdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(UserNameChaned value)? userNameChaned,
    TResult Function(PasswdChanged value)? passwdChanged,
    TResult Function(CheckAuthenticated value)? checkAuthenticated,
    TResult Function(ClearFailure value)? clearFailure,
    required TResult orElse(),
  }) {
    if (passwdChanged != null) {
      return passwdChanged(this);
    }
    return orElse();
  }
}

abstract class PasswdChanged implements AuthenticationEvent {
  const factory PasswdChanged(final String password) = _$PasswdChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswdChangedImplCopyWith<_$PasswdChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckAuthenticatedImplCopyWith<$Res> {
  factory _$$CheckAuthenticatedImplCopyWith(_$CheckAuthenticatedImpl value,
          $Res Function(_$CheckAuthenticatedImpl) then) =
      __$$CheckAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$CheckAuthenticatedImpl>
    implements _$$CheckAuthenticatedImplCopyWith<$Res> {
  __$$CheckAuthenticatedImplCopyWithImpl(_$CheckAuthenticatedImpl _value,
      $Res Function(_$CheckAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckAuthenticatedImpl implements CheckAuthenticated {
  const _$CheckAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.checkAuthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String userName) userNameChaned,
    required TResult Function(String password) passwdChanged,
    required TResult Function() checkAuthenticated,
    required TResult Function() clearFailure,
  }) {
    return checkAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String userName)? userNameChaned,
    TResult? Function(String password)? passwdChanged,
    TResult? Function()? checkAuthenticated,
    TResult? Function()? clearFailure,
  }) {
    return checkAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String userName)? userNameChaned,
    TResult Function(String password)? passwdChanged,
    TResult Function()? checkAuthenticated,
    TResult Function()? clearFailure,
    required TResult orElse(),
  }) {
    if (checkAuthenticated != null) {
      return checkAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(UserNameChaned value) userNameChaned,
    required TResult Function(PasswdChanged value) passwdChanged,
    required TResult Function(CheckAuthenticated value) checkAuthenticated,
    required TResult Function(ClearFailure value) clearFailure,
  }) {
    return checkAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(UserNameChaned value)? userNameChaned,
    TResult? Function(PasswdChanged value)? passwdChanged,
    TResult? Function(CheckAuthenticated value)? checkAuthenticated,
    TResult? Function(ClearFailure value)? clearFailure,
  }) {
    return checkAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(UserNameChaned value)? userNameChaned,
    TResult Function(PasswdChanged value)? passwdChanged,
    TResult Function(CheckAuthenticated value)? checkAuthenticated,
    TResult Function(ClearFailure value)? clearFailure,
    required TResult orElse(),
  }) {
    if (checkAuthenticated != null) {
      return checkAuthenticated(this);
    }
    return orElse();
  }
}

abstract class CheckAuthenticated implements AuthenticationEvent {
  const factory CheckAuthenticated() = _$CheckAuthenticatedImpl;
}

/// @nodoc
abstract class _$$ClearFailureImplCopyWith<$Res> {
  factory _$$ClearFailureImplCopyWith(
          _$ClearFailureImpl value, $Res Function(_$ClearFailureImpl) then) =
      __$$ClearFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFailureImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$ClearFailureImpl>
    implements _$$ClearFailureImplCopyWith<$Res> {
  __$$ClearFailureImplCopyWithImpl(
      _$ClearFailureImpl _value, $Res Function(_$ClearFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFailureImpl implements ClearFailure {
  const _$ClearFailureImpl();

  @override
  String toString() {
    return 'AuthenticationEvent.clearFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function(String userName) userNameChaned,
    required TResult Function(String password) passwdChanged,
    required TResult Function() checkAuthenticated,
    required TResult Function() clearFailure,
  }) {
    return clearFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function(String userName)? userNameChaned,
    TResult? Function(String password)? passwdChanged,
    TResult? Function()? checkAuthenticated,
    TResult? Function()? clearFailure,
  }) {
    return clearFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function(String userName)? userNameChaned,
    TResult Function(String password)? passwdChanged,
    TResult Function()? checkAuthenticated,
    TResult Function()? clearFailure,
    required TResult orElse(),
  }) {
    if (clearFailure != null) {
      return clearFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticate value) authenticate,
    required TResult Function(UserNameChaned value) userNameChaned,
    required TResult Function(PasswdChanged value) passwdChanged,
    required TResult Function(CheckAuthenticated value) checkAuthenticated,
    required TResult Function(ClearFailure value) clearFailure,
  }) {
    return clearFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticate value)? authenticate,
    TResult? Function(UserNameChaned value)? userNameChaned,
    TResult? Function(PasswdChanged value)? passwdChanged,
    TResult? Function(CheckAuthenticated value)? checkAuthenticated,
    TResult? Function(ClearFailure value)? clearFailure,
  }) {
    return clearFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticate value)? authenticate,
    TResult Function(UserNameChaned value)? userNameChaned,
    TResult Function(PasswdChanged value)? passwdChanged,
    TResult Function(CheckAuthenticated value)? checkAuthenticated,
    TResult Function(ClearFailure value)? clearFailure,
    required TResult orElse(),
  }) {
    if (clearFailure != null) {
      return clearFailure(this);
    }
    return orElse();
  }
}

abstract class ClearFailure implements AuthenticationEvent {
  const factory ClearFailure() = _$ClearFailureImpl;
}

/// @nodoc
mixin _$AuthenticationState {
  String get userName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  Option<Either<MainFailure, String>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {String userName,
      String password,
      String token,
      Option<Either<MainFailure, String>> failureOrSuccess});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? token = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String password,
      String token,
      Option<Either<MainFailure, String>> failureOrSuccess});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? password = null,
    Object? token = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, String>>,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {required this.userName,
      required this.password,
      required this.token,
      required this.failureOrSuccess});

  @override
  final String userName;
  @override
  final String password;
  @override
  final String token;
  @override
  final Option<Either<MainFailure, String>> failureOrSuccess;

  @override
  String toString() {
    return 'AuthenticationState(userName: $userName, password: $password, token: $token, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, password, token, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {required final String userName,
      required final String password,
      required final String token,
      required final Option<Either<MainFailure, String>>
          failureOrSuccess}) = _$AuthenticationStateImpl;

  @override
  String get userName;
  @override
  String get password;
  @override
  String get token;
  @override
  Option<Either<MainFailure, String>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
