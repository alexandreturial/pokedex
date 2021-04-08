import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:poke_project/Components/AppBarHome.dart';
import 'package:poke_project/Components/Card.dart';
import 'package:poke_project/Consts/consts_app.dart';
import 'package:poke_project/Models/pokeapi.dart';
import 'package:poke_project/stores/pokeapi_stores.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PokeApiStores pokeApiStore;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pokeApiStore = PokeApiStores();
    pokeApiStore.fetchPokemonList();
  }

  @override
  Widget build(BuildContext context) {
   
    double screenWidth = MediaQuery.of(context).size.width;
    double screenPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            top: -(240 / 4.7),
            left: screenWidth - (240 / 1.6),
            child: Opacity(
              child:
                  Image.asset(ConstsApp.blackPokeBall, height: 240, width: 240),
              opacity: 0.1,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
              Container(
                height: screenPadding,
              ),
              AppBarHome(),
              Container(
                child: Expanded(
                  child: Container(
                    child: 
                    Observer(
                      builder: (BuildContext context) {
                        PokeAPI _pokeApi = pokeApiStore.pokeAPI;
                          return  (_pokeApi != null) ? 
                          AnimationLimiter(
                            child: GridView.builder(
                              physics: BouncingScrollPhysics(),
                              padding: EdgeInsets.all(12),
                              addAutomaticKeepAlives: true,
                              gridDelegate: 
                                new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2
                                ),
                              itemCount: _pokeApi.pokemon.length,
                              itemBuilder: (context, index){
                                Pokemon pokemon = pokeApiStore.getPokemon(index: index);
                                return AnimationConfiguration.staggeredGrid(
                                  position: index,
                                  duration: const Duration(milliseconds: 375),
                                  columnCount : 2,
                                  child: ScaleAnimation(
                                    child: GestureDetector(
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child:  CardPoke(
                                          name: pokemon.name,
                                          index: index,
                                          image: pokeApiStore.getImage(numero: pokemon.num),
                                          types: pokemon.type,
                                        ),
                                      ),
                                      onTap: (){
                                        print('detalhe');
                                      },
                                    ),
                                    
                                  )
                                );
                            }),
                          ) : 
                          Center(child: CircularProgressIndicator(),);
                      },
                    )
                  ),
                )
              )
            ],
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('oi');
        },
        child: Icon(Icons.menu),
      ),
    );
  }
}
