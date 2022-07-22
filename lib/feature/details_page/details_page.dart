import 'package:flutter/material.dart';

import '../../api/models/pokemon_model.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    required this.pokemon,
  });

  final PokemonModel? pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
                height: 250,
                child: Image.network(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${pokemon?.url.toString().split('/')[6]}.png')),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
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
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            toBeginningOfSentenceCase(pokemon?.name).toString(),
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(),
                        DefaultTabController(
                          length: 4,
                          initialIndex: 0,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const TabBar(
                                labelColor: Colors.black,
                                labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                                tabs: <Widget>[
                                  Tab(
                                    text: 'About',
                                  ),
                                  Tab(
                                    text: 'Base Stats',
                                  ),
                                  Tab(
                                    text: 'Evolution',
                                  ),
                                  Tab(
                                    text: 'Moves',
                                  ),
                                ],
                              ),
                              Container(
                                height: 400,
                                padding: const EdgeInsets.only(top: 18),
                                child: TabBarView(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'info 1',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            'asd',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            '3',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.center,
                                          child: const Text(
                                            '4',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
