import 'package:flutter/material.dart';

class CustomWidth extends StatefulWidget {
  final double widths;

  CustomWidth({required this.widths});

  @override
  _CustomWidthState createState() => _CustomWidthState();
}

class _CustomWidthState extends State<CustomWidth> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.widths,
    );
  }
}
