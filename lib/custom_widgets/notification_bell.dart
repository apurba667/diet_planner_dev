
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class NotificationBell extends StatelessWidget {
  final bool isNotify;

  NotificationBell({required this.isNotify});

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.green,
        child: Stack(
      children: [
        SvgPicture.asset(MyImages.bellIcon),
        Positioned(
          right: 2,
          top: 1,
          child: SizedBox(
              width: 7,
              height: 7,
              child: CircleAvatar(
                backgroundColor: (isNotify == null || isNotify == false)
                    ? Colors.transparent
                    : Colors.red,
                maxRadius: 100,
                minRadius: 100,
              )),
        )
      ],
    ));
  }
}
