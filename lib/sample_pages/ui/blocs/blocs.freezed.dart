// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of blocs;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SamplePersonListStateTearOff {
  const _$SamplePersonListStateTearOff();

  SamplePersonListInitialState initialState() {
    return const SamplePersonListInitialState();
  }

  SamplePersonListLoadingState loadingState() {
    return const SamplePersonListLoadingState();
  }

  SamplePersonListLoadedState loadedState(
      {required List<SamplePerson> samplePersonList}) {
    return SamplePersonListLoadedState(
      samplePersonList: samplePersonList,
    );
  }

  SamplePersonListErrorState errorState({required Error error}) {
    return SamplePersonListErrorState(
      error: error,
    );
  }
}

/// @nodoc
const $SamplePersonListState = _$SamplePersonListStateTearOff();

/// @nodoc
mixin _$SamplePersonListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<SamplePerson> samplePersonList) loadedState,
    required TResult Function(Error error) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamplePersonListInitialState value) initialState,
    required TResult Function(SamplePersonListLoadingState value) loadingState,
    required TResult Function(SamplePersonListLoadedState value) loadedState,
    required TResult Function(SamplePersonListErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SamplePersonListStateCopyWith<$Res> {
  factory $SamplePersonListStateCopyWith(SamplePersonListState value,
          $Res Function(SamplePersonListState) then) =
      _$SamplePersonListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SamplePersonListStateCopyWithImpl<$Res>
    implements $SamplePersonListStateCopyWith<$Res> {
  _$SamplePersonListStateCopyWithImpl(this._value, this._then);

  final SamplePersonListState _value;
  // ignore: unused_field
  final $Res Function(SamplePersonListState) _then;
}

/// @nodoc
abstract class $SamplePersonListInitialStateCopyWith<$Res> {
  factory $SamplePersonListInitialStateCopyWith(
          SamplePersonListInitialState value,
          $Res Function(SamplePersonListInitialState) then) =
      _$SamplePersonListInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SamplePersonListInitialStateCopyWithImpl<$Res>
    extends _$SamplePersonListStateCopyWithImpl<$Res>
    implements $SamplePersonListInitialStateCopyWith<$Res> {
  _$SamplePersonListInitialStateCopyWithImpl(
      SamplePersonListInitialState _value,
      $Res Function(SamplePersonListInitialState) _then)
      : super(_value, (v) => _then(v as SamplePersonListInitialState));

  @override
  SamplePersonListInitialState get _value =>
      super._value as SamplePersonListInitialState;
}

/// @nodoc

class _$SamplePersonListInitialState implements SamplePersonListInitialState {
  const _$SamplePersonListInitialState();

  @override
  String toString() {
    return 'SamplePersonListState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SamplePersonListInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<SamplePerson> samplePersonList) loadedState,
    required TResult Function(Error error) errorState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamplePersonListInitialState value) initialState,
    required TResult Function(SamplePersonListLoadingState value) loadingState,
    required TResult Function(SamplePersonListLoadedState value) loadedState,
    required TResult Function(SamplePersonListErrorState value) errorState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class SamplePersonListInitialState implements SamplePersonListState {
  const factory SamplePersonListInitialState() = _$SamplePersonListInitialState;
}

/// @nodoc
abstract class $SamplePersonListLoadingStateCopyWith<$Res> {
  factory $SamplePersonListLoadingStateCopyWith(
          SamplePersonListLoadingState value,
          $Res Function(SamplePersonListLoadingState) then) =
      _$SamplePersonListLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SamplePersonListLoadingStateCopyWithImpl<$Res>
    extends _$SamplePersonListStateCopyWithImpl<$Res>
    implements $SamplePersonListLoadingStateCopyWith<$Res> {
  _$SamplePersonListLoadingStateCopyWithImpl(
      SamplePersonListLoadingState _value,
      $Res Function(SamplePersonListLoadingState) _then)
      : super(_value, (v) => _then(v as SamplePersonListLoadingState));

  @override
  SamplePersonListLoadingState get _value =>
      super._value as SamplePersonListLoadingState;
}

/// @nodoc

class _$SamplePersonListLoadingState implements SamplePersonListLoadingState {
  const _$SamplePersonListLoadingState();

  @override
  String toString() {
    return 'SamplePersonListState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SamplePersonListLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<SamplePerson> samplePersonList) loadedState,
    required TResult Function(Error error) errorState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamplePersonListInitialState value) initialState,
    required TResult Function(SamplePersonListLoadingState value) loadingState,
    required TResult Function(SamplePersonListLoadedState value) loadedState,
    required TResult Function(SamplePersonListErrorState value) errorState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class SamplePersonListLoadingState implements SamplePersonListState {
  const factory SamplePersonListLoadingState() = _$SamplePersonListLoadingState;
}

/// @nodoc
abstract class $SamplePersonListLoadedStateCopyWith<$Res> {
  factory $SamplePersonListLoadedStateCopyWith(
          SamplePersonListLoadedState value,
          $Res Function(SamplePersonListLoadedState) then) =
      _$SamplePersonListLoadedStateCopyWithImpl<$Res>;
  $Res call({List<SamplePerson> samplePersonList});
}

/// @nodoc
class _$SamplePersonListLoadedStateCopyWithImpl<$Res>
    extends _$SamplePersonListStateCopyWithImpl<$Res>
    implements $SamplePersonListLoadedStateCopyWith<$Res> {
  _$SamplePersonListLoadedStateCopyWithImpl(SamplePersonListLoadedState _value,
      $Res Function(SamplePersonListLoadedState) _then)
      : super(_value, (v) => _then(v as SamplePersonListLoadedState));

  @override
  SamplePersonListLoadedState get _value =>
      super._value as SamplePersonListLoadedState;

  @override
  $Res call({
    Object? samplePersonList = freezed,
  }) {
    return _then(SamplePersonListLoadedState(
      samplePersonList: samplePersonList == freezed
          ? _value.samplePersonList
          : samplePersonList // ignore: cast_nullable_to_non_nullable
              as List<SamplePerson>,
    ));
  }
}

/// @nodoc

class _$SamplePersonListLoadedState implements SamplePersonListLoadedState {
  const _$SamplePersonListLoadedState({required this.samplePersonList});

  @override
  final List<SamplePerson> samplePersonList;

  @override
  String toString() {
    return 'SamplePersonListState.loadedState(samplePersonList: $samplePersonList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SamplePersonListLoadedState &&
            const DeepCollectionEquality()
                .equals(other.samplePersonList, samplePersonList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(samplePersonList));

  @JsonKey(ignore: true)
  @override
  $SamplePersonListLoadedStateCopyWith<SamplePersonListLoadedState>
      get copyWith => _$SamplePersonListLoadedStateCopyWithImpl<
          SamplePersonListLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<SamplePerson> samplePersonList) loadedState,
    required TResult Function(Error error) errorState,
  }) {
    return loadedState(samplePersonList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
  }) {
    return loadedState?.call(samplePersonList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(samplePersonList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamplePersonListInitialState value) initialState,
    required TResult Function(SamplePersonListLoadingState value) loadingState,
    required TResult Function(SamplePersonListLoadedState value) loadedState,
    required TResult Function(SamplePersonListErrorState value) errorState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class SamplePersonListLoadedState implements SamplePersonListState {
  const factory SamplePersonListLoadedState(
          {required List<SamplePerson> samplePersonList}) =
      _$SamplePersonListLoadedState;

  List<SamplePerson> get samplePersonList;
  @JsonKey(ignore: true)
  $SamplePersonListLoadedStateCopyWith<SamplePersonListLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SamplePersonListErrorStateCopyWith<$Res> {
  factory $SamplePersonListErrorStateCopyWith(SamplePersonListErrorState value,
          $Res Function(SamplePersonListErrorState) then) =
      _$SamplePersonListErrorStateCopyWithImpl<$Res>;
  $Res call({Error error});
}

/// @nodoc
class _$SamplePersonListErrorStateCopyWithImpl<$Res>
    extends _$SamplePersonListStateCopyWithImpl<$Res>
    implements $SamplePersonListErrorStateCopyWith<$Res> {
  _$SamplePersonListErrorStateCopyWithImpl(SamplePersonListErrorState _value,
      $Res Function(SamplePersonListErrorState) _then)
      : super(_value, (v) => _then(v as SamplePersonListErrorState));

  @override
  SamplePersonListErrorState get _value =>
      super._value as SamplePersonListErrorState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SamplePersonListErrorState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$SamplePersonListErrorState implements SamplePersonListErrorState {
  const _$SamplePersonListErrorState({required this.error});

  @override
  final Error error;

  @override
  String toString() {
    return 'SamplePersonListState.errorState(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SamplePersonListErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $SamplePersonListErrorStateCopyWith<SamplePersonListErrorState>
      get copyWith =>
          _$SamplePersonListErrorStateCopyWithImpl<SamplePersonListErrorState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<SamplePerson> samplePersonList) loadedState,
    required TResult Function(Error error) errorState,
  }) {
    return errorState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
  }) {
    return errorState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<SamplePerson> samplePersonList)? loadedState,
    TResult Function(Error error)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SamplePersonListInitialState value) initialState,
    required TResult Function(SamplePersonListLoadingState value) loadingState,
    required TResult Function(SamplePersonListLoadedState value) loadedState,
    required TResult Function(SamplePersonListErrorState value) errorState,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SamplePersonListInitialState value)? initialState,
    TResult Function(SamplePersonListLoadingState value)? loadingState,
    TResult Function(SamplePersonListLoadedState value)? loadedState,
    TResult Function(SamplePersonListErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class SamplePersonListErrorState implements SamplePersonListState {
  const factory SamplePersonListErrorState({required Error error}) =
      _$SamplePersonListErrorState;

  Error get error;
  @JsonKey(ignore: true)
  $SamplePersonListErrorStateCopyWith<SamplePersonListErrorState>
      get copyWith => throw _privateConstructorUsedError;
}
