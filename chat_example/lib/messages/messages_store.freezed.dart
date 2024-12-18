// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessageEvent {
  GonEventData_onEvent_data__asChatMessageDBEventData_value get value =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)
        sent,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)
        deleted,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)
        updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessageSentEvent value) sent,
    required TResult Function(ChatMessageDeletedEvent value) deleted,
    required TResult Function(ChatMessageUpdatedEvent value) updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageSentEvent value)? sent,
    TResult? Function(ChatMessageDeletedEvent value)? deleted,
    TResult? Function(ChatMessageUpdatedEvent value)? updated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessageSentEvent value)? sent,
    TResult Function(ChatMessageDeletedEvent value)? deleted,
    TResult Function(ChatMessageUpdatedEvent value)? updated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEventCopyWith<$Res> {
  factory $ChatMessageEventCopyWith(
          ChatMessageEvent value, $Res Function(ChatMessageEvent) then) =
      _$ChatMessageEventCopyWithImpl<$Res, ChatMessageEvent>;
}

/// @nodoc
class _$ChatMessageEventCopyWithImpl<$Res, $Val extends ChatMessageEvent>
    implements $ChatMessageEventCopyWith<$Res> {
  _$ChatMessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatMessageSentEventImplCopyWith<$Res> {
  factory _$$ChatMessageSentEventImplCopyWith(_$ChatMessageSentEventImpl value,
          $Res Function(_$ChatMessageSentEventImpl) then) =
      __$$ChatMessageSentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
          value});
}

/// @nodoc
class __$$ChatMessageSentEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$ChatMessageSentEventImpl>
    implements _$$ChatMessageSentEventImplCopyWith<$Res> {
  __$$ChatMessageSentEventImplCopyWithImpl(_$ChatMessageSentEventImpl _value,
      $Res Function(_$ChatMessageSentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChatMessageSentEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent,
    ));
  }
}

/// @nodoc

class _$ChatMessageSentEventImpl
    with DiagnosticableTreeMixin
    implements ChatMessageSentEvent {
  const _$ChatMessageSentEventImpl(this.value);

  @override
  final GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
      value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageEvent.sent(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageEvent.sent'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageSentEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageSentEventImplCopyWith<_$ChatMessageSentEventImpl>
      get copyWith =>
          __$$ChatMessageSentEventImplCopyWithImpl<_$ChatMessageSentEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)
        sent,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)
        deleted,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)
        updated,
  }) {
    return sent(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
  }) {
    return sent?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessageSentEvent value) sent,
    required TResult Function(ChatMessageDeletedEvent value) deleted,
    required TResult Function(ChatMessageUpdatedEvent value) updated,
  }) {
    return sent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageSentEvent value)? sent,
    TResult? Function(ChatMessageDeletedEvent value)? deleted,
    TResult? Function(ChatMessageUpdatedEvent value)? updated,
  }) {
    return sent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessageSentEvent value)? sent,
    TResult Function(ChatMessageDeletedEvent value)? deleted,
    TResult Function(ChatMessageUpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (sent != null) {
      return sent(this);
    }
    return orElse();
  }
}

abstract class ChatMessageSentEvent implements ChatMessageEvent {
  const factory ChatMessageSentEvent(
      final GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
          value) = _$ChatMessageSentEventImpl;

  @override
  GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
      get value;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageSentEventImplCopyWith<_$ChatMessageSentEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMessageDeletedEventImplCopyWith<$Res> {
  factory _$$ChatMessageDeletedEventImplCopyWith(
          _$ChatMessageDeletedEventImpl value,
          $Res Function(_$ChatMessageDeletedEventImpl) then) =
      __$$ChatMessageDeletedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
          value});
}

/// @nodoc
class __$$ChatMessageDeletedEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$ChatMessageDeletedEventImpl>
    implements _$$ChatMessageDeletedEventImplCopyWith<$Res> {
  __$$ChatMessageDeletedEventImplCopyWithImpl(
      _$ChatMessageDeletedEventImpl _value,
      $Res Function(_$ChatMessageDeletedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChatMessageDeletedEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent,
    ));
  }
}

/// @nodoc

class _$ChatMessageDeletedEventImpl
    with DiagnosticableTreeMixin
    implements ChatMessageDeletedEvent {
  const _$ChatMessageDeletedEventImpl(this.value);

  @override
  final GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
      value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageEvent.deleted(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageEvent.deleted'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageDeletedEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageDeletedEventImplCopyWith<_$ChatMessageDeletedEventImpl>
      get copyWith => __$$ChatMessageDeletedEventImplCopyWithImpl<
          _$ChatMessageDeletedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)
        sent,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)
        deleted,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)
        updated,
  }) {
    return deleted(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
  }) {
    return deleted?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessageSentEvent value) sent,
    required TResult Function(ChatMessageDeletedEvent value) deleted,
    required TResult Function(ChatMessageUpdatedEvent value) updated,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageSentEvent value)? sent,
    TResult? Function(ChatMessageDeletedEvent value)? deleted,
    TResult? Function(ChatMessageUpdatedEvent value)? updated,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessageSentEvent value)? sent,
    TResult Function(ChatMessageDeletedEvent value)? deleted,
    TResult Function(ChatMessageUpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class ChatMessageDeletedEvent implements ChatMessageEvent {
  const factory ChatMessageDeletedEvent(
      final GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
          value) = _$ChatMessageDeletedEventImpl;

  @override
  GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
      get value;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageDeletedEventImplCopyWith<_$ChatMessageDeletedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatMessageUpdatedEventImplCopyWith<$Res> {
  factory _$$ChatMessageUpdatedEventImplCopyWith(
          _$ChatMessageUpdatedEventImpl value,
          $Res Function(_$ChatMessageUpdatedEventImpl) then) =
      __$$ChatMessageUpdatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
          value});
}

/// @nodoc
class __$$ChatMessageUpdatedEventImplCopyWithImpl<$Res>
    extends _$ChatMessageEventCopyWithImpl<$Res, _$ChatMessageUpdatedEventImpl>
    implements _$$ChatMessageUpdatedEventImplCopyWith<$Res> {
  __$$ChatMessageUpdatedEventImplCopyWithImpl(
      _$ChatMessageUpdatedEventImpl _value,
      $Res Function(_$ChatMessageUpdatedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChatMessageUpdatedEventImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent,
    ));
  }
}

/// @nodoc

class _$ChatMessageUpdatedEventImpl
    with DiagnosticableTreeMixin
    implements ChatMessageUpdatedEvent {
  const _$ChatMessageUpdatedEventImpl(this.value);

  @override
  final GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
      value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ChatMessageEvent.updated(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ChatMessageEvent.updated'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageUpdatedEventImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageUpdatedEventImplCopyWith<_$ChatMessageUpdatedEventImpl>
      get copyWith => __$$ChatMessageUpdatedEventImplCopyWithImpl<
          _$ChatMessageUpdatedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)
        sent,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)
        deleted,
    required TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)
        updated,
  }) {
    return updated(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult? Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
  }) {
    return updated?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageSentEvent
                value)?
        sent,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageDeletedEvent
                value)?
        deleted,
    TResult Function(
            GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
                value)?
        updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessageSentEvent value) sent,
    required TResult Function(ChatMessageDeletedEvent value) deleted,
    required TResult Function(ChatMessageUpdatedEvent value) updated,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatMessageSentEvent value)? sent,
    TResult? Function(ChatMessageDeletedEvent value)? deleted,
    TResult? Function(ChatMessageUpdatedEvent value)? updated,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessageSentEvent value)? sent,
    TResult Function(ChatMessageDeletedEvent value)? deleted,
    TResult Function(ChatMessageUpdatedEvent value)? updated,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class ChatMessageUpdatedEvent implements ChatMessageEvent {
  const factory ChatMessageUpdatedEvent(
      final GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
          value) = _$ChatMessageUpdatedEventImpl;

  @override
  GonEventData_onEvent_data__asChatMessageDBEventData_value__asChatMessageUpdatedEvent
      get value;

  /// Create a copy of ChatMessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageUpdatedEventImplCopyWith<_$ChatMessageUpdatedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
