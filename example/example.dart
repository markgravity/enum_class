import 'package:enum_class/enum_class.dart';

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

void main() {

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
}