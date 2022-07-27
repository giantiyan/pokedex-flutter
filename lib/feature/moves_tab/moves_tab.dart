import 'package:flutter/material.dart';
import 'package:pokedex/api/models/pokemon_moves_model.dart';
import 'package:pokedex/utilities/extensions.dart';

class MovesTab extends StatelessWidget {
  const MovesTab(this.moves);

  final PokemonMovesModel? moves;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: Wrap(
          children: moves?.name?.map((e) {
            return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(e.capitalize.replaceDash),
          );
          }).toList() ?? [],
        ),
      ),
    );
  }
}
