import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState({
    required int counter,
  }) = _ViewState;
}
