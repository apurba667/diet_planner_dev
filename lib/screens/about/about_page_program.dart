import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../colors/colors.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import '../../fonts/fonts.dart';

class AboutProgram extends StatefulWidget {
  static String route = "AboutProgram";

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<AboutProgram> {
  bool teamPressed = true;
  bool programPressed = false;
  bool isSingleTapped1 = false;

  bool missionPressed = false;
  bool faqPressed = false;

  final List<String> teamMembers = [
    'assets/Images/avtar.png',
    'assets/Images/avtar2.png',
  ];

  final List<String> teamMembers2 = [
    'assets/Images/avtar.png',
    'assets/Images/avtar.png',
  ];

  final List<String> iconImages = [
    "assets/Images/watch.png",
    "assets/Images/Image 3 (2).png",
    "assets/Images/Image3 .png",
    "assets/Images/Image 4.png"
  ];
  final List<String> iconImagesNames = [
    "Stop Counting Calories",
    "Easy and natural eating program",
    "A heart,mind and body approach",
    "A guided weight loss approach",
  ];
  final List<String> iconImagesDiscr = [
    "at the Diet Achiever program there is no calorie counting we do not track calorie, log meals ,weight wood  or  make you read nutrition labels .Instead, we offer in natural eating program designed to help you shift your body from a sugar burner to fat burner they also help you to build good habits to Lifestyle changes while emotionally supporting you to entire process",
    "On the Diet Achiever program there is no calorie counting we do not track calorie, log meals ,weight wood  or  make you read nutrition labels .Instead, we offer in natural eating program designed to help you shift your body from a sugar burner to fat burner they also help you to build good habits to Lifestyle changes while emotionally supporting you to entire process",
    "On the Diet Achiever program there is no calorie counting we do not track calorie, log meals ,weight wood  or  make you read nutrition labels .Instead, we offer in natural eating program designed to help you shift your body from a sugar burner to fat burner they also help you to build good habits to Lifestyle changes while emotionally supporting you to entire process",
    "On the Diet Achiever program there is no calorie counting we do not track calorie, log meals ,weight wood  or  make you read nutrition labels .Instead, we offer in natural eating program designed to help you shift your body from a sugar burner to fat burner they also help you to build good habits to Lifestyle changes while emotionally supporting you to entire process"
  ];
  List<String> faqques = [
    "Why is there a 7 day prep period before taking the diet fgf efberf er berf",
    "Why can't I just start the diet portion of this program immediately? I want to lose weight right now!",
    "I only have a few pounds to lose. Will this diet help me lose Vanity pounds?"
  ];
  List<bool> isTaped = [];
  List<Icon> arrowdire = [];

  int num = 1;

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < faqques.length; i++) {
      isTaped.add(false);
      arrowdire.add(Icon(Icons.keyboard_arrow_down));
    }
    print(isTaped);
    return Scaffold(
      appBar: CustomAppBar(
        leftIcon: Icons.menu,
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        mainText: "About",
      ),

      backgroundColor: Colors.white,
      body: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Column(
          children: [
            DecoratedTabBar(
              tabBar: TabBar(
                // isScrollable: true,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,

                tabs: [
                  Tab(
                    child: Text(
                      "About",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Program",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Mission",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Faq",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  /*Tab(
                    child: Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Community",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Members",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ),*/
                ],
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  funteampressed(),
                  funmissionpressed(),
                  funmissionpressed(),
                  faq(),
                  /*    Home(),
                  Community(),
                  Members()*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  faq(){
    return  SingleChildScrollView(
      child: Container(
        color: whiteColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    color: Color(0xffF7F7F7),
                    margin: EdgeInsets.only(left: 20, right: 10),
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: TextField(
                      decoration: InputDecoration(
                        hoverColor: Color(0xffF7F7F7),
                          labelText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.all(10.0)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.062,
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blueColor,
                    ),
                    child: (Center(
                        child: Text(
                          "Search",
                          style: TextStyle(color: whiteColor),
                        ))),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: faqques.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) =>
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height:
                              MediaQuery.of(context).size.height *
                                  0.05,
                              child: Row(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width: 25,
                                    height: 25,
                                    child: Center(
                                      child: Text("Q",
                                          style: TextStyle(
                                            fontFamily: Fonts_HK_Grotesk,fontSize: 11,
                                              color: whiteColor)),
                                    ),
                                    decoration: BoxDecoration(
                                      color: blueColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        0.7,
                                    child: Text(
                                      faqques[index],
                                      style: TextStyle(
                                          fontWeight: fontWeight,
                                          fontSize: 10),
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (isTaped[index] == true) {
                                            arrowdire[index] = Icon(Icons
                                                .keyboard_arrow_down);

                                            isTaped[index] = false;
                                          } else if (isTaped[index] ==
                                              false) {
                                            isTaped[index] = true;
                                            arrowdire[index] = Icon(
                                                Icons
                                                    .keyboard_arrow_up);
                                          }
                                        });
                                      },
                                      child: Container(
                                          child: arrowdire[index]))
                                ],
                              ),
                            ),
                            isTaped[index]
                                ? Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Text(
                                  iconImagesDiscr[0],
                                  style: TextStyle(
                                      height: 1.5,
                                      fontSize: 11),
                                ),
                                height: 120,
                                width: MediaQuery.of(context)
                                    .size
                                    .width,
                              ),
                            )
                                : Container()
                          ],
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
  funteampressed() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(0),
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 01,
                  ),
                  itemCount: teamMembers.length,
                  itemBuilder: (_, index) => Container(
                      color: index == 0
                          ? Colors.white
                          : index.isOdd
                              ? Color(0xffF5F2F2)
                              : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ClipOval(
                              child: Image.asset(
                                teamMembers[index],
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          Text(
                            "Member Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035),
                          ),
                          Text(
                            "Position",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ],
                      )))),
          Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 01,
                  ),
                  itemCount: teamMembers2.length,
                  itemBuilder: (_, index) => Container(
                      color: index.isEven ? Color(0xffF5F2F2) : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ClipOval(
                              child: Image.asset(
                                teamMembers2[index],
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          Text(
                            "Member Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.035),
                          ),
                          Text(
                            "Position",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ],
                      )))),
          Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 01,
                  ),
                  itemCount: teamMembers2.length,
                  itemBuilder: (_, index) => Container(
                      color: index.isOdd ? Color(0xffF5F2F2) : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ClipOval(
                              child: Image.asset(
                                teamMembers2[index],
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          Text(
                            "Member Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                MediaQuery.of(context).size.width * 0.035),
                          ),
                          Text(
                            "Position",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ],
                      )))),
          Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 01,
                  ),
                  itemCount: teamMembers2.length,
                  itemBuilder: (_, index) => Container(
                      color: index.isEven ? Color(0xffF5F2F2) : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ClipOval(
                              child: Image.asset(
                                teamMembers2[index],
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          Text(
                            "Member Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                MediaQuery.of(context).size.width * 0.035),
                          ),
                          Text(
                            "Position",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ],
                      )))),
          Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 01,
                  ),
                  itemCount: teamMembers2.length,
                  itemBuilder: (_, index) => Container(
                      color: index.isOdd ? Color(0xffF5F2F2) : Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ClipOval(
                              child: Image.asset(
                                teamMembers2[index],
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ),
                          ),
                          Text(
                            "Member Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize:
                                MediaQuery.of(context).size.width * 0.035),
                          ),
                          Text(
                            "Position",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.width * 0.025,
                            ),
                          ),
                        ],
                      )))),
        ],
      ),
    );
  }

  funprogrampressed() {
    return Container(
      color: whiteColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
              image: new AssetImage("assets/Images/program1.png"),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              color: null,
              fit: BoxFit.fill),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Color(0xffEEE0FF),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Our Program: The Basics",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: iconImages.length,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 5.0, bottom: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.55,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                              color: whiteColor),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Image(
                                  image: new AssetImage(iconImages[index]),
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  color: null,
                                  fit: BoxFit.fill),
                              Text(iconImagesNames[index],
                                  style: TextStyle(
                                      fontWeight: fontWeight,
                                      fontSize: 14,
                                      color: GreyColor)),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Text(iconImagesDiscr[index],
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey[500])),
                              )
                            ],
                          )),
                    ),
                  )),
        ],
      ),
    );
  }

  funmissionpressed() {
    return SingleChildScrollView(
      child: Container(
        color: whiteColor,
        height: MediaQuery.of(context).size.height * 1.2,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image(
                image: new AssetImage("assets/Images/program1.png"),
                width: MediaQuery.of(context).size.width,
                height: 170,
                color: null,
                fit: BoxFit.fill),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEEE0FF),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Our Mission, Vision",
                  style: TextStyle(
                    fontFamily: Fonts_HK_Grotesk,
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 20),
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Mission:",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: MediaQuery.of(context).size.width * 0.035)),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                        "We are a distinctive and aspirational community whom all share one thing in common: the desire to become the best version of ourselves. We inspire our followers to seek abundance through motivational strategies that we use to build confidence and ignite their internal fire to succeed. ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: Fonts_HK_Grotesk,
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * 0.028,
                            color: Colors.black)),
                  )
                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
              child: Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Vision:",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: MediaQuery.of(context).size.width * 0.035)),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                        "Through our signature 3-prong strategy, we utilize the power of the mind (through education), the body (through clean eating and movement) and the heart (through our inspirational messages) to navigate you to reach your goals. Through the process of reaching your health goals, your success will trickle in others area of your life. Diet Achiever is a mindset, one that BELIEVES you WILL ACHIEVE! ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: Fonts_HK_Grotesk,
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * 0.028,
                            color: Colors.black)),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  funfaqpressed(bool isSingleTapped1) {}
}

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  DecoratedTabBar({required this.tabBar, required this.decoration});

  final TabBar tabBar;
  final BoxDecoration decoration;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: Container(decoration: decoration)),
        tabBar,
      ],
    );
  }
}
