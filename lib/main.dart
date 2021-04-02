import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('poke'),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('oi');
          },
          child: Icon(Icons.museum_rounded),
        ),
      )
    );
  }
}


// 
