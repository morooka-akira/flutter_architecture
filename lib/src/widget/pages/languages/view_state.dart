import 'package:flutter_architecture/src/domain/entities/programming_language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState with _$ViewState {
  const factory ViewState({
    required List<ProgrammingLanguage> languages,
  }) = _ViewState;
}
