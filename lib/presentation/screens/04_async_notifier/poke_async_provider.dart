import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/helpers/pokemon_information.dart';

final namePokeProvider =
    AsyncNotifierProvider.autoDispose<NamePokeNotifier, String>(
      NamePokeNotifier.new,
    );

class NamePokeNotifier extends AsyncNotifier<String> {
  int currentId = 1;
  @override
  Future<String> build() {
    return PokemonInformation.getPokemonName(currentId);
  }

  Future<void> getPokemonName() async {
    state = AsyncLoading();
    currentId++;
    state = await AsyncValue.guard(
      () => PokemonInformation.getPokemonName(currentId),
    );
  }
}
