import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/widgets/custom_counter.dart';

import 'counter_notifier_provider.dart';

class CounterNotifierScreen extends ConsumerWidget {
  const CounterNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDark = ref.watch(themeProvider);
    final counter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ref.read(themeProvider.notifier).toggle();
            },
            icon: Icon(
              isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: CustomCounter(
          count: counter,
          addCount: () {
            ref.read(counterProvider.notifier).increment();
          },
        ),
      ),
    );
  }
}
