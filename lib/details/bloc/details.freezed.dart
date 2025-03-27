// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) loadData,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loadData,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loadData,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDetailsEvent value) initial,
    required TResult Function(LoadDetailsEvent value) loadData,
    required TResult Function(ErrorDetailsEvent value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsEvent value)? initial,
    TResult? Function(LoadDetailsEvent value)? loadData,
    TResult? Function(ErrorDetailsEvent value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsEvent value)? initial,
    TResult Function(LoadDetailsEvent value)? loadData,
    TResult Function(ErrorDetailsEvent value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res, DetailsEvent>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res, $Val extends DetailsEvent>
    implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialDetailsEventImplCopyWith<$Res> {
  factory _$$InitialDetailsEventImplCopyWith(_$InitialDetailsEventImpl value,
          $Res Function(_$InitialDetailsEventImpl) then) =
      __$$InitialDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialDetailsEventImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$InitialDetailsEventImpl>
    implements _$$InitialDetailsEventImplCopyWith<$Res> {
  __$$InitialDetailsEventImplCopyWithImpl(_$InitialDetailsEventImpl _value,
      $Res Function(_$InitialDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialDetailsEventImpl extends InitialDetailsEvent
    with DiagnosticableTreeMixin {
  const _$InitialDetailsEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DetailsEvent.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) loadData,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loadData,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loadData,
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
    required TResult Function(InitialDetailsEvent value) initial,
    required TResult Function(LoadDetailsEvent value) loadData,
    required TResult Function(ErrorDetailsEvent value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsEvent value)? initial,
    TResult? Function(LoadDetailsEvent value)? loadData,
    TResult? Function(ErrorDetailsEvent value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsEvent value)? initial,
    TResult Function(LoadDetailsEvent value)? loadData,
    TResult Function(ErrorDetailsEvent value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialDetailsEvent extends DetailsEvent {
  const factory InitialDetailsEvent() = _$InitialDetailsEventImpl;
  const InitialDetailsEvent._() : super._();
}

/// @nodoc
abstract class _$$LoadDetailsEventImplCopyWith<$Res> {
  factory _$$LoadDetailsEventImplCopyWith(_$LoadDetailsEventImpl value,
          $Res Function(_$LoadDetailsEventImpl) then) =
      __$$LoadDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$LoadDetailsEventImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$LoadDetailsEventImpl>
    implements _$$LoadDetailsEventImplCopyWith<$Res> {
  __$$LoadDetailsEventImplCopyWithImpl(_$LoadDetailsEventImpl _value,
      $Res Function(_$LoadDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadDetailsEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadDetailsEventImpl extends LoadDetailsEvent
    with DiagnosticableTreeMixin {
  const _$LoadDetailsEventImpl(this.id) : super._();

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsEvent.loadData(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsEvent.loadData'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDetailsEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDetailsEventImplCopyWith<_$LoadDetailsEventImpl> get copyWith =>
      __$$LoadDetailsEventImplCopyWithImpl<_$LoadDetailsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) loadData,
    required TResult Function(String? error) error,
  }) {
    return loadData(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loadData,
    TResult? Function(String? error)? error,
  }) {
    return loadData?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loadData,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDetailsEvent value) initial,
    required TResult Function(LoadDetailsEvent value) loadData,
    required TResult Function(ErrorDetailsEvent value) error,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsEvent value)? initial,
    TResult? Function(LoadDetailsEvent value)? loadData,
    TResult? Function(ErrorDetailsEvent value)? error,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsEvent value)? initial,
    TResult Function(LoadDetailsEvent value)? loadData,
    TResult Function(ErrorDetailsEvent value)? error,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class LoadDetailsEvent extends DetailsEvent {
  const factory LoadDetailsEvent(final String id) = _$LoadDetailsEventImpl;
  const LoadDetailsEvent._() : super._();

  String get id;

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDetailsEventImplCopyWith<_$LoadDetailsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDetailsEventImplCopyWith<$Res> {
  factory _$$ErrorDetailsEventImplCopyWith(_$ErrorDetailsEventImpl value,
          $Res Function(_$ErrorDetailsEventImpl) then) =
      __$$ErrorDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ErrorDetailsEventImplCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res, _$ErrorDetailsEventImpl>
    implements _$$ErrorDetailsEventImplCopyWith<$Res> {
  __$$ErrorDetailsEventImplCopyWithImpl(_$ErrorDetailsEventImpl _value,
      $Res Function(_$ErrorDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorDetailsEventImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorDetailsEventImpl extends ErrorDetailsEvent
    with DiagnosticableTreeMixin {
  const _$ErrorDetailsEventImpl(this.error) : super._();

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsEvent.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsEvent.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailsEventImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsEventImplCopyWith<_$ErrorDetailsEventImpl> get copyWith =>
      __$$ErrorDetailsEventImplCopyWithImpl<_$ErrorDetailsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) loadData,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loadData,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loadData,
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
    required TResult Function(InitialDetailsEvent value) initial,
    required TResult Function(LoadDetailsEvent value) loadData,
    required TResult Function(ErrorDetailsEvent value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsEvent value)? initial,
    TResult? Function(LoadDetailsEvent value)? loadData,
    TResult? Function(ErrorDetailsEvent value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsEvent value)? initial,
    TResult Function(LoadDetailsEvent value)? loadData,
    TResult Function(ErrorDetailsEvent value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetailsEvent extends DetailsEvent {
  const factory ErrorDetailsEvent(final String? error) =
      _$ErrorDetailsEventImpl;
  const ErrorDetailsEvent._() : super._();

  String? get error;

  /// Create a copy of DetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDetailsEventImplCopyWith<_$ErrorDetailsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(DetailsData data) loaded,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(DetailsData data)? loaded,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(DetailsData data)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDetailsState value) initial,
    required TResult Function(LoadingDetailsState value) loading,
    required TResult Function(EmptyDetailsState value) empty,
    required TResult Function(LoadedDetailsState value) loaded,
    required TResult Function(ErrorDetailsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsState value)? initial,
    TResult? Function(LoadingDetailsState value)? loading,
    TResult? Function(EmptyDetailsState value)? empty,
    TResult? Function(LoadedDetailsState value)? loaded,
    TResult? Function(ErrorDetailsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsState value)? initial,
    TResult Function(LoadingDetailsState value)? loading,
    TResult Function(EmptyDetailsState value)? empty,
    TResult Function(LoadedDetailsState value)? loaded,
    TResult Function(ErrorDetailsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialDetailsStateImplCopyWith<$Res> {
  factory _$$InitialDetailsStateImplCopyWith(_$InitialDetailsStateImpl value,
          $Res Function(_$InitialDetailsStateImpl) then) =
      __$$InitialDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialDetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$InitialDetailsStateImpl>
    implements _$$InitialDetailsStateImplCopyWith<$Res> {
  __$$InitialDetailsStateImplCopyWithImpl(_$InitialDetailsStateImpl _value,
      $Res Function(_$InitialDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialDetailsStateImpl extends InitialDetailsState
    with DiagnosticableTreeMixin {
  const _$InitialDetailsStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DetailsState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(DetailsData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(DetailsData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(DetailsData data)? loaded,
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
    required TResult Function(InitialDetailsState value) initial,
    required TResult Function(LoadingDetailsState value) loading,
    required TResult Function(EmptyDetailsState value) empty,
    required TResult Function(LoadedDetailsState value) loaded,
    required TResult Function(ErrorDetailsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsState value)? initial,
    TResult? Function(LoadingDetailsState value)? loading,
    TResult? Function(EmptyDetailsState value)? empty,
    TResult? Function(LoadedDetailsState value)? loaded,
    TResult? Function(ErrorDetailsState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsState value)? initial,
    TResult Function(LoadingDetailsState value)? loading,
    TResult Function(EmptyDetailsState value)? empty,
    TResult Function(LoadedDetailsState value)? loaded,
    TResult Function(ErrorDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialDetailsState extends DetailsState {
  const factory InitialDetailsState() = _$InitialDetailsStateImpl;
  const InitialDetailsState._() : super._();
}

/// @nodoc
abstract class _$$LoadingDetailsStateImplCopyWith<$Res> {
  factory _$$LoadingDetailsStateImplCopyWith(_$LoadingDetailsStateImpl value,
          $Res Function(_$LoadingDetailsStateImpl) then) =
      __$$LoadingDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$LoadingDetailsStateImpl>
    implements _$$LoadingDetailsStateImplCopyWith<$Res> {
  __$$LoadingDetailsStateImplCopyWithImpl(_$LoadingDetailsStateImpl _value,
      $Res Function(_$LoadingDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingDetailsStateImpl extends LoadingDetailsState
    with DiagnosticableTreeMixin {
  const _$LoadingDetailsStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DetailsState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(DetailsData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(DetailsData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(DetailsData data)? loaded,
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
    required TResult Function(InitialDetailsState value) initial,
    required TResult Function(LoadingDetailsState value) loading,
    required TResult Function(EmptyDetailsState value) empty,
    required TResult Function(LoadedDetailsState value) loaded,
    required TResult Function(ErrorDetailsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsState value)? initial,
    TResult? Function(LoadingDetailsState value)? loading,
    TResult? Function(EmptyDetailsState value)? empty,
    TResult? Function(LoadedDetailsState value)? loaded,
    TResult? Function(ErrorDetailsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsState value)? initial,
    TResult Function(LoadingDetailsState value)? loading,
    TResult Function(EmptyDetailsState value)? empty,
    TResult Function(LoadedDetailsState value)? loaded,
    TResult Function(ErrorDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingDetailsState extends DetailsState {
  const factory LoadingDetailsState() = _$LoadingDetailsStateImpl;
  const LoadingDetailsState._() : super._();
}

/// @nodoc
abstract class _$$EmptyDetailsStateImplCopyWith<$Res> {
  factory _$$EmptyDetailsStateImplCopyWith(_$EmptyDetailsStateImpl value,
          $Res Function(_$EmptyDetailsStateImpl) then) =
      __$$EmptyDetailsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyDetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$EmptyDetailsStateImpl>
    implements _$$EmptyDetailsStateImplCopyWith<$Res> {
  __$$EmptyDetailsStateImplCopyWithImpl(_$EmptyDetailsStateImpl _value,
      $Res Function(_$EmptyDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyDetailsStateImpl extends EmptyDetailsState
    with DiagnosticableTreeMixin {
  const _$EmptyDetailsStateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'DetailsState.empty'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyDetailsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(DetailsData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(DetailsData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(DetailsData data)? loaded,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDetailsState value) initial,
    required TResult Function(LoadingDetailsState value) loading,
    required TResult Function(EmptyDetailsState value) empty,
    required TResult Function(LoadedDetailsState value) loaded,
    required TResult Function(ErrorDetailsState value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsState value)? initial,
    TResult? Function(LoadingDetailsState value)? loading,
    TResult? Function(EmptyDetailsState value)? empty,
    TResult? Function(LoadedDetailsState value)? loaded,
    TResult? Function(ErrorDetailsState value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsState value)? initial,
    TResult Function(LoadingDetailsState value)? loading,
    TResult Function(EmptyDetailsState value)? empty,
    TResult Function(LoadedDetailsState value)? loaded,
    TResult Function(ErrorDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyDetailsState extends DetailsState {
  const factory EmptyDetailsState() = _$EmptyDetailsStateImpl;
  const EmptyDetailsState._() : super._();
}

/// @nodoc
abstract class _$$LoadedDetailsStateImplCopyWith<$Res> {
  factory _$$LoadedDetailsStateImplCopyWith(_$LoadedDetailsStateImpl value,
          $Res Function(_$LoadedDetailsStateImpl) then) =
      __$$LoadedDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailsData data});

  $DetailsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoadedDetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$LoadedDetailsStateImpl>
    implements _$$LoadedDetailsStateImplCopyWith<$Res> {
  __$$LoadedDetailsStateImplCopyWithImpl(_$LoadedDetailsStateImpl _value,
      $Res Function(_$LoadedDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedDetailsStateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailsData,
    ));
  }

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DetailsDataCopyWith<$Res> get data {
    return $DetailsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$LoadedDetailsStateImpl extends LoadedDetailsState
    with DiagnosticableTreeMixin {
  const _$LoadedDetailsStateImpl(this.data) : super._();

  @override
  final DetailsData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsState.loaded(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsState.loaded'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedDetailsStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDetailsStateImplCopyWith<_$LoadedDetailsStateImpl> get copyWith =>
      __$$LoadedDetailsStateImplCopyWithImpl<_$LoadedDetailsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(DetailsData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(DetailsData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(DetailsData data)? loaded,
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
    required TResult Function(InitialDetailsState value) initial,
    required TResult Function(LoadingDetailsState value) loading,
    required TResult Function(EmptyDetailsState value) empty,
    required TResult Function(LoadedDetailsState value) loaded,
    required TResult Function(ErrorDetailsState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsState value)? initial,
    TResult? Function(LoadingDetailsState value)? loading,
    TResult? Function(EmptyDetailsState value)? empty,
    TResult? Function(LoadedDetailsState value)? loaded,
    TResult? Function(ErrorDetailsState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsState value)? initial,
    TResult Function(LoadingDetailsState value)? loading,
    TResult Function(EmptyDetailsState value)? empty,
    TResult Function(LoadedDetailsState value)? loaded,
    TResult Function(ErrorDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedDetailsState extends DetailsState {
  const factory LoadedDetailsState(final DetailsData data) =
      _$LoadedDetailsStateImpl;
  const LoadedDetailsState._() : super._();

  DetailsData get data;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedDetailsStateImplCopyWith<_$LoadedDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDetailsStateImplCopyWith<$Res> {
  factory _$$ErrorDetailsStateImplCopyWith(_$ErrorDetailsStateImpl value,
          $Res Function(_$ErrorDetailsStateImpl) then) =
      __$$ErrorDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ErrorDetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$ErrorDetailsStateImpl>
    implements _$$ErrorDetailsStateImplCopyWith<$Res> {
  __$$ErrorDetailsStateImplCopyWithImpl(_$ErrorDetailsStateImpl _value,
      $Res Function(_$ErrorDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorDetailsStateImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorDetailsStateImpl extends ErrorDetailsState
    with DiagnosticableTreeMixin {
  const _$ErrorDetailsStateImpl(this.error) : super._();

  @override
  final String? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailsStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsStateImplCopyWith<_$ErrorDetailsStateImpl> get copyWith =>
      __$$ErrorDetailsStateImplCopyWithImpl<_$ErrorDetailsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(DetailsData data) loaded,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(DetailsData data)? loaded,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(DetailsData data)? loaded,
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
    required TResult Function(InitialDetailsState value) initial,
    required TResult Function(LoadingDetailsState value) loading,
    required TResult Function(EmptyDetailsState value) empty,
    required TResult Function(LoadedDetailsState value) loaded,
    required TResult Function(ErrorDetailsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialDetailsState value)? initial,
    TResult? Function(LoadingDetailsState value)? loading,
    TResult? Function(EmptyDetailsState value)? empty,
    TResult? Function(LoadedDetailsState value)? loaded,
    TResult? Function(ErrorDetailsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDetailsState value)? initial,
    TResult Function(LoadingDetailsState value)? loading,
    TResult Function(EmptyDetailsState value)? empty,
    TResult Function(LoadedDetailsState value)? loaded,
    TResult Function(ErrorDetailsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetailsState extends DetailsState {
  const factory ErrorDetailsState(final String? error) =
      _$ErrorDetailsStateImpl;
  const ErrorDetailsState._() : super._();

  String? get error;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDetailsStateImplCopyWith<_$ErrorDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsData {
  List<Event> get matches => throw _privateConstructorUsedError;

  /// Create a copy of DetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsDataCopyWith<DetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsDataCopyWith<$Res> {
  factory $DetailsDataCopyWith(
          DetailsData value, $Res Function(DetailsData) then) =
      _$DetailsDataCopyWithImpl<$Res, DetailsData>;
  @useResult
  $Res call({List<Event> matches});
}

/// @nodoc
class _$DetailsDataCopyWithImpl<$Res, $Val extends DetailsData>
    implements $DetailsDataCopyWith<$Res> {
  _$DetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
  }) {
    return _then(_value.copyWith(
      matches: null == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsDataImplCopyWith<$Res>
    implements $DetailsDataCopyWith<$Res> {
  factory _$$DetailsDataImplCopyWith(
          _$DetailsDataImpl value, $Res Function(_$DetailsDataImpl) then) =
      __$$DetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Event> matches});
}

/// @nodoc
class __$$DetailsDataImplCopyWithImpl<$Res>
    extends _$DetailsDataCopyWithImpl<$Res, _$DetailsDataImpl>
    implements _$$DetailsDataImplCopyWith<$Res> {
  __$$DetailsDataImplCopyWithImpl(
      _$DetailsDataImpl _value, $Res Function(_$DetailsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matches = null,
  }) {
    return _then(_$DetailsDataImpl(
      matches: null == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$DetailsDataImpl with DiagnosticableTreeMixin implements _DetailsData {
  const _$DetailsDataImpl({final List<Event> matches = const []})
      : _matches = matches;

  final List<Event> _matches;
  @override
  @JsonKey()
  List<Event> get matches {
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_matches);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailsData(matches: $matches)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailsData'))
      ..add(DiagnosticsProperty('matches', matches));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsDataImpl &&
            const DeepCollectionEquality().equals(other._matches, _matches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_matches));

  /// Create a copy of DetailsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsDataImplCopyWith<_$DetailsDataImpl> get copyWith =>
      __$$DetailsDataImplCopyWithImpl<_$DetailsDataImpl>(this, _$identity);
}

abstract class _DetailsData implements DetailsData {
  const factory _DetailsData({final List<Event> matches}) = _$DetailsDataImpl;

  @override
  List<Event> get matches;

  /// Create a copy of DetailsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsDataImplCopyWith<_$DetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
