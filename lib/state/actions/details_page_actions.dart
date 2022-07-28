import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:pokedex/api/handlers/pokemon_handler.dart';
import 'package:pokedex/state/app_state.dart';

/// Get pokemon types and save it to the state
class GetPokemonTypesAction extends ReduxAction<AppState> {
  GetPokemonTypesAction(this.pokemonId);

  final int? pokemonId;

  @override
  Future<AppState> reduce() async {
    final types = await PokemonHandler.getPokemonType(pokemonId!);
    return state.copyWith(types: types);
  }
}

/// Get pokemon about details and save it to the state
class GetPokemonAboutAction extends ReduxAction<AppState> {
  GetPokemonAboutAction(this.pokemonId);

  final int? pokemonId;

  @override
  Future<AppState> reduce() async {
    final about = await PokemonHandler.getPokemonAbout(pokemonId!);
    return state.copyWith(about: about);
  }
}

/// Get pokemon base stats details and save it to the state
class GetPokemonBaseStatsAction extends ReduxAction<AppState> {
  GetPokemonBaseStatsAction(this.pokemonId);

  final int? pokemonId;

  @override
  Future<AppState?> reduce() async {
    final baseStats = await PokemonHandler.getPokemonBaseStats(pokemonId!);
    return state.copyWith(base_stats: baseStats);
  }
}

/// Get pokemon moves details and save it to the state
class GetPokemonMovesAction extends ReduxAction<AppState> {
  GetPokemonMovesAction(this.pokemonId);

  final int? pokemonId;

  @override
  Future<AppState?> reduce() async {
    final moves = await PokemonHandler.getPokemonMoves(pokemonId!);
    return state.copyWith(moves: moves);
  }
}


