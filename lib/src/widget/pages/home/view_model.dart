import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'ui_state.dart';

part 'view_model.g.dart';

@riverpod
final class ViewModel extends _$ViewModel {
  @override
  UiState build() {
    return const UiState(
      counter: 0,
    );
  }

  void incrementCounter() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
