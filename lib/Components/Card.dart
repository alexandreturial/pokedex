import 'package:flutter/material.dart';
import 'package:poke_project/Consts/consts_app.dart';

class CardPoke extends StatelessWidget {
  final name;
  final index;
  final color;
  final Widget image;
  final List<String> types;

  CardPoke(
      {Key key, this.name = '', this.index, this.color, this.image, this.types})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(8,5, 5, 0),
        decoration: BoxDecoration(
            color: ConstsApp.getColorType(type: types[0]),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.18),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(4, 4), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Google')),
          ),
          Stack(
           
            children: [
              Column(
                children: [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        'fantasma',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ],
              ),
              Container(
                height: 80,
              
                child: Stack(children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Opacity(
                      child: Image.asset(ConstsApp.whitePokeBall),
                      opacity: 0.2,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: image,
                  )
                ]),
              ),
            ],
          )
        ]));
  }
}
