import 'package:flutter/material.dart';
import 'package:riverpod_app/presentation/widgets/custom_counter.dart';

class CounterNotifierScreen extends StatelessWidget {
  const CounterNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = false;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //
            },
            icon: Icon(
              isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: CustomCounter(
          count: 0,
          addCount: () {
            //
          },
        ),
      ),
    );
  }
}
