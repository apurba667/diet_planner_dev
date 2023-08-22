import 'package:flutter/material.dart';

class RecentContainer extends StatelessWidget {
  final String img;

  RecentContainer({required this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .065,
          width: MediaQuery.of(context).size.height * .065,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xff2051A4)),
            shape: BoxShape.circle,
            /*image: DecorationImage(
                  image: AssetImage(img)
              )*/
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(img),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.height * .01,
        )
      ],
    );
  }
}

class RecentFirstContainer extends StatelessWidget {
  final String img;

  RecentFirstContainer({required this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .065,
              width: MediaQuery.of(context).size.height * .065,
              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Color(0xff2051A4)),
                //shape: BoxShape.circle,
                /*image: DecorationImage(
                      image: AssetImage(img)
                  )*/
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(img),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      shape: BoxShape.circle,
                      color: Color(0xff2051A4)),
                  child: Icon(
                    Icons.add,
                    color: Color(0xffffffff),
                    size: 15,
                  )),
            )
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.height * .01,
        )
      ],
    );
  }
}
