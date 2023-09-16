abstract interface class FutureUseCase<Input, Output> {
  Future<Output> invoke(Input input);
}
