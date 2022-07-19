import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/detailsScreen.dart';

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
      home: const MyHomePage(title: 'Pokédex'),
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
  final _formKey = GlobalKey<FormState>();

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
          centerTitle: true,
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(45),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction, key: _formKey,
                    child: Row (
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.search),
                                hintText: 'Search here',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    )
                                ),
                                filled: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.grey),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                              child: Text('Search', style: TextStyle(fontSize: 20, ),
                              ),
                            ),
                            onPressed: () async{
                            },
                          ),
                        ]
                    )),
              )
          ),
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder<List<Pokemon>>(
        future: futurePokemon,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Pokemon> pokemonList = snapshot.data!;

            return GridView.builder(
              padding: EdgeInsets.all(10.0),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 190,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => detailsScreen(pokemon: pokemonList[index],)));
                  },
                  child: Container(
                      padding: EdgeInsets.all(18),
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
                          offset: const Offset(0.0,0.0),
                          blurRadius: 5.0,
                          spreadRadius: 0.10,
                        )],
                      ),
                      child: Column(
                        children: [
                          Text(pokemonList[index].name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(height: 15.0),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text("type 1"),
                                  SizedBox(height: 8,),
                                  Text("type 2"),
                                ],
                              ),
                              Container(
                                  height: 100,
                                  child: Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/' + pokemonList[index].url.toString().split('/')[6] + '.png')
                              ),
                            ],
                          ),
                        ],
                      )
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return const CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.filter_list),
        backgroundColor: Colors.red,
      ),
    );
  }
}
