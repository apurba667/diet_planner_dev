import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widgets/cus_text_form_field.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/user_row_remove.dart';


class Followers extends StatefulWidget {
  static String route = "Followers";

  @override
  _FollowersState createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "17 Followers",
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
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
              UserRowRemove(
                name: "Dianna Smiley",
                img: "assets/Images/boy.jpg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
