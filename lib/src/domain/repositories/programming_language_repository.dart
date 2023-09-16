import 'package:flutter_architecture/src/domain/entities/programming_language.dart';

abstract class ProgramingLanguageRepository {
  Future<List<ProgrammingLanguage>> fetchLanguages();
}
