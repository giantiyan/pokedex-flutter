import 'package:flutter/material.dart';
import 'package:pokedex/utilities/constants.dart';
import 'package:intl/intl.dart';

extension StringExt on String {
  String get capitalize =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  String get pokemonImage {
    // return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$this.png';
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/$this.png';
  }

  Color get pokemonColor {
    var color = Colors.white;

    switch(this) {
      case 'fire': {  color = kFire; }
      break;
      case 'grass': {  color = kGrass; }
      break;
      case 'water': {  color = kWater; }
      break;
      case 'normal': {  color = kNormal; }
      break;
      case 'flying': {  color = kFlying; }
      break;
      case 'bug': {  color = kBug; }
      break;
      case 'poison': {  color = kPoison; }
      break;
      case 'ground': {  color = kGround; }
      break;
      case 'electric': {  color = kElectric; }
      break;
      case 'fighting': {  color = kFighting; }
      break;
      case 'psychic': {  color = kPsychic; }
      break;
      case 'rock': {  color = kRock; }
      break;
      case 'ice': {  color = kIce; }
      break;
      case 'ghost': {  color = kGhost; }
      break;
      case 'dragon': {  color = kDragon; }
      break;
      case 'dark': {  color = kDark; }
      break;
      case 'steel': {  color = kSteel; }
      break;
      case 'fairy': {  color = kFairy; }
      break;
      default: { color = Colors.white; }
      break;
    }

    return color;
  }

  String get formatID {
    var formatter = new NumberFormat('000');
    return '#${formatter.format(int.parse(this))}';
  }

  String get replaceBracket {
    return replaceAll('[', '').replaceAll(']', '');
  }

  String get replaceDash {
    return replaceAll('-', ' ');
  }

  String get toHeight {
    var convert = double.parse(this) / 10;
    return convert.toString() + ' m';
  }

  String get toWeight {
    var convert = double.parse(this) / 10;
    return convert.toString() + ' kg';
  }

  String get toBaseExp {
    return '$this xp';
  }

  String get shortcut {
    return replaceAll('Special', 'Sp').replaceAll('attack', 'Atk').replaceAll('defense', 'Def');
  }

  Color get baseStatsColor {
    var color;
    var value = double.parse(this) / 200;

    if (value < 0.25) {
      color = Color(0xfffa6e70);
    }
    else if (value < 0.5){
      color = Color(0xffbfab32);
    }
    else {
      color = Color(0xff51d0b1);
    }

    return color;

  }


}
