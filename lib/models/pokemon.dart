class Pokemon {
  final String name;
  final String url;
  // final List<Type> types;

  const Pokemon({
    required this.name,
    required this.url,
    // required this.types,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      url: json['url'],
    );
  }
}
