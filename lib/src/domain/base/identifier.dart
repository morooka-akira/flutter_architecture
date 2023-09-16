abstract class Identifier<T> {
  T get value;

  @override
  bool operator ==(Object other) =>
      identical(other, this) || (other is Identifier && other.value == value);

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;
}
