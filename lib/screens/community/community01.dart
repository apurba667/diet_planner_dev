import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';


class Community01 extends StatefulWidget {
  static String route = "Community01";

  @override
  _Community01State createState() => _Community01State();
}

class _Community01State extends State<Community01> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          rightIcon: NotificationBell(
            isNotify: true,
          ),
          mainText: "Community",
          leftIcon: Icons.menu,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Trending",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Recent",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Following",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10, bottom: 0),
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
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  MediaQuery.of(context).size.width * .05),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        Text(
                          "2 hours ago",
                          style: TextStyle(color: Colors.pink),
                        )
                      ],
                    ),
                    Spacer(),
                    Image(
                      image: new AssetImage("assets/Icons/Post 01.png"),
                      width: MediaQuery.of(context).size.width * .1,
                      height: MediaQuery.of(context).size.height * .1,
                      color: null,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    ),
                  ],
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
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justoduo dolores et ea rebum.Stet clita kasd gubergren, no sea takimate sanctus est lorem ipsum dolor sit",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * .04),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          child: Image(
                            image: new AssetImage("assets/Icons/thump.png"),
                            width: MediaQuery.of(context).size.width * .1,
                            height: MediaQuery.of(context).size.height * .1,
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(
                          "1125",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * .04),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        Container(
                          width: 17,
                          height: 17,
                          child: Image(
                            image:
                                new AssetImage("assets/Icons/chat marron.png"),
                            width: MediaQuery.of(context).size.width * .1,
                            height: MediaQuery.of(context).size.height * .1,
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .01,
                        ),
                        Text(
                          "340",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * .04),
                        ),
                        Spacer(),
                        Container(
                          width: 17,
                          height: 17,
                          child: Image(
                            image: new AssetImage("assets/Icons/share.png"),
                            width: MediaQuery.of(context).size.width * .1,
                            height: MediaQuery.of(context).size.height * .1,
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .05,
                        ),
                        Container(
                          width: 17,
                          height: 17,
                          child: Image(
                            image: new AssetImage("assets/Icons/heart.png"),
                            width: MediaQuery.of(context).size.width * .1,
                            height: MediaQuery.of(context).size.height * .1,
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .03,
                    ),
                    Row(
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
                                color: Colors.grey.withOpacity(0.3)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Say something...",
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
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width * .04,
                              color: Colors.pink),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .04,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Images/boy3.jpg"))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * .11,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //Text("@interstitialcystitis01",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr\nsed diam nanumy  eirmod tempor invidunt ut labore et\ndolore magna aliquyam erat, sed diam voluptua. At vero\neos et accusam et accusam et justo duo dolores et ea\nrebum. Stet dita kasd.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .032,
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .003,
                              ),
                              Row(
                                children: [
                                  Text(
                                    " 2 hrs",
                                    style: TextStyle(color: Colors.grey),
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
                                          "assets/Icons/Like.png"),
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
                                  Text(
                                    " 5 Likes",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "+6 Replies  ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Images/boy2.jpg"))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * .11,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //Text("@interstitialcystitis01",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr\nsed diam nanumy  eirmod tempor invidunt ut labore et\ndolore magna aliquyam erat, sed diam voluptua. At vero\neos et accusam et accusam et justo duo dolores et ea\nrebum. Stet dita kasd.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .032,
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .003,
                              ),
                              Row(
                                children: [
                                  Text(
                                    " 5 hrs",
                                    style: TextStyle(color: Colors.grey),
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
                                          "assets/Icons/Like.png"),
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
                                  Text(
                                    " 8 Likes",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "+9 Replies  ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Images/boy3.jpg"))),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .02,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * .11,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //Text("@interstitialcystitis01",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr\nsed diam nanumy  eirmod tempor invidunt ut labore et\ndolore magna aliquyam erat, sed diam voluptua. At vero\neos et accusam et accusam et justo duo dolores et ea\nrebum. Stet dita kasd.",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .032,
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * .003,
                              ),
                              Row(
                                children: [
                                  Text(
                                    " 3 hrs",
                                    style: TextStyle(color: Colors.grey),
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
                                          "assets/Icons/Like.png"),
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
                                  Text(
                                    " 6 Likes",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "+4 Replies  ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
