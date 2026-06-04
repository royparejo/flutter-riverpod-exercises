import 'package:flutter_riverpod/flutter_riverpod.dart';

// final counterProvider = StateProvider<int>((ref) => 0);
final counterProvider = NotifierProvider.autoDispose<CounterNotifier, int>(
  CounterNotifier.new,
);

class CounterNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void increment() {
    state = state + 1;
  }
}

final themeProvider = NotifierProvider.autoDispose<ThemeNotifier, bool>(
  ThemeNotifier.new,
);

class ThemeNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  void toggle() => state = !state;
}
