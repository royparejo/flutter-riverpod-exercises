import 'package:random_name_generator/random_name_generator.dart';

class NameGenerator {
  static String getRandomName() {
    final name = RandomNames(Zone.spain);
    return name.fullName();
  }

  static Stream<String> randomNameStream() {
    return Stream.periodic(
      Duration(seconds: 1),
      (_) => getRandomName(),
    ).take(10);
  }
}
