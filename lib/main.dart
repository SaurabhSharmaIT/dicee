import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red[300],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Center(child: Text('DICE ROLLING')),
      ),
      body:MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var left_dice=1;
  var right_dice=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              child:TextButton(
                  onPressed: (){

                    setState((){
                      left_dice=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice-six-faces-$left_dice.png',))
          ),
          Expanded(
              child:TextButton(
                  onPressed: (){
                    setState(() {
                      right_dice=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice-six-faces-$right_dice.png'))
          ),


        ],
      ),
    );
  }
}






