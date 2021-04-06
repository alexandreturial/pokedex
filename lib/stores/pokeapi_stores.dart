import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:poke_project/Consts/consts_api.dart';
import 'package:poke_project/Models/pokeapi.dart';
import 'package:http/http.dart' as http;
part 'pokeapi_stores.g.dart';

class PokeApiStores = _PokeApiStoresBase with _$PokeApiStores;

abstract class _PokeApiStoresBase with Store {
  

@observable
PokeAPI pokeAPI;



@action
fetchPokemonList(){
  pokeAPI = null;
  loadPokeAPI().then((pokeList){
    pokeAPI = pokeList;
  });
}


@action
getPokemon({int index}){
  return pokeAPI.pokemon[index];
}


@action
Widget getImage({String numero}){
  return CachedNetworkImage(
    placeholder: (context, url) => new Container(
      color: Colors.transparent,
    ),
    imageUrl: 
    'https://www.serebii.net/pokemongo/pokemon/${numero}.png'
  );
}


Future<PokeAPI> loadPokeAPI() async {
    try {
      final response = await http.get(ConstsApi.pokeApiURL);
      var decodeJson = jsonDecode(response.body);
      return PokeAPI.fromJson(decodeJson);
    } catch (error, stacktrace) {
      print("Erro ao carregar lista" + stacktrace.toString());
      return null;
    }
}




}