import 'package:flutter/material.dart';
import '../custom_widgets/custom_width.dart';

class UserRowRemove extends StatelessWidget {
  final String name;
  final String img;

  UserRowRemove({required this.name, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(img))),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .03,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .05),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .007,
              ),
              Row(
                children: [
                  Text(
                    "84 Posts",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .025),
                  ),
                  CustomWidth(
                    widths: .05,
                  ),
                  Text(
                    "Last Post: 08-02-2020",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .025),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.height * .05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 1)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Remove",
                  style: TextStyle(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
