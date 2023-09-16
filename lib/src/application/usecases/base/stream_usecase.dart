abstract interface class StreamUseCase<Input, Output> {
  Stream<Output> invoke(Input input);
}
