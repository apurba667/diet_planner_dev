
import 'package:dietplanner/screens/group_tab/widget/community_image.dart';
import 'package:dietplanner/screens/group_tab/widget/reaction_widget.dart';
import 'package:flutter/material.dart';

class GroupCommunity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Recent Community Posts',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/Images/girl.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CommunityImage(),
                  SizedBox(
                    width: 10,
                  ),
                  CommunityImage(),
                  SizedBox(
                    width: 10,
                  ),
                  CommunityImage(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Divider(
                height: 2,
                thickness: 4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/boy.jpg"))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Jesica Doe",
                        style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 14,
                          color: const Color(0xff1d2a38),
                          letterSpacing: 0.26352939605712894,
                          fontWeight: FontWeight.w600,
                          height: 1.2857142857142858,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .002,
                      ),
                      Text(
                        "2 hours ago",
                        style: TextStyle(
                          color: Colors.pink,
                          fontFamily: 'HK Grotesk',
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.push_pin_rounded,
                    color: Color(0xff77C5B8),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                bottom: 5,
                top: 10,
              ),
              child: Text(
                'The state of Utah in the United States is home to lots of beautiful National Parks...',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xff415566),
                  letterSpacing: 0.25599998474121094,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * .23,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: new AssetImage("assets/Images/geen.png"),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: ReactionWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/Images/boy3.jpg"))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .01,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * .06,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey.withOpacity(0.15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Say something...",
                            hintStyle: TextStyle(
                                fontFamily: 'HK Grotesk', fontSize: 14),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  Text(
                    "Send",
                    style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * .04,
                        color: Colors.pink),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
