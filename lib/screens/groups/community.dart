import 'package:flutter/material.dart';
import '../../custom_widgets/cus_community_container.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/recent_container.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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
                    RecentFirstContainer(
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
            CusCommunityContainer(),
            CusCommunityContainer(),
            CusCommunityContainer(),
          ],
        ),
      ),
    );
  }
}
