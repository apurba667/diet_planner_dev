
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/center_text_container.dart';
import '../../custom_widgets/custom_height.dart';
import '../../custom_widgets/custom_width.dart';
import 'groups_tabs_success.dart';

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  int group = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeight(
                height: .025,
              ),
              Text(
                "Group Name",
                style: TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .038),
              ),
              CustomHeight(
                height: .01,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .06,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300, width: 1)),
                child: Row(
                  children: [
                    CustomWidth(
                      widths: .03,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Group Name(70 Character max)",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.035),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomHeight(
                height: .02,
              ),
              Text(
                "Access",
                style: TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .04),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, bottom: 10),
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: group,
                      onChanged: (T) {
                        setState(() {
                          group = T!;
                        });
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Public",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * .025,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Anyone can join",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * .018),
                        ),
                      ],
                    ),
                    Radio(
                      value: 2,
                      groupValue: group,
                      onChanged: (T) {
                        setState(() {
                          group = T!;
                        });
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Private",
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * .025,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Require Password to join",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .018,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .040),
              ),
              CustomHeight(
                height: .01,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .06,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300, width: 1)),
                child: Row(
                  children: [
                    CustomWidth(
                      widths: .03,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "************",
                          hintStyle: TextStyle(color: Colors.grey),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomHeight(
                height: .02,
              ),
              Text(
                "Group Banner",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .04),
              ),
              Text(
                "(also becomes the group avatar)",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * .03),
              ),
              CustomHeight(
                height: .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .2,
                    width: MediaQuery.of(context).size.width * .7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/Images/group_banner.png"))),
                  ),
                ],
              ),
              CustomHeight(
                height: .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Image should be landscape and a min of 500 pixels wide.",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .03),
                  ),
                ],
              ),
              CustomHeight(
                height: .02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, right: 75),
                child: CenterTextContainer(
                  text: "Upload Banner",
                  color: Color(0xffC64385),
                ),
              ),
              CustomHeight(
                height: .02,
              ),
              Text(
                "Group Description",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.width * .044),
              ),
              CustomHeight(
                height: .01,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffB3B3B3), width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Please write a few sentences describing your group. (example: what is your group about, why people will want to join your group,etc.) Min 150 characters.",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * .025,
                              color: Color(0xffB3B3B3)),
                        )
                      ],
                    ),
                  )),
              CustomHeight(
                height: .02,
              ),
              InkWell(
                onTap: (){Get.to(GroupsTabsSuccess ());},
                child: CenterTextContainer(
                  color: Colors.blue,
                  text: "Create Group",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
