// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewState {
  int get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewStateCopyWith<ViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStateCopyWith<$Res> {
  factory $ViewStateCopyWith(ViewState value, $Res Function(ViewState) then) =
      _$ViewStateCopyWithImpl<$Res, ViewState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$ViewStateCopyWithImpl<$Res, $Val extends ViewState>
    implements $ViewStateCopyWith<$Res> {
  _$ViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewStateCopyWith<$Res> implements $ViewStateCopyWith<$Res> {
  factory _$$_ViewStateCopyWith(
          _$_ViewState value, $Res Function(_$_ViewState) then) =
      __$$_ViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$_ViewStateCopyWithImpl<$Res>
    extends _$ViewStateCopyWithImpl<$Res, _$_ViewState>
    implements _$$_ViewStateCopyWith<$Res> {
  __$$_ViewStateCopyWithImpl(
      _$_ViewState _value, $Res Function(_$_ViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$_ViewState(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ViewState implements _ViewState {
  const _$_ViewState({required this.counter});

  @override
  final int counter;

  @override
  String toString() {
    return 'ViewState(counter: $counter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewState &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewStateCopyWith<_$_ViewState> get copyWith =>
      __$$_ViewStateCopyWithImpl<_$_ViewState>(this, _$identity);
}

abstract class _ViewState implements ViewState {
  const factory _ViewState({required final int counter}) = _$_ViewState;

  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$_ViewStateCopyWith<_$_ViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
