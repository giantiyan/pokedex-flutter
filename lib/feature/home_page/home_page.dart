import 'package:flutter/material.dart';

import '../../api/models/pokemon_model.dart';
import '../details_page/details_page.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

class HomePage extends StatelessWidget {
  const HomePage({
    this.pokemon,
  });

  final List<PokemonModel>? pokemon;

  // @override
  // void initState(){
  //   print("start");
  //
  // }

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
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: pokemon?.length,
        itemBuilder: (context, index) {
          var id = pokemon?[index].url.toString().split('/')[6];

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
                padding: const EdgeInsets.all(18),
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
                      toBeginningOfSentenceCase(pokemon?[index].name)
                          .toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text('type 1'),
                            SizedBox(
                              height: 8,
                            ),
                            Text('type 2'),
                          ],
                        ),
                        SizedBox(
                            height: 100,
                            child: Image.network(
                                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png')),
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
