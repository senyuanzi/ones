

extension ObjectEx on Object? {
  bool isNullOrEmpty() {
    if (this is String) {
      return (this as String).isEmpty;
    } else if (this is Iterable) {
      return (this as Iterable).isEmpty;
    }
    return this == null;
  }
}

extension BoolEx on bool {
  bool not() {
    return !this;
  }

  bool and(bool val) {
    return this && val;
  }

  bool or(bool val) {
    return this || val;
  }
}
