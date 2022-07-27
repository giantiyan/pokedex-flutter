import 'package:flutter/material.dart';
import 'package:pokedex/api/models/pokemon_about_model.dart';
import 'package:pokedex/feature/about_tab/widgets/about_information.dart';
import 'package:pokedex/utilities/extensions.dart';

class AboutTab extends StatelessWidget {
  const AboutTab(this.about);

  final PokemonAboutModel? about;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutInformation('Height', about?.height.toString().toHeight),
            AboutInformation('Weight', about?.weight.toString().toWeight),
            AboutInformation('Abilities', about?.abilities.toString().replaceBracket.replaceDash.capitalize),
            AboutInformation('Base Experience', about?.base_experience.toString().toBaseExp),
          ],
        ),
      ),
    );
  }
}
