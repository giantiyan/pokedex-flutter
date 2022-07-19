import 'package:flutter/material.dart';
import 'models/Pokemon.dart';

class DetailsScreen extends StatefulWidget {
  final Pokemon pokemon;

  const DetailsScreen({Key? key, required this.pokemon,}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pokemon.name),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SizedBox(
            height: 300,
            child: Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${widget.pokemon.url.toString().split('/')[6]}.png'
            )
        ),
      ),
    );
  }
}
