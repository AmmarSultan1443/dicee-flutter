import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;

    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: (){
                print('Left button just got pressed.');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              child: Image.asset('images/dice1.png'),
              onPressed: () {
                print('Right button was pressed.');
              },
            ),
          ),
        ],
      ),
    );
  }
}
