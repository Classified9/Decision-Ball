import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Center(child: Text('Ask Me Anything')),
        titleSpacing: 2.0,
      ),
     body: DiceApp(), 
    ),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  var decide = 1;

  @override
  Widget build(BuildContext context) {
    void mysta(){
      setState(() {
        decide = Random().nextInt(5) + 1;
      });
    }

    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  onPressed: (){
                    mysta();
                  },
                    child: Center(child: Image.asset('images/ball$decide.png'))
                ),
              )
          ),
        ],
      ),
    );
  }
}
