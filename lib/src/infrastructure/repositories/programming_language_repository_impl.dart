import 'package:flutter_architecture/src/domain/entities/programming_language.dart';
import 'package:flutter_architecture/src/domain/repositories/programming_language_repository.dart';

class ProgramingLanguageRepositoryImpl implements ProgramingLanguageRepository {
  @override
  Future<List<ProgrammingLanguage>> fetchLanguages() async {
    return [
      ProgrammingLanguage(id: ProgrammingLanguageId(1), name: "Java"),
      ProgrammingLanguage(id: ProgrammingLanguageId(2), name: "Python"),
      ProgrammingLanguage(id: ProgrammingLanguageId(3), name: "JavaScript"),
      ProgrammingLanguage(id: ProgrammingLanguageId(4), name: "C++"),
      ProgrammingLanguage(id: ProgrammingLanguageId(5), name: "C#"),
      ProgrammingLanguage(id: ProgrammingLanguageId(6), name: "Dart"),
      ProgrammingLanguage(id: ProgrammingLanguageId(7), name: "Ruby"),
      ProgrammingLanguage(id: ProgrammingLanguageId(8), name: "Swift"),
      ProgrammingLanguage(id: ProgrammingLanguageId(9), name: "TypeScript"),
      ProgrammingLanguage(id: ProgrammingLanguageId(10), name: "PHP"),
      ProgrammingLanguage(id: ProgrammingLanguageId(11), name: "Kotlin"),
      ProgrammingLanguage(id: ProgrammingLanguageId(12), name: "Go")
    ];
  }
}
