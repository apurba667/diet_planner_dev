import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/center_text_container.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/custom_width.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .23,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/Images/meal3.jpg"))),
                  ),
                  Row(
                    children: [
                      Text(
                        "Public Group",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .045,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "837 Members",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .03,
                        ),
                      ),
                      CustomWidth(
                        widths: .02,
                      )
                    ],
                  ),
                  Text(
                    "Veggie Lovers",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * .03,
                    ),
                  ),
                  CustomHeight(
                    height: .03,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: CenterTextContainer(
                      text: "Join This Group",
                      color: Colors.blueAccent,
                    ),
                  ),
                  CustomHeight(
                    height: .03,
                  ),
                  Text(
                    "About",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .045,
                        fontWeight: FontWeight.w600),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.4),
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Text(
                      "Lorem ipsum dolor sit amet, Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum.Stet clita kasd gubergren, no sea takimate sanctus est lorem ipsum dolor sit",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 13, color: Color(0xff415566)),
                    ),
                  ),
                  CustomHeight(
                    height: .03,
                  ),
                  Text(
                    "Group Admins",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .045,
                        fontWeight: FontWeight.w600),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.4),
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: pinkColor,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/Images/boy.jpg"))),
                          ),
                        ),
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
                                fontWeight: FontWeight.w500,
                                fontSize:
                                    MediaQuery.of(context).size.width * .05),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .007,
                          ),
                          Row(
                            children: [
                              Text(
                                "60 Posts",
                                style: TextStyle(color: Colors.grey),
                              ),
                              CustomWidth(
                                widths: .05,
                              ),
                              Text(
                                "Last Post: 2hrs",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomHeight(
                    height: .015,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/Images/boy3.jpg"))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Smith Ds",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:
                                    MediaQuery.of(context).size.width * .05),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .007,
                          ),
                          Row(
                            children: [
                              Text(
                                "60 Posts",
                                style: TextStyle(color: Colors.grey),
                              ),
                              CustomWidth(
                                widths: .05,
                              ),
                              Text(
                                "Last Post: 2hrs",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  CustomHeight(
                    height: .03,
                  ),
                  Text(
                    "Latest Posts",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .045,
                        fontWeight: FontWeight.w600),
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.4),
                    thickness: 1,
                  ),
                  CustomHeight(
                    height: .01,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/Images/boy.jpg"))),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .05),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * .01,
                                ),
                                Text(
                                  "2 hours ago",
                                  style: TextStyle(color: Colors.pink),
                                )
                              ],
                            ),
                            Spacer(),
                            Image.asset('assets/Images/addperson.png'),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "The state of Utah in the United State is home to\nlots of Beautiful National Parks...",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * .04,
                                  color: Color(0xff415566)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .23,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage("assets/Images/geen.png"))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .02,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: Image(
                                      image: new AssetImage(
                                          "assets/Icons/thump.png"),
                                      width: MediaQuery.of(context).size.width *
                                          .1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .1,
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .01,
                                  ),
                                  Text(
                                    "1125",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .04),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .05,
                                  ),
                                  Container(
                                    width: 17,
                                    height: 17,
                                    child: Image(
                                      image: new AssetImage(
                                          "assets/Icons/chat marron.png"),
                                      width: MediaQuery.of(context).size.width *
                                          .1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .1,
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .01,
                                  ),
                                  Text(
                                    " 340",
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                .04),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 17,
                                    height: 17,
                                    child: Image(
                                      image: new AssetImage(
                                          "assets/Icons/share.png"),
                                      width: MediaQuery.of(context).size.width *
                                          .1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .1,
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .05,
                                  ),
                                  Container(
                                    width: 17,
                                    height: 17,
                                    child: Image(
                                      image: new AssetImage(
                                          "assets/Icons/heart.png"),
                                      width: MediaQuery.of(context).size.width *
                                          .1,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .1,
                                      color: null,
                                      fit: BoxFit.scaleDown,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .02,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .06,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color:
                                                Colors.grey.withOpacity(0.1)),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: "Say something...",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey.shade400),
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .02,
                                    ),
                                    Text(
                                      "Send",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .04,
                                          color: Colors.pink),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "View All Posts",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
                        ),
                      ],
                    ),
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
