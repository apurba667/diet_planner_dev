
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../colors/colors.dart';
import '../../../constants/constants.dart';
import '../../food_item/food_item_pop_up.dart';


class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<String> gridImg = [
    'assets/iconsSvg/fruit.svg',
    'assets/iconsSvg/veg.svg',
    'assets/iconsSvg/protin.svg',
    'assets/iconsSvg/flex.svg',
    'assets/iconsSvg/herbs.svg',
    'assets/iconsSvg/bev.svg',
  ];

  List<String> gridText = [
    "FRUITS",
    "VEGGIES",
    "PROTIN",
    "FLEX",
    "HERBS",
    "BEVEREGES"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic ",
              style: TextStyle(fontFamily: 'HK Grotesk', fontWeight: FontWeight.w600,color: Color(0xff707070)),
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 20,
                  backgroundImage: AssetImage(MyImages.dummyPerson),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Coach Mandy",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff000000),
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    Text(
                      "DCN-C,FDN-R,CCN,CPT",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.width * 0.03),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xffEEE0FF)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Choose Your Category",
                style:
                    TextStyle(
                      fontFamily: 'HK Grotesk',
                      fontSize: 14,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700,
                      ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: List.generate(6, (index) {
                return InkWell(
                  onTap: (){Get.to(FoodItemPopUp());},
                  child: Container(
                    decoration: BoxDecoration(
                      color: (index % 2 == 0) ? Colors.grey.shade200 : whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          gridImg[index],
                          width: 48,
                          height: 48,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          gridText[index],
                          style: TextStyle(fontFamily: 'HK Grotesk',fontWeight: FontWeight.w600,fontSize: 14, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
