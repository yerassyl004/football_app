// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadData,
    required TResult Function(String? error) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadData,
    TResult? Function(String? error)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadData,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMainEvent value) initial,
    required TResult Function(LoadMainEvent value) loadData,
    required TResult Function(ErrorMainEvent value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainEvent value)? initial,
    TResult? Function(LoadMainEvent value)? loadData,
    TResult? Function(ErrorMainEvent value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainEvent value)? initial,
    TResult Function(LoadMainEvent value)? loadData,
    TResult Function(ErrorMainEvent value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialMainEventImplCopyWith<$Res> {
  factory _$$InitialMainEventImplCopyWith(
    _$InitialMainEventImpl value,
    $Res Function(_$InitialMainEventImpl) then,
  ) = __$$InitialMainEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$InitialMainEventImpl>
    implements _$$InitialMainEventImplCopyWith<$Res> {
  __$$InitialMainEventImplCopyWithImpl(
    _$InitialMainEventImpl _value,
    $Res Function(_$InitialMainEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialMainEventImpl extends InitialMainEvent
    with DiagnosticableTreeMixin {
  const _$InitialMainEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainEvent.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialMainEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadData,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadData,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadData,
    TResult Function(String? error)? error,
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
    required TResult Function(InitialMainEvent value) initial,
    required TResult Function(LoadMainEvent value) loadData,
    required TResult Function(ErrorMainEvent value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainEvent value)? initial,
    TResult? Function(LoadMainEvent value)? loadData,
    TResult? Function(ErrorMainEvent value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainEvent value)? initial,
    TResult Function(LoadMainEvent value)? loadData,
    TResult Function(ErrorMainEvent value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMainEvent extends MainEvent {
  const factory InitialMainEvent() = _$InitialMainEventImpl;
  const InitialMainEvent._() : super._();
}

/// @nodoc
abstract class _$$LoadMainEventImplCopyWith<$Res> {
  factory _$$LoadMainEventImplCopyWith(
    _$LoadMainEventImpl value,
    $Res Function(_$LoadMainEventImpl) then,
  ) = __$$LoadMainEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$LoadMainEventImpl>
    implements _$$LoadMainEventImplCopyWith<$Res> {
  __$$LoadMainEventImplCopyWithImpl(
    _$LoadMainEventImpl _value,
    $Res Function(_$LoadMainEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMainEventImpl extends LoadMainEvent with DiagnosticableTreeMixin {
  const _$LoadMainEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.loadData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainEvent.loadData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMainEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadData,
    required TResult Function(String? error) error,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadData,
    TResult? Function(String? error)? error,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadData,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMainEvent value) initial,
    required TResult Function(LoadMainEvent value) loadData,
    required TResult Function(ErrorMainEvent value) error,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainEvent value)? initial,
    TResult? Function(LoadMainEvent value)? loadData,
    TResult? Function(ErrorMainEvent value)? error,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainEvent value)? initial,
    TResult Function(LoadMainEvent value)? loadData,
    TResult Function(ErrorMainEvent value)? error,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class LoadMainEvent extends MainEvent {
  const factory LoadMainEvent() = _$LoadMainEventImpl;
  const LoadMainEvent._() : super._();
}

/// @nodoc
abstract class _$$ErrorMainEventImplCopyWith<$Res> {
  factory _$$ErrorMainEventImplCopyWith(
    _$ErrorMainEventImpl value,
    $Res Function(_$ErrorMainEventImpl) then,
  ) = __$$ErrorMainEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ErrorMainEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$ErrorMainEventImpl>
    implements _$$ErrorMainEventImplCopyWith<$Res> {
  __$$ErrorMainEventImplCopyWithImpl(
    _$ErrorMainEventImpl _value,
    $Res Function(_$ErrorMainEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed}) {
    return _then(
      _$ErrorMainEventImpl(
        freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$ErrorMainEventImpl extends ErrorMainEvent with DiagnosticableTreeMixin {
  const _$ErrorMainEventImpl(this.error) : super._();

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMainEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMainEventImplCopyWith<_$ErrorMainEventImpl> get copyWith =>
      __$$ErrorMainEventImplCopyWithImpl<_$ErrorMainEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadData,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadData,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadData,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMainEvent value) initial,
    required TResult Function(LoadMainEvent value) loadData,
    required TResult Function(ErrorMainEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainEvent value)? initial,
    TResult? Function(LoadMainEvent value)? loadData,
    TResult? Function(ErrorMainEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainEvent value)? initial,
    TResult Function(LoadMainEvent value)? loadData,
    TResult Function(ErrorMainEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMainEvent extends MainEvent {
  const factory ErrorMainEvent(final String? error) = _$ErrorMainEventImpl;
  const ErrorMainEvent._() : super._();

  String? get error;

  /// Create a copy of MainEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMainEventImplCopyWith<_$ErrorMainEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainData data) loaded,
    required TResult Function(String? error) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainData data)? loaded,
    TResult? Function(String? error)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainData data)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(LoadedMainState value) loaded,
    required TResult Function(ErrorMainState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainState value)? initial,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(LoadedMainState value)? loaded,
    TResult? Function(ErrorMainState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(LoadedMainState value)? loaded,
    TResult Function(ErrorMainState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialMainStateImplCopyWith<$Res> {
  factory _$$InitialMainStateImplCopyWith(
    _$InitialMainStateImpl value,
    $Res Function(_$InitialMainStateImpl) then,
  ) = __$$InitialMainStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitialMainStateImpl>
    implements _$$InitialMainStateImplCopyWith<$Res> {
  __$$InitialMainStateImplCopyWithImpl(
    _$InitialMainStateImpl _value,
    $Res Function(_$InitialMainStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialMainStateImpl extends InitialMainState
    with DiagnosticableTreeMixin {
  const _$InitialMainStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialMainStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainData data)? loaded,
    TResult Function(String? error)? error,
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
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(LoadedMainState value) loaded,
    required TResult Function(ErrorMainState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainState value)? initial,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(LoadedMainState value)? loaded,
    TResult? Function(ErrorMainState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(LoadedMainState value)? loaded,
    TResult Function(ErrorMainState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialMainState extends MainState {
  const factory InitialMainState() = _$InitialMainStateImpl;
  const InitialMainState._() : super._();
}

/// @nodoc
abstract class _$$LoadingMainStateImplCopyWith<$Res> {
  factory _$$LoadingMainStateImplCopyWith(
    _$LoadingMainStateImpl value,
    $Res Function(_$LoadingMainStateImpl) then,
  ) = __$$LoadingMainStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$LoadingMainStateImpl>
    implements _$$LoadingMainStateImplCopyWith<$Res> {
  __$$LoadingMainStateImplCopyWithImpl(
    _$LoadingMainStateImpl _value,
    $Res Function(_$LoadingMainStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMainStateImpl extends LoadingMainState
    with DiagnosticableTreeMixin {
  const _$LoadingMainStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMainStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainData data)? loaded,
    TResult Function(String? error)? error,
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
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(LoadedMainState value) loaded,
    required TResult Function(ErrorMainState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainState value)? initial,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(LoadedMainState value)? loaded,
    TResult? Function(ErrorMainState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(LoadedMainState value)? loaded,
    TResult Function(ErrorMainState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMainState extends MainState {
  const factory LoadingMainState() = _$LoadingMainStateImpl;
  const LoadingMainState._() : super._();
}

/// @nodoc
abstract class _$$LoadedMainStateImplCopyWith<$Res> {
  factory _$$LoadedMainStateImplCopyWith(
    _$LoadedMainStateImpl value,
    $Res Function(_$LoadedMainStateImpl) then,
  ) = __$$LoadedMainStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainData data});

  $MainDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$LoadedMainStateImpl>
    implements _$$LoadedMainStateImplCopyWith<$Res> {
  __$$LoadedMainStateImplCopyWithImpl(
    _$LoadedMainStateImpl _value,
    $Res Function(_$LoadedMainStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null}) {
    return _then(
      _$LoadedMainStateImpl(
        null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                as MainData,
      ),
    );
  }

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainDataCopyWith<$Res> get data {
    return $MainDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedMainStateImpl extends LoadedMainState
    with DiagnosticableTreeMixin {
  const _$LoadedMainStateImpl(this.data) : super._();

  @override
  final MainData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.loaded(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState.loaded'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMainStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMainStateImplCopyWith<_$LoadedMainStateImpl> get copyWith =>
      __$$LoadedMainStateImplCopyWithImpl<_$LoadedMainStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainData data)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(LoadedMainState value) loaded,
    required TResult Function(ErrorMainState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainState value)? initial,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(LoadedMainState value)? loaded,
    TResult? Function(ErrorMainState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(LoadedMainState value)? loaded,
    TResult Function(ErrorMainState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedMainState extends MainState {
  const factory LoadedMainState(final MainData data) = _$LoadedMainStateImpl;
  const LoadedMainState._() : super._();

  MainData get data;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedMainStateImplCopyWith<_$LoadedMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMainStateImplCopyWith<$Res> {
  factory _$$ErrorMainStateImplCopyWith(
    _$ErrorMainStateImpl value,
    $Res Function(_$ErrorMainStateImpl) then,
  ) = __$$ErrorMainStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ErrorMainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$ErrorMainStateImpl>
    implements _$$ErrorMainStateImplCopyWith<$Res> {
  __$$ErrorMainStateImplCopyWithImpl(
    _$ErrorMainStateImpl _value,
    $Res Function(_$ErrorMainStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = freezed}) {
    return _then(
      _$ErrorMainStateImpl(
        freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                as String?,
      ),
    );
  }
}

/// @nodoc

class _$ErrorMainStateImpl extends ErrorMainState with DiagnosticableTreeMixin {
  const _$ErrorMainStateImpl(this.error) : super._();

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMainStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMainStateImplCopyWith<_$ErrorMainStateImpl> get copyWith =>
      __$$ErrorMainStateImplCopyWithImpl<_$ErrorMainStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MainData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MainData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MainData data)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialMainState value) initial,
    required TResult Function(LoadingMainState value) loading,
    required TResult Function(LoadedMainState value) loaded,
    required TResult Function(ErrorMainState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialMainState value)? initial,
    TResult? Function(LoadingMainState value)? loading,
    TResult? Function(LoadedMainState value)? loaded,
    TResult? Function(ErrorMainState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialMainState value)? initial,
    TResult Function(LoadingMainState value)? loading,
    TResult Function(LoadedMainState value)? loaded,
    TResult Function(ErrorMainState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMainState extends MainState {
  const factory ErrorMainState(final String? error) = _$ErrorMainStateImpl;
  const ErrorMainState._() : super._();

  String? get error;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMainStateImplCopyWith<_$ErrorMainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainData {
  List<MatchData> get matches => throw _privateConstructorUsedError;

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainDataCopyWith<MainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDataCopyWith<$Res> {
  factory $MainDataCopyWith(MainData value, $Res Function(MainData) then) =
      _$MainDataCopyWithImpl<$Res, MainData>;
  @useResult
  $Res call({List<MatchData> matches});
}

/// @nodoc
class _$MainDataCopyWithImpl<$Res, $Val extends MainData>
    implements $MainDataCopyWith<$Res> {
  _$MainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? matches = null}) {
    return _then(
      _value.copyWith(
            matches:
                null == matches
                    ? _value.matches
                    : matches // ignore: cast_nullable_to_non_nullable
                        as List<MatchData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MainDataImplCopyWith<$Res>
    implements $MainDataCopyWith<$Res> {
  factory _$$MainDataImplCopyWith(
    _$MainDataImpl value,
    $Res Function(_$MainDataImpl) then,
  ) = __$$MainDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MatchData> matches});
}

/// @nodoc
class __$$MainDataImplCopyWithImpl<$Res>
    extends _$MainDataCopyWithImpl<$Res, _$MainDataImpl>
    implements _$$MainDataImplCopyWith<$Res> {
  __$$MainDataImplCopyWithImpl(
    _$MainDataImpl _value,
    $Res Function(_$MainDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? matches = null}) {
    return _then(
      _$MainDataImpl(
        matches:
            null == matches
                ? _value._matches
                : matches // ignore: cast_nullable_to_non_nullable
                    as List<MatchData>,
      ),
    );
  }
}

/// @nodoc

class _$MainDataImpl with DiagnosticableTreeMixin implements _MainData {
  const _$MainDataImpl({final List<MatchData> matches = const []})
    : _matches = matches;

  final List<MatchData> _matches;
  @override
  @JsonKey()
  List<MatchData> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainData(matches: $matches)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainData'))
      ..add(DiagnosticsProperty('matches', matches));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDataImpl &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_matches));

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      __$$MainDataImplCopyWithImpl<_$MainDataImpl>(this, _$identity);
}

abstract class _MainData implements MainData {
  const factory _MainData({final List<MatchData> matches}) = _$MainDataImpl;

  @override
  List<MatchData> get matches;

  /// Create a copy of MainData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainDataImplCopyWith<_$MainDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
