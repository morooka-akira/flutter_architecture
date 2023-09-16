import 'package:flutter_architecture/src/domain/repositories/programming_language_repository.dart';
import 'package:flutter_architecture/src/infrastructure/repositories/programming_language_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_providers.g.dart';

@Riverpod(keepAlive: true)
ProgramingLanguageRepository programingLanguageRepository(ProgramingLanguageRepositoryRef ref) {
  return ProgramingLanguageRepositoryImpl();
}
