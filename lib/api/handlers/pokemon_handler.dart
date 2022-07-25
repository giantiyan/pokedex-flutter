import 'dart:convert';
import 'package:dartx/dartx.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/api/models/pokemon_model.dart';
import 'package:pokedex/api/models/pokemon_type_model.dart';
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
      var typesList = <List<PokemonTypeModel>?>[]; // List<List<PokemonTypeModel>?> typesList = [];

      for (var i = 1; i <= data.length; i++) {
        final types = await getPokemonType(i);
        typesList.add(types);
      }

      final pokemonData = data
          .mapIndexed((index, pokemon) => PokemonModel(
                name: pokemon['name'],
                url: pokemon['url'],
                id: index + 1,
                types: typesList[index],
              ))
          .toList();

      return pokemonData;
    } else {
      return null;
    }
  }

  static Future<List<PokemonTypeModel>?> getPokemonType(int id) async {
    var response = http.Response('', 100);

    try {
      response = await http.get(Uri.tryParse('$pokemonURL/$id') ?? Uri());
    } catch (e) {
      print(e);
    }

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body)['types'];
      final typeData = data
          .mapIndexed((index, type) => PokemonTypeModel(
        name: type['type']['name'],
      ))
          .toList();

      return typeData;
    } else {
      print('Can\'t get Pokemon types. Error ${response.statusCode}');
      return [];
    }

  }
}
