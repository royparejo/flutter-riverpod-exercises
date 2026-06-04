import 'package:go_router/go_router.dart';
import 'package:riverpod_app/presentation/screens/01_counter_notifier/counter_notifier_screen.dart';
import 'package:riverpod_app/presentation/screens/02_developers_notifier/developers_notifier_screen.dart';
import 'package:riverpod_app/presentation/screens/03_future_provider/future_provider_screen.dart';
import 'package:riverpod_app/presentation/screens/04_async_notifier/async_notifier_screen.dart';
import 'package:riverpod_app/presentation/screens/05_stream_provider/stream_provider_screen.dart';
import 'package:riverpod_app/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'counter_page',
          builder: (context, state) => const CounterNotifierScreen(),
        ),
        GoRoute(
          path: 'developers_page',
          builder: (context, state) => const DevelopersNotifierScreen(),
        ),
        GoRoute(
          path: 'poke_future_page',
          builder: (context, state) => const FutureProviderScreen(),
        ),
        GoRoute(
          path: 'poke_async_page',
          builder: (context, state) => const AsyncNotifierScreen(),
        ),
        GoRoute(
          path: 'names_stream_page',
          builder: (context, state) => const StreamProviderScreen(),
        ),
      ],
    ),
  ],
);
