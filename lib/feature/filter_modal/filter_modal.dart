import 'package:flutter/material.dart';
import 'package:pokedex/feature/filter_modal/widgets/type_filter.dart';

class FilterModal extends StatelessWidget {
  const FilterModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff757575),
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25),
              ),
            ),
            child: Wrap(
              children: <Widget>[
                TypeFilter('fire'),
                TypeFilter('grass'),
                TypeFilter('water'),
                TypeFilter('normal'),
                TypeFilter('flying'),
                TypeFilter('bug'),
                TypeFilter('poison'),
                TypeFilter('ground'),
                TypeFilter('electric'),
                TypeFilter('fighting'),
                TypeFilter('psychic'),
                TypeFilter('rock'),
                TypeFilter('ice'),
                TypeFilter('ghost'),
                TypeFilter('dragon'),
                TypeFilter('dark'),
                TypeFilter('steel'),
                TypeFilter('fairy'),
              ],
            )));
  }
}
