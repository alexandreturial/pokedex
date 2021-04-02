import 'package:flutter/material.dart';


class CardPoke extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        
        decoration: BoxDecoration(
          color: Colors.purple[400],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.18),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(4, 4), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Gengar', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.18),
                    borderRadius: BorderRadius.circular(50) 
                  ),
                  child: Text('fantasma', 
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.18),
                    borderRadius: BorderRadius.circular(50) 
                  ),
                  child: Text('venenoso', 
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                ),
              ],
            ),
            Expanded(
              child: Image.network(
                'https://assets.pokemon.com/assets/cms2/img/pokedex/full/094.png',
                
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
    );
  }
}