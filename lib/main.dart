import 'package:flutter/material.dart';
import 'package:riverpod_app/config/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/01_counter_notifier/counter_notifier_provider.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDark = ref.watch(themeProvider);
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: appRouter,
      theme: isDark ? ThemeData.dark() : ThemeData.light(),
    );
  }
}
