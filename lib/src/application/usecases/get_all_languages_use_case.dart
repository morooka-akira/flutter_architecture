import 'package:flutter_architecture/src/domain/entities/programming_language.dart';
import 'package:flutter_architecture/src/domain/repositories/programming_language_repository.dart';

import 'base/future_usecase.dart';

final class GetAllLanguagesUseCase implements FutureUseCase<void, List<ProgrammingLanguage>> {
  final ProgramingLanguageRepository _repository;
  GetAllLanguagesUseCase({
    required ProgramingLanguageRepository repository,
  }) : _repository = repository;

  @override
  Future<List<ProgrammingLanguage>> invoke(void input) {
    return _repository.fetchLanguages();
  }
}
