import 'package:flutter/material.dart';
import '../custom_widgets/custom_width.dart';


class CusGroups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  //color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/Images/recipe.png"))),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .03,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Veggie LOvers",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * .032),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .007,
                ),
                Row(
                  children: [
                    Text(
                      "451 Members",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .028,
                          color: Colors.grey,
                      fontWeight: FontWeight.w300),
                    ),
                    CustomWidth(
                      widths: .05,
                    ),
                    Text(
                      "Last Post: 2hrs",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .028,
                          color: Colors.grey,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 62),
          child: Divider(
            color: Colors.grey.withOpacity(0.3),
            thickness: 1,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        )
      ],
    );
  }
}
