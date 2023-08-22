import 'package:flutter/material.dart';

class CustomHeight extends StatelessWidget {
  final double height;

  CustomHeight({required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
    );
  }
}
