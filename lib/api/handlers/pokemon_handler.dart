import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../utilities/constants.dart';
import '../models/pokemon_model.dart';

class PokemonHandler {
  static Future<List<PokemonModel>?> getPokemon() async {
    var response = http.Response('', 100);

    try {
      response = await http.get(Uri.tryParse(pokemonURL) ?? Uri());
    } catch (e) {
      print(e);
    }

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body)["results"];
      return data.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      print("Can't get hatdog. Status Code: ${response.statusCode}");
      return null;
    }
  }
}
