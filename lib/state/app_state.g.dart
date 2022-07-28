// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$$_AppStateFromJson(Map<String, dynamic> json) => _$_AppState(
      pokemon: (json['pokemon'] as List<dynamic>?)
          ?.map((e) => PokemonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      specificPokemon: json['specific_pokemon'] == null
          ? null
          : PokemonModel.fromJson(
              json['specific_pokemon'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) => PokemonTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      about: json['about'] == null
          ? null
          : PokemonAboutModel.fromJson(json['about'] as Map<String, dynamic>),
      base_stats: json['base_stats'] == null
          ? null
          : PokemonBaseStatsModel.fromJson(
              json['base_stats'] as Map<String, dynamic>),
      moves: json['moves'] == null
          ? null
          : PokemonMovesModel.fromJson(json['moves'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
      'specific_pokemon': instance.specificPokemon,
      'types': instance.types,
      'about': instance.about,
      'base_stats': instance.base_stats,
      'moves': instance.moves,
    };
