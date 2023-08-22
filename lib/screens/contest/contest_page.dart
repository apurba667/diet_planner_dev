import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../custom_widgets/customAppBar.dart';
import '../../custom_widgets/notification_bell.dart';


class ContestDetails extends StatefulWidget {
  static String route = "ContestDetails";

  @override
  _ContestDetailsState createState() => _ContestDetailsState();
}

class _ContestDetailsState extends State<ContestDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        mainText: 'Contests',
        rightIcon: NotificationBell(
          isNotify: true,
        ),
        leftIcon: Icons.menu,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Current Contests",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset('assets/Images/contest1.png'),
              SizedBox(
                height: 10,
              ),
              Image.asset('assets/Images/contest2.png'),
              SizedBox(
                height: 15,
              ),
              Text(
                "Expired Contests",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset('assets/Images/contest3.png'),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
