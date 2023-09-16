import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'view_state.dart';

part 'view_model.g.dart';

@riverpod
final class ViewModel extends _$ViewModel {
  @override
  ViewState build() {
    return const ViewState(
      counter: 0,
    );
  }

  void incrementCounter() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
