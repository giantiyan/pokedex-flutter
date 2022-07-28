import 'package:flutter/material.dart';
import 'package:pokedex/api/models/pokemon_moves_model.dart';
import 'package:pokedex/utilities/extensions.dart';

class MovesTab extends StatelessWidget {
  const MovesTab(this.moves);

  final PokemonMovesModel? moves;

  @override
  Widget build(BuildContext context) {
    return (moves != null)
        ? GridView.builder(
            padding: const EdgeInsets.all(18.0),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 3.5 / 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: moves?.name?.length,
            itemBuilder: (context, index) {
              return Align(
                alignment: Alignment.center,
                child: Text(
                  moves?.name?[index].toString().replaceDash.toTitleCase ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              );
            },
          )
        : Center(child: CircularProgressIndicator());
    // return Scrollbar(
    //   child: SingleChildScrollView(
    //     child: Wrap(
    //       children: moves?.name?.map((e) {
    //         return Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Text(e.capitalize.replaceDash),
    //       );
    //       }).toList() ?? [],
    //     ),
    //   ),
    // );
  }
}
