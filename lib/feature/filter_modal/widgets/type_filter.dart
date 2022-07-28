import 'package:flutter/material.dart';
import 'package:pokedex/utilities/extensions.dart';

class TypeFilter extends StatelessWidget {
  const TypeFilter(this.typeName);

  final String? typeName;

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 80,
      height: 30,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: typeName?.pokemonColor,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: new Material(
        color: Colors.transparent,
        child: new InkWell(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          onTap: () {
            print('$typeName');
          },
          child: Align(
            alignment: Alignment.center,
            child: new Container(
              child: Text(
                typeName?.capitalize ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
