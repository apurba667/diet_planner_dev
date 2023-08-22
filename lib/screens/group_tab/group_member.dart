
import 'package:dietplanner/screens/group_tab/widget/community_image.dart';
import 'package:flutter/material.dart';

class GroupMember extends StatelessWidget {
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
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '60 Members',
                  style: TextStyle(
                    fontFamily: 'HK Grotesk',
                    fontSize: 14,
                    color: const Color(0xff151624),
                    fontWeight: FontWeight.w700,
                    height: 1.7857142857142858,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                color: Color(0xffF7F7F7),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      hoverColor: Color(0xffF7F7F7),
                      labelText: "Search",
                      labelStyle: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: 15,
                          color: Color(0xffB3B3B3)),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffB3B3B3),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.all(10.0)),
                ),
              ),
            ),
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  return _memberList();
                }),
          ],
        ),
      ),
    );
  }

  Widget _memberList() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/Images/girl.jpg"),
            radius: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jessica Doe',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 13,
                  color: const Color(0xff151624),
                  fontWeight: FontWeight.w700,
                  height: 2.3846153846153846,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  Text(
                    '60 Posts',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 12,
                      color: const Color(0xffa5a5a5),
                      fontWeight: FontWeight.w300,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Last post: 2hrs',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 12,
                      color: const Color(0xffa5a5a5),
                      fontWeight: FontWeight.w300,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              )
            ],
          ),
          Spacer(),
          Container(
            height: 27,
            width: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xffaeaeae)),
            ),
            child: Center(
              child: Text(
                'Remove',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 10,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
