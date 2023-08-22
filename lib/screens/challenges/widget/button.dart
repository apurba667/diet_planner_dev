

import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String text;

  const Button({required Key key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Shishir")
      ],
    );
  }
}
