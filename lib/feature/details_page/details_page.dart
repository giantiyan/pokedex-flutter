import 'package:flutter/material.dart';

import 'package:pokedex/api/models/pokemon_model.dart';
import 'package:pokedex/feature/about_tab/about_tab_connector.dart';
import 'package:pokedex/feature/base_stats_tab/base_stats_connector.dart';
import 'package:pokedex/feature/home_page/widgets/type.dart';
import 'package:pokedex/feature/moves_tab/moves_tab_connector.dart';
import 'package:pokedex/utilities/extensions.dart';
import 'package:pokedex/utilities/string_constants.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    required this.pokemon,
  });

  final PokemonModel? pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pokemon?.types?[0].name.toString().pokemonColor,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      (pokemon?.name).toString().capitalize,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        (pokemon?.id).toString().formatID,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        ...?pokemon?.types?.map((type) => Type(type.name)),
                      ],
                    ),
                    Center(
                      child: Container(
                        height: 210,
                        margin: EdgeInsets.only(bottom: 20),
                        child: Image.network(
                            pokemon?.id.toString().pokemonImage ?? ''),
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26.withOpacity(0.2),
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 5.0,
                      spreadRadius: 0.10,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    DefaultTabController(
                      length: 4,
                      initialIndex: 0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TabBar(indicatorColor: Colors.orangeAccent,
                            labelColor: Colors.black,
                            labelPadding:
                                EdgeInsets.symmetric(horizontal: 10.0),
                            tabs: [
                              Tab(text: about),
                              Tab(text: baseStats),
                              Tab(text: evolution),
                              Tab(text: moves),
                            ],
                          ),
                          Container(
                            height: 265,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TabBarView(
                                children: [
                                  AboutTabConnector(pokemon?.id),
                                  BaseStatsTabConnector(pokemon?.id),
                                  SingleChildScrollView(
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Text('inf3'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  MovesTabConnector(pokemon?.id),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
