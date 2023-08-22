import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSlider extends StatefulWidget {
  final List<String> imgList;

  const CustomSlider({ Key key, required this.imgList}) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424));
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vegetable Mango stir-fry',
                                  style: TextStyle(
                                      fontFamily: 'HK Grotesk',
                                      fontSize: ScreenUtil().setSp(35),
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.wb_sunny_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Lunch',
                                      style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(30),
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    SvgPicture.asset(
                                      "assets/iconsSvg/surface1.svg",
                                      height: 15,
                                      width: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Any plan',
                                      style: TextStyle(
                                          fontFamily: 'HK Grotesk',
                                          fontSize: ScreenUtil().setSp(30),
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return Column(children: [
      // CarouselSlider(
      //     options: CarouselOptions(),
      //     items: imageSliders.map((item) => Container(
      //       child: Center(
      //         child: Text(item.toString())
      //       ),
      //       color: Colors.green,
      //     )).toList(),
      //   ),
      CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            disableCenter: true,
            enlargeCenterPage: false,
            aspectRatio: 2.0,
            onPageChanged: (int index, reason) {
              setState(() {
                print(_current);
                print(index);

                _current = index;
                print(_current);
                print(index);
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.imgList.map((url) {
          int index = widget.imgList.indexOf(url);
          return Container(
            width: 8.0,
            height: 8.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _current == index
                  ? Colors.blue
                  : Color.fromRGBO(0, 0, 0, 0.4),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
