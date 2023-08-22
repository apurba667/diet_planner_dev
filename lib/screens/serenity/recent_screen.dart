
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:video_player/video_player.dart';

import '../../constants/constants.dart';
import '../my_day/widget/mock_data.dart';

class Recent extends StatefulWidget {
  @override
  _RecentState createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.network(mockData["items"][3]["trailer_url"]),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                'How serenity will help you lose weight?',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 18,
                  color: const Color(0xfc3a3a3a),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Text(
                '00:30    -   1 week ago',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 12,
                  color: const Color(0xbf3a3a3a),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20, right: 10),
              child: Text(
                'Recently Added',
                style: TextStyle(
                  fontFamily: 'HK Grotesk',
                  fontSize: 18,
                  color: const Color(0xfc3a3a3a),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 2,
              childAspectRatio: 1,
              children: List.generate(10, (index) {
                return Column(
                  children: [
                    Container(
                      height: ScreenUtil().setHeight(320),
                      width: ScreenUtil().setWidth(342),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(MyImages.morning2),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 10, bottom: 5),
                        child: Column(
                          children: [
                            Spacer(),
                            Text(
                              "Deep Relaxing Sleep",
                              style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  fontSize: ScreenUtil().setSp(28),
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "00:30",
                                    style: TextStyle(
                                        fontFamily: 'HK Grotesk',
                                        fontSize: ScreenUtil().setSp(22),
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
