import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/api/models/pokemon_model.dart';
import 'package:pokedex/feature/details_page/details_page.dart';
import 'package:pokedex/feature/details_page/details_page_vm.dart';
import 'package:pokedex/state/actions/details_page_actions.dart';
import 'package:pokedex/state/app_state.dart';

class DetailsPageConnector extends StatelessWidget {
  const DetailsPageConnector(this.specificPokemon);

  final PokemonModel? specificPokemon;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DetailsPageVm>(
      vm: () => DetailsPageVmFactory(),
      onInit: (store) async =>
          store.dispatch(GetPokemonTypesAction(specificPokemon?.id)),
      builder: (context, vm) => DetailsPage(
        specificPokemon: specificPokemon,
        types: vm.types,
      ),
    );
  }
}
