import 'package:flutter/material.dart';
import 'package:math_game/const.dart';
import 'package:math_game/util/my_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> numberPad = [
    '7',
    '8',
    '9',
    'C',
    '4',
    '5',
    '6',
    'DEL',
    '1',
    '2',
    '3',
    '=',
    '0',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        children: [
          Container(
            height: 160,
            color: Colors.deepOrange,
          ),
          Expanded(
            child: Center(
              child: Text(
                '1+1 = ?',
                style: whiteTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: numberPad.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: ((context, index) {
                return MyButton(child: numberPad[index]);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
