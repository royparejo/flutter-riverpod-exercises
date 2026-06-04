import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/04_async_notifier/poke_async_provider.dart';

class AsyncNotifierScreen extends ConsumerWidget {
  const AsyncNotifierScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pokeName = ref.watch(namePokeProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Async Notifier'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            FlutterLogo(size: 70),
            SizedBox(height: 10),
            pokeName.when(
              data: (data) => Text(
                data,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              error: (_, __) => Text('No se pudo cargar el pokemon'),
              loading: () => CircularProgressIndicator(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(namePokeProvider.notifier).getPokemonName();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
