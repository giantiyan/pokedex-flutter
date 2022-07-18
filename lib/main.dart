import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<http.Response> fetchPokemon() {
  return http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));
}
void main() {
  runApp(const MyApp());
}

class Pokemon {
  final String name;
  final String url;

  const Pokemon({
    required this.name,
    required this.url,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      url: json['url'],
    );
  }
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  Future<List<Pokemon>> fetchPokemon() async {
    final response = await http
        .get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));

    if (response.statusCode == 200) {
      final List pokemon = jsonDecode(response.body)["results"];
      return pokemon.map((e) => Pokemon.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load pokemon');
    }
  }

  late Future<List<Pokemon>> futurePokemon;

  @override
  void initState() {
    super.initState();
    futurePokemon = fetchPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<Pokemon>>(
        future: futurePokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 190,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(20),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [BoxShadow(
                            color: Colors.black26.withOpacity(0.2),
                            offset: const Offset(0.0,6.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.10,
                          )],
                        ),
                        child: Column(
                          children: [
                            Text(snapshot.data![index].name),
                            SizedBox(height: 15.0),
                            Container(
                                height: 80,
                                child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/' + snapshot.data![index].url.toString().split('/')[6] + '.png')),
                              ],
                        )
                    );
                  },
              ),
            );
          } else if (snapshot.hasError) {
            return Padding(
              padding: const EdgeInsets.all(18.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 190,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [BoxShadow(
                            color: Colors.black26.withOpacity(0.2),
                            offset: const Offset(0.0,6.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.10,
                          )],

                      ),
                      child: Column(
                        children: [
                          Text('${snapshot.error}', textAlign: TextAlign.center,),
                          SizedBox(height: 15.0),
                          Container(
                            height: 80,
                              child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/' + snapshot.data![index].url.toString().split('/')[6] + '.png')),
                        ],
                      )
                  );
                },
              ),
            );

          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
