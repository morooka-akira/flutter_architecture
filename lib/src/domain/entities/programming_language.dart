import 'package:flutter_architecture/src/domain/base/identifier.dart';

class ProgrammingLanguage {
  final ProgrammingLanguageId id;
  final String name;

  ProgrammingLanguage({
    required this.id,
    required this.name,
  });
}

class ProgrammingLanguageId extends Identifier<int> {
  @override
  final int value;

  ProgrammingLanguageId(this.value);
}
