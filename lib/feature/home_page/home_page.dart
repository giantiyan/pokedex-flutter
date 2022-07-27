import 'package:flutter/material.dart';

import 'package:pokedex/api/models/pokemon_model.dart';
import 'package:pokedex/feature/details_page/details_page.dart';
import 'package:pokedex/feature/home_page/widgets/type.dart';
import 'package:pokedex/utilities/extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    this.pokemon,
  });

  final List<PokemonModel>? pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokédex'),
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(45),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Row(children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search here',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onPressed: () async {},
                    ),
                  ])),
            )),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 190,
          childAspectRatio: 9/8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: pokemon?.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            pokemon: pokemon?[index],
                          )));
            },
            child: Container(
                padding: const EdgeInsets.all(12),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: pokemon?[index].types?[0].name.toString().pokemonColor,
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
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
                    Text(
                      pokemon?[index].name?.toString().capitalize ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        Column(
                          children: [
                            ...?pokemon?[index].types?.map((type) => Type(type.name)),
                            // for (var i = 0; i < int.parse(pokemon?[index].types?.length.toString() ?? ''); i++) ...[
                            //   Type(pokemon?[index].types?[i].name ?? ''),
                            //   SizedBox(
                            //     height: 8,
                            //   ),
                            // ],
                          ],
                        ),
                        Flexible(
                          child: SizedBox(
                              child: Image.network(
                                  pokemon?[index].id.toString().pokemonImage ??
                                      '')),
                        ),
                      ],
                    ),
                  ],
                )),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.red,
        child: const Icon(Icons.filter_list),
      ),
    );
  }
}
