import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:pokedex/api/handlers/pokemon_handler.dart';
import 'package:pokedex/state/app_state.dart';

class GetPokemonAboutAction extends ReduxAction<AppState> {
  GetPokemonAboutAction(this.pokemonID);

  final int? pokemonID;

  @override
  Future<AppState> reduce() async {
    final about = await PokemonHandler.getPokemonAbout(pokemonID!);
    return state.copyWith(about: about);
  }
}

class GetPokemonBaseStatsAction extends ReduxAction<AppState> {
  GetPokemonBaseStatsAction(this.pokemonID);

  final int? pokemonID;

  @override
  Future<AppState?> reduce() async {
    final baseStats = await PokemonHandler.getPokemonBaseStats(pokemonID!);
    return state.copyWith(base_stats: baseStats);
  }
}

class GetPokemonMovesAction extends ReduxAction<AppState> {
  GetPokemonMovesAction(this.pokemonID);

  final int? pokemonID;

  @override
  Future<AppState?> reduce() async {
    final moves = await PokemonHandler.getPokemonMoves(pokemonID!);
    return state.copyWith(moves: moves);
  }
}


