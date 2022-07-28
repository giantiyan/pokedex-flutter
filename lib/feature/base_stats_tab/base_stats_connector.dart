import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/feature/base_stats_tab/base_stats_tab.dart';
import 'package:pokedex/feature/base_stats_tab/base_stats_vm.dart';
import 'package:pokedex/state/actions/details_page_actions.dart';
import 'package:pokedex/state/app_state.dart';

class BaseStatsTabConnector extends StatelessWidget {
  const BaseStatsTabConnector(this.pokemonId);

  final int? pokemonId;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BaseStatsTabVm>(
      vm: () => BaseStatsTabVmFactory(),
      onInit: (vm) => vm.dispatch(GetPokemonBaseStatsAction(pokemonId)),
      builder: (context, vm) => BaseStatsTab(vm.baseStats),
    );
  }
}
