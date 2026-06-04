import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/helpers/name_generator.dart';
import 'package:riverpod_app/domain/conf_assist_enum.dart';
import 'package:riverpod_app/domain/developer.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

//** filter */
final filterProvider =
    NotifierProvider.autoDispose<FilterNotifier, ConfAssistEnum>(
      FilterNotifier.new,
    );

class FilterNotifier extends Notifier<ConfAssistEnum> {
  @override
  build() => ConfAssistEnum.all;

  void toggleFilter(Set<ConfAssistEnum> value) {
    state = value.first;
  }
}

//** list of developers */
final devListProvider =
    NotifierProvider.autoDispose<DevListNotifier, List<Developer>>(
      DevListNotifier.new,
    );

class DevListNotifier extends Notifier<List<Developer>> {
  @override
  build() => [
    Developer(
      id: uuid.v4(),
      name: NameGenerator.getRandomName(),
      attended: false,
    ),
  ];

  void toogleAttend(String id) {
    state = state.map((e) {
      if (e.id != id) return e;
      return e.copyWith(attended: !e.attended);
    }).toList();
  }

  void addDev() {
    state = [
      ...state,
      Developer(
        id: uuid.v4(),
        name: NameGenerator.getRandomName(),
        attended: false,
      ),
    ];
  }
}

//** list with filter */
final devsFilterProvider = Provider.autoDispose<List<Developer>>((ref) {
  final currentFilter = ref.watch(filterProvider);
  final devs = ref.watch(devListProvider);
  switch (currentFilter) {
    case ConfAssistEnum.all:
      return devs;
    case ConfAssistEnum.attended:
      return devs.where((e) => e.attended).toList();

    case ConfAssistEnum.absentee:
      return devs.where((e) => !e.attended).toList();
  }
});
