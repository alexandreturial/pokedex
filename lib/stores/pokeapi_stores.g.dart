// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStores on _PokeApiStoresBase, Store {
  final _$pokeAPIAtom = Atom(name: '_PokeApiStoresBase.pokeAPI');

  @override
  PokeAPI get pokeAPI {
    _$pokeAPIAtom.reportRead();
    return super.pokeAPI;
  }

  @override
  set pokeAPI(PokeAPI value) {
    _$pokeAPIAtom.reportWrite(value, super.pokeAPI, () {
      super.pokeAPI = value;
    });
  }

  final _$_PokeApiStoresBaseActionController =
      ActionController(name: '_PokeApiStoresBase');

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PokeApiStoresBaseActionController.startAction(
        name: '_PokeApiStoresBase.fetchPokemonList');
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokeApiStoresBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getPokemon({int index}) {
    final _$actionInfo = _$_PokeApiStoresBaseActionController.startAction(
        name: '_PokeApiStoresBase.getPokemon');
    try {
      return super.getPokemon(index: index);
    } finally {
      _$_PokeApiStoresBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_PokeApiStoresBaseActionController.startAction(
        name: '_PokeApiStoresBase.getImage');
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_PokeApiStoresBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokeAPI: ${pokeAPI}
    ''';
  }
}
