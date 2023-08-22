
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChallengeScreenTopContainer extends StatelessWidget {
  final String title;
  final String summery;
  final String img;

  const ChallengeScreenTopContainer({Key key, required this.title, required this.summery, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return                   Container(
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            img,
            fit: BoxFit.contain,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      fontSize:
                      MediaQuery.of(context).size.width * 0.04),
                ),
                Spacer(),
                Text(
                  "0",
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey.shade400,
                  size: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              summery,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
