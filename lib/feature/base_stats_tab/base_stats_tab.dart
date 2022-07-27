import 'package:flutter/material.dart';
import 'package:pokedex/api/models/pokemon_base_stats_model.dart';
import 'package:pokedex/feature/base_stats_tab/widgets/base_stats_information.dart';
import 'package:pokedex/utilities/extensions.dart';

class BaseStatsTab extends StatelessWidget {
  BaseStatsTab(this.baseStats);

  final PokemonBaseStatsModel? baseStats;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BaseStatsInformation(baseStats?.name?[0].toString().toUpperCase(), baseStats?.base_stat?[0].toString()),
              BaseStatsInformation(baseStats?.name?[1].toString().capitalize, baseStats?.base_stat?[1].toString()),
              BaseStatsInformation(baseStats?.name?[2].toString().capitalize, baseStats?.base_stat?[2].toString()),
              BaseStatsInformation(baseStats?.name?[3].toString().capitalize.shortcut, baseStats?.base_stat?[3].toString()),
              BaseStatsInformation(baseStats?.name?[4].toString().capitalize.shortcut, baseStats?.base_stat?[4].toString()),
              BaseStatsInformation(baseStats?.name?[5].toString().capitalize, baseStats?.base_stat?[5].toString()),
            ],
          ),
        ),
      ),
    );
  }
}
