extension StringExt on String {
  String get capitalize =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  String get pokemonID => split('/')[6];
}
