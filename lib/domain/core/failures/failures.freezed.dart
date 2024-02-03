// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  String get errorMsg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) unknownFailure,
    required TResult Function(String errorMsg) notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? unknownFailure,
    TResult? Function(String errorMsg)? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? unknownFailure,
    TResult Function(String errorMsg)? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_UnknownFailure value) unknownFailure,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_UnknownFailure value)? unknownFailure,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_UnknownFailure value)? unknownFailure,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainFailureCopyWith<MainFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_value.copyWith(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$ServerFailureImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'MainFailure.serverFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) unknownFailure,
    required TResult Function(String errorMsg) notAuthenticated,
  }) {
    return serverFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? unknownFailure,
    TResult? Function(String errorMsg)? notAuthenticated,
  }) {
    return serverFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? unknownFailure,
    TResult Function(String errorMsg)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_UnknownFailure value) unknownFailure,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_UnknownFailure value)? unknownFailure,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_UnknownFailure value)? unknownFailure,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements MainFailure {
  const factory _ServerFailure({required final String errorMsg}) =
      _$ServerFailureImpl;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$UnknownFailureImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements _UnknownFailure {
  const _$UnknownFailureImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'MainFailure.unknownFailure(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) unknownFailure,
    required TResult Function(String errorMsg) notAuthenticated,
  }) {
    return unknownFailure(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? unknownFailure,
    TResult? Function(String errorMsg)? notAuthenticated,
  }) {
    return unknownFailure?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? unknownFailure,
    TResult Function(String errorMsg)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_UnknownFailure value) unknownFailure,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_UnknownFailure value)? unknownFailure,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_UnknownFailure value)? unknownFailure,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure implements MainFailure {
  const factory _UnknownFailure({required final String errorMsg}) =
      _$UnknownFailureImpl;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotAuthenticatedImplCopyWith<$Res>
    implements $MainFailureCopyWith<$Res> {
  factory _$$NotAuthenticatedImplCopyWith(_$NotAuthenticatedImpl value,
          $Res Function(_$NotAuthenticatedImpl) then) =
      __$$NotAuthenticatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$NotAuthenticatedImplCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$NotAuthenticatedImpl>
    implements _$$NotAuthenticatedImplCopyWith<$Res> {
  __$$NotAuthenticatedImplCopyWithImpl(_$NotAuthenticatedImpl _value,
      $Res Function(_$NotAuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$NotAuthenticatedImpl(
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotAuthenticatedImpl implements _NotAuthenticated {
  const _$NotAuthenticatedImpl({required this.errorMsg});

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'MainFailure.notAuthenticated(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotAuthenticatedImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotAuthenticatedImplCopyWith<_$NotAuthenticatedImpl> get copyWith =>
      __$$NotAuthenticatedImplCopyWithImpl<_$NotAuthenticatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMsg) serverFailure,
    required TResult Function(String errorMsg) unknownFailure,
    required TResult Function(String errorMsg) notAuthenticated,
  }) {
    return notAuthenticated(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMsg)? serverFailure,
    TResult? Function(String errorMsg)? unknownFailure,
    TResult? Function(String errorMsg)? notAuthenticated,
  }) {
    return notAuthenticated?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMsg)? serverFailure,
    TResult Function(String errorMsg)? unknownFailure,
    TResult Function(String errorMsg)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_UnknownFailure value) unknownFailure,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_UnknownFailure value)? unknownFailure,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_UnknownFailure value)? unknownFailure,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements MainFailure {
  const factory _NotAuthenticated({required final String errorMsg}) =
      _$NotAuthenticatedImpl;

  @override
  String get errorMsg;
  @override
  @JsonKey(ignore: true)
  _$$NotAuthenticatedImplCopyWith<_$NotAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
