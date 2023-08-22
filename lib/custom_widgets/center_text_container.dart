import 'package:flutter/material.dart';

class CenterTextContainer extends StatelessWidget {

  final Color color;
  final String text;
  CenterTextContainer({required this.color,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * .035,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
