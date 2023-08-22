import 'package:flutter/material.dart';
import '../../custom_widgets/cus_text_form_field.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/recent_container.dart';
import '../../custom_widgets/user_row_remove.dart';


class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Recent Active Members",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .04),
                    ),
                  ],
                ),
                CustomHeight(
                  height: .02,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RecentContainer(
                      img: "assets/Images/girl.jpg",
                    ),
                    RecentContainer(
                      img: "assets/Images/boy.jpg",
                    ),
                    RecentContainer(
                      img: "assets/Images/boy3.jpg",
                    ),
                    RecentContainer(
                      img: "assets/Images/boy2.jpg",
                    ),
                    RecentContainer(
                      img: "assets/Images/girl.jpg",
                    ),
                  ],
                ),
                CustomHeight(
                  height: .02,
                )
              ],
            ),
            Divider(
              color: Colors.grey.withOpacity(0.3),
              thickness: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "60 Members",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .045,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  CustomHeight(
                    height: .015,
                  ),
                  CusTextFormField(
                    text: "Search",
                  ),
                  CustomHeight(
                    height: .02,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) => Container(
                      child: UserRowRemove(
                        name: "Dianna Smiley",
                        img: "assets/Images/boy.jpg",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
