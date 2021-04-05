import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:poke_project/Api.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomeExaple()
    );
  }
}

class HomeExaple extends StatefulWidget {
  @override
  _HomeExapleState createState() => _HomeExapleState();
}

class _HomeExapleState extends State<HomeExaple> {
  List<Api> _api = List();
  bool visual = false;

  Future<List<Api>> _getUser() async{
    try {
      List<Api> listUsers = List();
      final response = await http.get(
        'https://jsonplaceholder.typicode.com/users'
      );
      if(response.statusCode == 200){
        var decodeJson = jsonDecode(response.body);
        decodeJson.forEach((item) => listUsers.add(Api.fromJson(item)));
        return listUsers;
      }else{
        print('Erro ao carregar lista');
        return null;
      }
    } catch (e) {
      print('Erro ao carregar lista');
      return null;
    }
  }
  @override
  void initState(){
    super.initState();
    _getUser().then((map){
      setState(() {
        _api = map;
        visual = true;
      });
     
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: 
          visual == false ? Container() :
          ListView.builder(
            itemCount: _api.length,
            itemBuilder: (context, index){
              return ListTile(
               title: Text('data')
              );
            },

        )),
    );
  }
}



// MaterialPageRoute(
//                         builder: (context) => ScoreScreen(
//                           totalQuestions: questionslist.length,
//                           result: score,

//                         )
//                       )