// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {@JsonKey(name: 'pokemon') List<PokemonModel>? pokemon,
      @JsonKey(name: 'specific_pokemon') PokemonModel? specificPokemon,
      @JsonKey(name: 'types') List<PokemonTypeModel>? types,
      @JsonKey(name: 'about') PokemonAboutModel? about,
      @JsonKey(name: 'base_stats') PokemonBaseStatsModel? base_stats,
      @JsonKey(name: 'moves') PokemonMovesModel? moves}) {
    return _AppState(
      pokemon: pokemon,
      specificPokemon: specificPokemon,
      types: types,
      about: about,
      base_stats: base_stats,
      moves: moves,
    );
  }

  AppState fromJson(Map<String, Object> json) {
    return AppState.fromJson(json);
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @JsonKey(name: 'pokemon')
  List<PokemonModel>? get pokemon => throw _privateConstructorUsedError;
  @JsonKey(name: 'specific_pokemon')
  PokemonModel? get specificPokemon => throw _privateConstructorUsedError;
  @JsonKey(name: 'types')
  List<PokemonTypeModel>? get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'about')
  PokemonAboutModel? get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_stats')
  PokemonBaseStatsModel? get base_stats => throw _privateConstructorUsedError;
  @JsonKey(name: 'moves')
  PokemonMovesModel? get moves => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'pokemon') List<PokemonModel>? pokemon,
      @JsonKey(name: 'specific_pokemon') PokemonModel? specificPokemon,
      @JsonKey(name: 'types') List<PokemonTypeModel>? types,
      @JsonKey(name: 'about') PokemonAboutModel? about,
      @JsonKey(name: 'base_stats') PokemonBaseStatsModel? base_stats,
      @JsonKey(name: 'moves') PokemonMovesModel? moves});

  $PokemonModelCopyWith<$Res>? get specificPokemon;
  $PokemonAboutModelCopyWith<$Res>? get about;
  $PokemonBaseStatsModelCopyWith<$Res>? get base_stats;
  $PokemonMovesModelCopyWith<$Res>? get moves;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? pokemon = freezed,
    Object? specificPokemon = freezed,
    Object? types = freezed,
    Object? about = freezed,
    Object? base_stats = freezed,
    Object? moves = freezed,
  }) {
    return _then(_value.copyWith(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>?,
      specificPokemon: specificPokemon == freezed
          ? _value.specificPokemon
          : specificPokemon // ignore: cast_nullable_to_non_nullable
              as PokemonModel?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as PokemonAboutModel?,
      base_stats: base_stats == freezed
          ? _value.base_stats
          : base_stats // ignore: cast_nullable_to_non_nullable
              as PokemonBaseStatsModel?,
      moves: moves == freezed
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as PokemonMovesModel?,
    ));
  }

  @override
  $PokemonModelCopyWith<$Res>? get specificPokemon {
    if (_value.specificPokemon == null) {
      return null;
    }

    return $PokemonModelCopyWith<$Res>(_value.specificPokemon!, (value) {
      return _then(_value.copyWith(specificPokemon: value));
    });
  }

  @override
  $PokemonAboutModelCopyWith<$Res>? get about {
    if (_value.about == null) {
      return null;
    }

    return $PokemonAboutModelCopyWith<$Res>(_value.about!, (value) {
      return _then(_value.copyWith(about: value));
    });
  }

  @override
  $PokemonBaseStatsModelCopyWith<$Res>? get base_stats {
    if (_value.base_stats == null) {
      return null;
    }

    return $PokemonBaseStatsModelCopyWith<$Res>(_value.base_stats!, (value) {
      return _then(_value.copyWith(base_stats: value));
    });
  }

  @override
  $PokemonMovesModelCopyWith<$Res>? get moves {
    if (_value.moves == null) {
      return null;
    }

    return $PokemonMovesModelCopyWith<$Res>(_value.moves!, (value) {
      return _then(_value.copyWith(moves: value));
    });
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'pokemon') List<PokemonModel>? pokemon,
      @JsonKey(name: 'specific_pokemon') PokemonModel? specificPokemon,
      @JsonKey(name: 'types') List<PokemonTypeModel>? types,
      @JsonKey(name: 'about') PokemonAboutModel? about,
      @JsonKey(name: 'base_stats') PokemonBaseStatsModel? base_stats,
      @JsonKey(name: 'moves') PokemonMovesModel? moves});

  @override
  $PokemonModelCopyWith<$Res>? get specificPokemon;
  @override
  $PokemonAboutModelCopyWith<$Res>? get about;
  @override
  $PokemonBaseStatsModelCopyWith<$Res>? get base_stats;
  @override
  $PokemonMovesModelCopyWith<$Res>? get moves;
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? pokemon = freezed,
    Object? specificPokemon = freezed,
    Object? types = freezed,
    Object? about = freezed,
    Object? base_stats = freezed,
    Object? moves = freezed,
  }) {
    return _then(_AppState(
      pokemon: pokemon == freezed
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<PokemonModel>?,
      specificPokemon: specificPokemon == freezed
          ? _value.specificPokemon
          : specificPokemon // ignore: cast_nullable_to_non_nullable
              as PokemonModel?,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as PokemonAboutModel?,
      base_stats: base_stats == freezed
          ? _value.base_stats
          : base_stats // ignore: cast_nullable_to_non_nullable
              as PokemonBaseStatsModel?,
      moves: moves == freezed
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as PokemonMovesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppState implements _AppState {
  _$_AppState(
      {@JsonKey(name: 'pokemon') this.pokemon,
      @JsonKey(name: 'specific_pokemon') this.specificPokemon,
      @JsonKey(name: 'types') this.types,
      @JsonKey(name: 'about') this.about,
      @JsonKey(name: 'base_stats') this.base_stats,
      @JsonKey(name: 'moves') this.moves});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$$_AppStateFromJson(json);

  @override
  @JsonKey(name: 'pokemon')
  final List<PokemonModel>? pokemon;
  @override
  @JsonKey(name: 'specific_pokemon')
  final PokemonModel? specificPokemon;
  @override
  @JsonKey(name: 'types')
  final List<PokemonTypeModel>? types;
  @override
  @JsonKey(name: 'about')
  final PokemonAboutModel? about;
  @override
  @JsonKey(name: 'base_stats')
  final PokemonBaseStatsModel? base_stats;
  @override
  @JsonKey(name: 'moves')
  final PokemonMovesModel? moves;

  @override
  String toString() {
    return 'AppState(pokemon: $pokemon, specificPokemon: $specificPokemon, types: $types, about: $about, base_stats: $base_stats, moves: $moves)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.pokemon, pokemon) ||
                const DeepCollectionEquality()
                    .equals(other.pokemon, pokemon)) &&
            (identical(other.specificPokemon, specificPokemon) ||
                const DeepCollectionEquality()
                    .equals(other.specificPokemon, specificPokemon)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)) &&
            (identical(other.about, about) ||
                const DeepCollectionEquality().equals(other.about, about)) &&
            (identical(other.base_stats, base_stats) ||
                const DeepCollectionEquality()
                    .equals(other.base_stats, base_stats)) &&
            (identical(other.moves, moves) ||
                const DeepCollectionEquality().equals(other.moves, moves)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemon) ^
      const DeepCollectionEquality().hash(specificPokemon) ^
      const DeepCollectionEquality().hash(types) ^
      const DeepCollectionEquality().hash(about) ^
      const DeepCollectionEquality().hash(base_stats) ^
      const DeepCollectionEquality().hash(moves);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {@JsonKey(name: 'pokemon') List<PokemonModel>? pokemon,
      @JsonKey(name: 'specific_pokemon') PokemonModel? specificPokemon,
      @JsonKey(name: 'types') List<PokemonTypeModel>? types,
      @JsonKey(name: 'about') PokemonAboutModel? about,
      @JsonKey(name: 'base_stats') PokemonBaseStatsModel? base_stats,
      @JsonKey(name: 'moves') PokemonMovesModel? moves}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  @JsonKey(name: 'pokemon')
  List<PokemonModel>? get pokemon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'specific_pokemon')
  PokemonModel? get specificPokemon => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'types')
  List<PokemonTypeModel>? get types => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'about')
  PokemonAboutModel? get about => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'base_stats')
  PokemonBaseStatsModel? get base_stats => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'moves')
  PokemonMovesModel? get moves => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
