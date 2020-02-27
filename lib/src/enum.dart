
abstract class Enum<R> {
  const Enum(this.rawValue);

  // The raw value, only String, bool, num will works
  final R rawValue;

  @override
  String toString() => super.toString()+"(${rawValue.toString()})";

  // Return an enum case that has a rawValue equals to 'rawValue'
  static factory(values, rawValue) {
    assert(values is List, "The 'values' should be a list of enum cases");
    assert(values.length > 0, "The 'values' is empty");

    // other cases: String, bool
    return values.firstWhere((o) => o.rawValue == rawValue, orElse: () => null);
  }
}