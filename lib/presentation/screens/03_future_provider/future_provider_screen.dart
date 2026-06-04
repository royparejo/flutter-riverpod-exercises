import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/03_future_provider/poke_future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final pokeName = ref.watch(pokeNameProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Future Provider'), centerTitle: true),
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
          ref.read(pokemonIdProvider.notifier).increment();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
