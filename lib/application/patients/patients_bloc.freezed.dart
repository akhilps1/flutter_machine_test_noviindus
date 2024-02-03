// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patients_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PatientsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPatients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatients value) getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatients value)? getPatients,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatients value)? getPatients,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientsEventCopyWith<$Res> {
  factory $PatientsEventCopyWith(
          PatientsEvent value, $Res Function(PatientsEvent) then) =
      _$PatientsEventCopyWithImpl<$Res, PatientsEvent>;
}

/// @nodoc
class _$PatientsEventCopyWithImpl<$Res, $Val extends PatientsEvent>
    implements $PatientsEventCopyWith<$Res> {
  _$PatientsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPatientsImplCopyWith<$Res> {
  factory _$$GetPatientsImplCopyWith(
          _$GetPatientsImpl value, $Res Function(_$GetPatientsImpl) then) =
      __$$GetPatientsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPatientsImplCopyWithImpl<$Res>
    extends _$PatientsEventCopyWithImpl<$Res, _$GetPatientsImpl>
    implements _$$GetPatientsImplCopyWith<$Res> {
  __$$GetPatientsImplCopyWithImpl(
      _$GetPatientsImpl _value, $Res Function(_$GetPatientsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPatientsImpl implements GetPatients {
  const _$GetPatientsImpl();

  @override
  String toString() {
    return 'PatientsEvent.getPatients()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPatientsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPatients,
  }) {
    return getPatients();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPatients,
  }) {
    return getPatients?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPatients,
    required TResult orElse(),
  }) {
    if (getPatients != null) {
      return getPatients();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPatients value) getPatients,
  }) {
    return getPatients(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPatients value)? getPatients,
  }) {
    return getPatients?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPatients value)? getPatients,
    required TResult orElse(),
  }) {
    if (getPatients != null) {
      return getPatients(this);
    }
    return orElse();
  }
}

abstract class GetPatients implements PatientsEvent {
  const factory GetPatients() = _$GetPatientsImpl;
}

/// @nodoc
mixin _$PatientsState {
  List<Patient> get patients => throw _privateConstructorUsedError;
  Option<MainFailure> get failureOption => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PatientsStateCopyWith<PatientsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientsStateCopyWith<$Res> {
  factory $PatientsStateCopyWith(
          PatientsState value, $Res Function(PatientsState) then) =
      _$PatientsStateCopyWithImpl<$Res, PatientsState>;
  @useResult
  $Res call(
      {List<Patient> patients,
      Option<MainFailure> failureOption,
      bool isLoading});
}

/// @nodoc
class _$PatientsStateCopyWithImpl<$Res, $Val extends PatientsState>
    implements $PatientsStateCopyWith<$Res> {
  _$PatientsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
    Object? failureOption = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<MainFailure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientsStateImplCopyWith<$Res>
    implements $PatientsStateCopyWith<$Res> {
  factory _$$PatientsStateImplCopyWith(
          _$PatientsStateImpl value, $Res Function(_$PatientsStateImpl) then) =
      __$$PatientsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Patient> patients,
      Option<MainFailure> failureOption,
      bool isLoading});
}

/// @nodoc
class __$$PatientsStateImplCopyWithImpl<$Res>
    extends _$PatientsStateCopyWithImpl<$Res, _$PatientsStateImpl>
    implements _$$PatientsStateImplCopyWith<$Res> {
  __$$PatientsStateImplCopyWithImpl(
      _$PatientsStateImpl _value, $Res Function(_$PatientsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patients = null,
    Object? failureOption = null,
    Object? isLoading = null,
  }) {
    return _then(_$PatientsStateImpl(
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      failureOption: null == failureOption
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<MainFailure>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PatientsStateImpl implements _PatientsState {
  const _$PatientsStateImpl(
      {required final List<Patient> patients,
      required this.failureOption,
      required this.isLoading})
      : _patients = patients;

  final List<Patient> _patients;
  @override
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  final Option<MainFailure> failureOption;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PatientsState(patients: $patients, failureOption: $failureOption, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientsStateImpl &&
            const DeepCollectionEquality().equals(other._patients, _patients) &&
            (identical(other.failureOption, failureOption) ||
                other.failureOption == failureOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_patients), failureOption, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientsStateImplCopyWith<_$PatientsStateImpl> get copyWith =>
      __$$PatientsStateImplCopyWithImpl<_$PatientsStateImpl>(this, _$identity);
}

abstract class _PatientsState implements PatientsState {
  const factory _PatientsState(
      {required final List<Patient> patients,
      required final Option<MainFailure> failureOption,
      required final bool isLoading}) = _$PatientsStateImpl;

  @override
  List<Patient> get patients;
  @override
  Option<MainFailure> get failureOption;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$PatientsStateImplCopyWith<_$PatientsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
