
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';
import 'group_community_screen.dart';
import 'group_home_screen.dart';
import 'group_member.dart';

class ViewGroup extends StatefulWidget {
  static String route = "ViewGroup";

  @override
  _ViewGroupState createState() => _ViewGroupState();
}

class _ViewGroupState extends State<ViewGroup> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return Scaffold(
      appBar: CustomAppBar(
        mainText: "Veggie Lovers",
        rightIcon: NotificationBell(
          isNotify: true,
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Community",
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Members",
                      style: TextStyle(
                        fontFamily: 'HK Grotesk',
                        fontSize: ScreenUtil().setSp(30),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GroupHome(),
                  //ThisWeek(),
                  GroupCommunity(),
                  GroupMember(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
