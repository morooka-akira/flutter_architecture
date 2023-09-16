import 'package:flutter_architecture/src/application/usecases/get_all_languages_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'repository_providers.dart';

part 'use_case_providers.g.dart';

@Riverpod(keepAlive: true)
GetAllLanguagesUseCase getAllLanguagesUseCase(GetAllLanguagesUseCaseRef ref) {
  return GetAllLanguagesUseCase(
    repository: ref.read(programingLanguageRepositoryProvider),
  );
}
