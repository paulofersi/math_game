import 'package:flutter/material.dart';

import '../const.dart';

class MyButton extends StatelessWidget {
  final String child;
  var buttonColor = Colors.black;

  MyButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (child == 'C') {
      buttonColor = Colors.green;
    } else if (child == 'DEL') {
      buttonColor = Colors.red;
    } else if (child == '=') {
      buttonColor = Colors.deepOrange;
    }

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: buttonColor,
        ),
        child: Center(
          child: Text(
            child,
            style: whiteTextStyle,
          ),
        ),
      ),
    );
  }
}
