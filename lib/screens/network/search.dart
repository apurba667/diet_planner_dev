import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widgets/cus_text_form_field.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/users_row_follow.dart';


class Search extends StatefulWidget {
  static String route = "Search";

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "28 Following",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  CustomHeight(
                    height: .02,
                  ),
                  CusTextFormField(
                    text: "Search",
                  ),
                  CustomHeight(
                    height: .02,
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy2.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy3.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy.jpg",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "View More...",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .05,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Suggested for you",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .04,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CustomHeight(
                    height: .02,
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy2.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy3.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy2.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy3.jpg",
                  ),
                  UserRowFollow(
                    name: "Dianna Smiley",
                    img: "assets/Images/boy2.jpg",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
