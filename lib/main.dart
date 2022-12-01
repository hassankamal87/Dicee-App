import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Dicee'),
      ),
      body: DicePage(),
    ),
  ));
}



class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSideNumber = 1;
  int rightSideNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                      changes();
                  });
                },
                child: Image.asset('images/dice$leftSideNumber.png'),
              )),
          Expanded(
            child: TextButton(
              onPressed: (){
                changes();
              },
              child: Image.asset('images/dice$rightSideNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void changes() {
    setState(() {
        leftSideNumber = Random().nextInt(6) + 1;
        rightSideNumber = Random().nextInt(6) + 1;
    });
  }
}





