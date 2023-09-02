import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
class UiState with _$UiState {
  const factory UiState({
    required int counter,
  }) = _UiState;
}
