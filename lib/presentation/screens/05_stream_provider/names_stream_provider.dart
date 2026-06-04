import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/helpers/name_generator.dart';

final namesProvider = StreamProvider.autoDispose<List<String>>((ref) async* {
  List<String> names = [];
  yield names;
  await for (var name in NameGenerator.randomNameStream()) {
    names = [...names, name];
    yield names;
  }
});
