import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/helpers/pokemon_information.dart';

final pokeNameProvider = FutureProvider.autoDispose<String>((ref) async {
  final currentPokemonId = ref.watch(pokemonIdProvider);
  final name = await PokemonInformation.getPokemonName(currentPokemonId);
  return name;
});

//** generate random pokemon id */

final pokemonIdProvider = NotifierProvider.autoDispose<IdNotifier, int>(
  IdNotifier.new,
);

class IdNotifier extends Notifier<int> {
  @override
  build() => 1;

  void increment() => state++;
}
