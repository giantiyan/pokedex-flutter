import 'dart:convert';
import 'package:dartx/dartx.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/api/models/pokemon_model.dart';
import 'package:pokedex/utilities/constants.dart';

class PokemonHandler {
  static Future<List<PokemonModel>?> getPokemon() async {
    var response = http.Response('', 100);

    try {
      response = await http.get(Uri.tryParse(pokemonURL) ?? Uri());
    } catch (e) {
      print(e);
    }

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body)['results'];
      final pokemonData = data
          .mapIndexed((index, pokemon) => PokemonModel(
                name: pokemon['name'],
                url: pokemon['url'],
                id: index + 1,
              ))
          .toList();

      return pokemonData;
    } else {
      return null;
    }
  }


}
