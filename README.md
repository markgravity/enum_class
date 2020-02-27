# Enum Class

![Coverage](https://raw.githubusercontent.com/markgravity/enum_class/master/coverage_badge.svg?sanitize=true) [![GitHub issues](https://img.shields.io/github/issues/markgravity/enum_class)](https://github.com/markgravity/enum_class/issues) [![GitHub stars](https://img.shields.io/github/stars/markgravity/enum_class)](https://github.com/markgravity/enum_class/stargazers) [![GitHub license](https://img.shields.io/github/license/markgravity/object_mapper)](https://github.com/markgravity/enum_class/blob/master/LICENSE)

------

A simple enum class with generic value type.

**Pros**

- No extras file (`*.g.dart`), no need to use `builder_runner`

**Cons**

* Require an extra static `values` variable  & `factory` function when you want to create a instance of enum.

## Implement

Extend your class with `Enum` class, the generic type can be `bool`, `num`, `string`

```dart
class GameType extends Enum<int> {
  // Add factory when you want to create from raw value
  factory GameType(int rawValue) => Enum.factory(values, rawValue);

  // Declare a private constructor,
  // so the new case can only create inside the class
  const GameType._(int rawValue) : super(rawValue);

  // Cases
  static const action = GameType._(0);
  static const sport = GameType._(1);
  static const arcade = GameType._(2);
  static const rpg = GameType._(3);

  // It is required when you declare a factory for this enum
  // Values
  static var values = [action, sport, arcade, rpg];
}
```



## Usage

Using completely normal as you use with `enum`

```dart
  // Create a case from raw value
  final theCase = GameType(0);
  print(theCase);

  // Using the same as enum does
  if (theCase == GameType.action) {
    print("It's 'Action'");
  }

  switch (theCase){
    case GameType.action:
      print("It's 'Action' again");
      break;

    case GameType.rpg:
      print("It will be never happend");
      break;

    default:
      print("It will be never happend");
  }
```