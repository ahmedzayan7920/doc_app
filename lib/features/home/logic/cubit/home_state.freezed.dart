// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialtyLoading,
    required TResult Function(SpecialtyResponseModel specialtyResponseModel)
        specialtySuccess,
    required TResult Function(ErrorHandler errorHandler) specialtyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialtyLoading,
    TResult? Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult? Function(ErrorHandler errorHandler)? specialtyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialtyLoading,
    TResult Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult Function(ErrorHandler errorHandler)? specialtyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtyLoading value) specialtyLoading,
    required TResult Function(SpecialtySuccess value) specialtySuccess,
    required TResult Function(SpecialtyError value) specialtyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtyLoading value)? specialtyLoading,
    TResult? Function(SpecialtySuccess value)? specialtySuccess,
    TResult? Function(SpecialtyError value)? specialtyError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtyLoading value)? specialtyLoading,
    TResult Function(SpecialtySuccess value)? specialtySuccess,
    TResult Function(SpecialtyError value)? specialtyError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialtyLoading,
    required TResult Function(SpecialtyResponseModel specialtyResponseModel)
        specialtySuccess,
    required TResult Function(ErrorHandler errorHandler) specialtyError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialtyLoading,
    TResult? Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult? Function(ErrorHandler errorHandler)? specialtyError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialtyLoading,
    TResult Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult Function(ErrorHandler errorHandler)? specialtyError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtyLoading value) specialtyLoading,
    required TResult Function(SpecialtySuccess value) specialtySuccess,
    required TResult Function(SpecialtyError value) specialtyError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtyLoading value)? specialtyLoading,
    TResult? Function(SpecialtySuccess value)? specialtySuccess,
    TResult? Function(SpecialtyError value)? specialtyError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtyLoading value)? specialtyLoading,
    TResult Function(SpecialtySuccess value)? specialtySuccess,
    TResult Function(SpecialtyError value)? specialtyError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SpecialtyLoadingImplCopyWith<$Res> {
  factory _$$SpecialtyLoadingImplCopyWith(_$SpecialtyLoadingImpl value,
          $Res Function(_$SpecialtyLoadingImpl) then) =
      __$$SpecialtyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecialtyLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialtyLoadingImpl>
    implements _$$SpecialtyLoadingImplCopyWith<$Res> {
  __$$SpecialtyLoadingImplCopyWithImpl(_$SpecialtyLoadingImpl _value,
      $Res Function(_$SpecialtyLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecialtyLoadingImpl implements SpecialtyLoading {
  const _$SpecialtyLoadingImpl();

  @override
  String toString() {
    return 'HomeState.specialtyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpecialtyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialtyLoading,
    required TResult Function(SpecialtyResponseModel specialtyResponseModel)
        specialtySuccess,
    required TResult Function(ErrorHandler errorHandler) specialtyError,
  }) {
    return specialtyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialtyLoading,
    TResult? Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult? Function(ErrorHandler errorHandler)? specialtyError,
  }) {
    return specialtyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialtyLoading,
    TResult Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult Function(ErrorHandler errorHandler)? specialtyError,
    required TResult orElse(),
  }) {
    if (specialtyLoading != null) {
      return specialtyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtyLoading value) specialtyLoading,
    required TResult Function(SpecialtySuccess value) specialtySuccess,
    required TResult Function(SpecialtyError value) specialtyError,
  }) {
    return specialtyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtyLoading value)? specialtyLoading,
    TResult? Function(SpecialtySuccess value)? specialtySuccess,
    TResult? Function(SpecialtyError value)? specialtyError,
  }) {
    return specialtyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtyLoading value)? specialtyLoading,
    TResult Function(SpecialtySuccess value)? specialtySuccess,
    TResult Function(SpecialtyError value)? specialtyError,
    required TResult orElse(),
  }) {
    if (specialtyLoading != null) {
      return specialtyLoading(this);
    }
    return orElse();
  }
}

abstract class SpecialtyLoading implements HomeState {
  const factory SpecialtyLoading() = _$SpecialtyLoadingImpl;
}

/// @nodoc
abstract class _$$SpecialtySuccessImplCopyWith<$Res> {
  factory _$$SpecialtySuccessImplCopyWith(_$SpecialtySuccessImpl value,
          $Res Function(_$SpecialtySuccessImpl) then) =
      __$$SpecialtySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpecialtyResponseModel specialtyResponseModel});
}

/// @nodoc
class __$$SpecialtySuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialtySuccessImpl>
    implements _$$SpecialtySuccessImplCopyWith<$Res> {
  __$$SpecialtySuccessImplCopyWithImpl(_$SpecialtySuccessImpl _value,
      $Res Function(_$SpecialtySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialtyResponseModel = null,
  }) {
    return _then(_$SpecialtySuccessImpl(
      specialtyResponseModel: null == specialtyResponseModel
          ? _value.specialtyResponseModel
          : specialtyResponseModel // ignore: cast_nullable_to_non_nullable
              as SpecialtyResponseModel,
    ));
  }
}

/// @nodoc

class _$SpecialtySuccessImpl implements SpecialtySuccess {
  const _$SpecialtySuccessImpl({required this.specialtyResponseModel});

  @override
  final SpecialtyResponseModel specialtyResponseModel;

  @override
  String toString() {
    return 'HomeState.specialtySuccess(specialtyResponseModel: $specialtyResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtySuccessImpl &&
            (identical(other.specialtyResponseModel, specialtyResponseModel) ||
                other.specialtyResponseModel == specialtyResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specialtyResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtySuccessImplCopyWith<_$SpecialtySuccessImpl> get copyWith =>
      __$$SpecialtySuccessImplCopyWithImpl<_$SpecialtySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialtyLoading,
    required TResult Function(SpecialtyResponseModel specialtyResponseModel)
        specialtySuccess,
    required TResult Function(ErrorHandler errorHandler) specialtyError,
  }) {
    return specialtySuccess(specialtyResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialtyLoading,
    TResult? Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult? Function(ErrorHandler errorHandler)? specialtyError,
  }) {
    return specialtySuccess?.call(specialtyResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialtyLoading,
    TResult Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult Function(ErrorHandler errorHandler)? specialtyError,
    required TResult orElse(),
  }) {
    if (specialtySuccess != null) {
      return specialtySuccess(specialtyResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtyLoading value) specialtyLoading,
    required TResult Function(SpecialtySuccess value) specialtySuccess,
    required TResult Function(SpecialtyError value) specialtyError,
  }) {
    return specialtySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtyLoading value)? specialtyLoading,
    TResult? Function(SpecialtySuccess value)? specialtySuccess,
    TResult? Function(SpecialtyError value)? specialtyError,
  }) {
    return specialtySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtyLoading value)? specialtyLoading,
    TResult Function(SpecialtySuccess value)? specialtySuccess,
    TResult Function(SpecialtyError value)? specialtyError,
    required TResult orElse(),
  }) {
    if (specialtySuccess != null) {
      return specialtySuccess(this);
    }
    return orElse();
  }
}

abstract class SpecialtySuccess implements HomeState {
  const factory SpecialtySuccess(
          {required final SpecialtyResponseModel specialtyResponseModel}) =
      _$SpecialtySuccessImpl;

  SpecialtyResponseModel get specialtyResponseModel;
  @JsonKey(ignore: true)
  _$$SpecialtySuccessImplCopyWith<_$SpecialtySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecialtyErrorImplCopyWith<$Res> {
  factory _$$SpecialtyErrorImplCopyWith(_$SpecialtyErrorImpl value,
          $Res Function(_$SpecialtyErrorImpl) then) =
      __$$SpecialtyErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$SpecialtyErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialtyErrorImpl>
    implements _$$SpecialtyErrorImplCopyWith<$Res> {
  __$$SpecialtyErrorImplCopyWithImpl(
      _$SpecialtyErrorImpl _value, $Res Function(_$SpecialtyErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$SpecialtyErrorImpl(
      errorHandler: null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SpecialtyErrorImpl implements SpecialtyError {
  const _$SpecialtyErrorImpl({required this.errorHandler});

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState.specialtyError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialtyErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialtyErrorImplCopyWith<_$SpecialtyErrorImpl> get copyWith =>
      __$$SpecialtyErrorImplCopyWithImpl<_$SpecialtyErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialtyLoading,
    required TResult Function(SpecialtyResponseModel specialtyResponseModel)
        specialtySuccess,
    required TResult Function(ErrorHandler errorHandler) specialtyError,
  }) {
    return specialtyError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialtyLoading,
    TResult? Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult? Function(ErrorHandler errorHandler)? specialtyError,
  }) {
    return specialtyError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialtyLoading,
    TResult Function(SpecialtyResponseModel specialtyResponseModel)?
        specialtySuccess,
    TResult Function(ErrorHandler errorHandler)? specialtyError,
    required TResult orElse(),
  }) {
    if (specialtyError != null) {
      return specialtyError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialtyLoading value) specialtyLoading,
    required TResult Function(SpecialtySuccess value) specialtySuccess,
    required TResult Function(SpecialtyError value) specialtyError,
  }) {
    return specialtyError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialtyLoading value)? specialtyLoading,
    TResult? Function(SpecialtySuccess value)? specialtySuccess,
    TResult? Function(SpecialtyError value)? specialtyError,
  }) {
    return specialtyError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialtyLoading value)? specialtyLoading,
    TResult Function(SpecialtySuccess value)? specialtySuccess,
    TResult Function(SpecialtyError value)? specialtyError,
    required TResult orElse(),
  }) {
    if (specialtyError != null) {
      return specialtyError(this);
    }
    return orElse();
  }
}

abstract class SpecialtyError implements HomeState {
  const factory SpecialtyError({required final ErrorHandler errorHandler}) =
      _$SpecialtyErrorImpl;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$SpecialtyErrorImplCopyWith<_$SpecialtyErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
