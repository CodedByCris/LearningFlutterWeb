import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  const CustomFlatButton(
      {super.key,
      required this.text,
      this.color = Colors.pink,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        textStyle: TextStyle(color: color),
      ),
      onPressed: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text),
      ),
    );
  }
}
