import 'package:enum_class/enum_class.dart';
import 'package:flutter_test/flutter_test.dart';

class StringEnum extends Enum<String> {
  factory StringEnum(String rawValue) => Enum.factory(values, rawValue);
  const StringEnum._(String rawValue) : super(rawValue);

  static const a = StringEnum._("a");
  static const b = StringEnum._("b");
  static const values = [a,b];
}

void main() {
  final value = StringEnum("b");
  test("#1 Working with 'switch case' statement", () {
    int res = -1;
    switch(value) {
      case StringEnum.a:
        res = 0;
        break;

      case StringEnum.b:
        res = 1;
        break;

      default:
        res = 2;
    }

    expect(res, equals(1));
  });

  test("#2 Working with 'if' statement", () {
    int res = -1;
    if (value == StringEnum.b) res = 1;

    expect(res, equals(1));
  });

  test("#3 The case is out of box", () {
    final value = StringEnum("c");
    expect(value, isNull);
  });
}