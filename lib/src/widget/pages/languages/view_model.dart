import 'package:flutter_architecture/src/di/use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'view_state.dart';

part 'view_model.g.dart';

@riverpod
final class ViewModel extends _$ViewModel {
  @override
  FutureOr<ViewState> build() async {
    final getAllLanguages = ref.read(getAllLanguagesUseCaseProvider);
    return ViewState(
      languages: await getAllLanguages.invoke(null),
    );
  }
}
