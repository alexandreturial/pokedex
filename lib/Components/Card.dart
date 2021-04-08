import 'package:flutter/material.dart';
import 'package:poke_project/Consts/consts_app.dart';

class CardPoke extends StatelessWidget {
  final name;
  final index;
  final color;
  final Widget image;
  final List<String> types;


 Widget setTipos() {
    List<Widget> lista = [];
    types.forEach((nome) {
      lista.add(
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Color.fromARGB(80, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                nome.trim(),
                style: TextStyle(
                    fontFamily: 'Google',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      );
    });

    
    return Column(
      children: lista,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }




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
                  setTipos()
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.2,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.bottomRight,      
                    child: Opacity(
                      child: Image.asset(ConstsApp.whitePokeBall,  height: MediaQuery.of(context).size.width * 0.2),
                      opacity: 0.15,
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
