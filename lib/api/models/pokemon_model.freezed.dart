// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
class _$PokemonModelTearOff {
  const _$PokemonModelTearOff();

  _PokemonModel call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'url') String? url}) {
    return _PokemonModel(
      name: name,
      url: url,
    );
  }

  PokemonModel fromJson(Map<String, Object> json) {
    return PokemonModel.fromJson(json);
  }
}

/// @nodoc
const $PokemonModel = _$PokemonModelTearOff();

/// @nodoc
mixin _$PokemonModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res> implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  final PokemonModel _value;
  // ignore: unused_field
  final $Res Function(PokemonModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PokemonModelCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$PokemonModelCopyWith(
          _PokemonModel value, $Res Function(_PokemonModel) then) =
      __$PokemonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name, @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$PokemonModelCopyWithImpl<$Res> extends _$PokemonModelCopyWithImpl<$Res>
    implements _$PokemonModelCopyWith<$Res> {
  __$PokemonModelCopyWithImpl(
      _PokemonModel _value, $Res Function(_PokemonModel) _then)
      : super(_value, (v) => _then(v as _PokemonModel));

  @override
  _PokemonModel get _value => super._value as _PokemonModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_PokemonModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonModel implements _PokemonModel {
  _$_PokemonModel(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url});

  factory _$_PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'PokemonModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$PokemonModelCopyWith<_PokemonModel> get copyWith =>
      __$PokemonModelCopyWithImpl<_PokemonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonModelToJson(this);
  }
}

abstract class _PokemonModel implements PokemonModel {
  factory _PokemonModel(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'url') String? url}) = _$_PokemonModel;

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PokemonModelCopyWith<_PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
