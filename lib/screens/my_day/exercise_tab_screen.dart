
import 'package:dietplanner/screens/my_day/widget/avater.dart';
import 'package:dietplanner/screens/my_day/widget/mock_data.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../constants/constants.dart';
import '../excercise/circuit_preview.dart';

class ExerciseTabScreen extends StatefulWidget {
  @override
  _ExerciseTabScreenState createState() => _ExerciseTabScreenState();
}

class _ExerciseTabScreenState extends State<ExerciseTabScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.network(mockData["items"][0]["trailer_url"]),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Text(
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no.",
              style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(28),
                  color: const Color(0xff707070),
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Avater(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: ScreenUtil().setHeight(60),
              decoration: BoxDecoration(
                color: const Color(0xffEEE0FF),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Week 2 Exercise Progress',
                    style: TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: ScreenUtil().setSp(28),
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: ScreenUtil().setSp(25),
                  color: const Color(0xff14adee),
                  height: 1.5,
                ),
                children: [
                  TextSpan(
                    text: '0',
                  ),
                  TextSpan(
                    text: ' of ',
                    style: TextStyle(
                      color: const Color(0xff707070),
                    ),
                  ),
                  TextSpan(
                    text: '3',
                  ),
                  TextSpan(
                    text: ' Completed',
                    style: TextStyle(
                      color: const Color(0xff707070),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              children: [
                InkWell(
                    onTap: (){Get.to(CircuitPreviewScreen());}, child: _circuit("Circuit #1", "NOT DONE")),
                Spacer(),
                _circuit("Circuit #2", "NOT DONE"),
                Spacer(),
                _circuit("Circuit #3", "NOT DONE"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          VisibilityDetector(
            key: ObjectKey(flickManager),
            onVisibilityChanged: (visibility) {
              if (visibility.visibleFraction == 0 && this.mounted) {
                flickManager.flickControlManager?.autoPause();
              } else if (visibility.visibleFraction == 1) {
                flickManager.flickControlManager?.autoResume();
              }
            },
            child: Container(

              child: FlickVideoPlayer(
                flickManager: flickManager,
                flickVideoWithControls: FlickVideoWithControls(
                  controls: FlickPortraitControls(),
                ),
                flickVideoWithControlsFullscreen: FlickVideoWithControls(
                  controls: FlickLandscapeControls(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // VisibilityDetector(
          //   key: ObjectKey(flickManager),
          //   onVisibilityChanged: (visibility) {
          //     if (visibility.visibleFraction == 0 && this.mounted) {
          //       flickManager.flickControlManager.autoPause();
          //     } else if (visibility.visibleFraction == 1) {
          //       flickManager.flickControlManager.autoResume();
          //     }
          //   },
          //   child: Container(
          //
          //     child: FlickVideoPlayer(
          //       flickManager: flickManager,
          //       flickVideoWithControls: FlickVideoWithControls(
          //         controls: FlickPortraitControls(),
          //       ),
          //       flickVideoWithControlsFullscreen: FlickVideoWithControls(
          //         controls: FlickLandscapeControls(),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // VisibilityDetector(
          //   key: ObjectKey(flickManager),
          //   onVisibilityChanged: (visibility) {
          //     if (visibility.visibleFraction == 0 && this.mounted) {
          //       flickManager.flickControlManager.autoPause();
          //     } else if (visibility.visibleFraction == 1) {
          //       flickManager.flickControlManager.autoResume();
          //     }
          //   },
          //   child: Container(
          //
          //     child: FlickVideoPlayer(
          //       flickManager: flickManager,
          //       flickVideoWithControls: FlickVideoWithControls(
          //         controls: FlickPortraitControls(),
          //       ),
          //       flickVideoWithControlsFullscreen: FlickVideoWithControls(
          //         controls: FlickLandscapeControls(),
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          //),
        ],
      ),
    );
  }

  Widget _circuit(String txt, String reslt) {
    return Container(
      height: ScreenUtil().setHeight(140),
      width: ScreenUtil().setWidth(210),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.0),
        color: const Color(0xffEAEAEA),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(MyImages.gym),
            Text(
              txt,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: const Color(0xff858585),
              ),
            ),
            Text(
              reslt,
              style: TextStyle(
                fontFamily: 'HK Grotesk',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: const Color(0xff858585),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
