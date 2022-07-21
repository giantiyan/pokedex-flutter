import 'dart:async';

import 'package:async_redux/async_redux.dart';

import '../../api/handlers/pokemon_handler.dart';
import '../app_state.dart';

class GetPokemonAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final pokemon = await PokemonHandler.getPokemon();
    return state.copyWith(pokemon: pokemon);
  }
}
