import 'package:flutter/material.dart';
import 'package:poke_project/Components/Card.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokedex'),
          actions: [
           Icon(Icons.more_vert_rounded)
          ],
          
        ),
        body: GridView.count(
          childAspectRatio: (1000 / 800),
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
         
          children: <Widget>[
            CardPoke(),
            CardPoke(),
            CardPoke(),
            CardPoke(),
            CardPoke(),
            CardPoke(),
            CardPoke(),
            CardPoke(),
            CardPoke(),
            CardPoke(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('oi');
          },
          child: Icon(Icons.menu),
        ),
      );
  }
}