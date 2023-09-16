mixin Entity<T> {
  T get id;

  @override
  bool operator ==(Object other) =>
      identical(other, this) || (other is Entity && other.id == id);

  @override
  int get hashCode => id.hashCode;
}
