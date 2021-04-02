import 'package:flutter/material.dart';
import 'package:poke_project/Components/Card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Container(
        color: Colors.purple,
        child: Stack(
          children: [
            Column(children: [
              Expanded(child: Container(
                padding: EdgeInsets.all(50),
                child: Text(
                  'Gengar'
                ),
              )),
              Expanded(
                child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
              ))
            ]),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 100),
              child: Image.network(
                'https://assets.pokemon.com/assets/cms2/img/pokedex/full/094.png',
                height: 250,
                fit: BoxFit.cover,
              ))
          ],
        ),
      ),
    );
  }
}

//
// 
