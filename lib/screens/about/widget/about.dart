import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  final List<String> teamMembers = [
    'assets/Images/boy.jpg',
    'assets/Images/boy2.jpg',
    'assets/Images/boy.jpg',
    'assets/Images/boy2.jpg',
    'assets/Images/boy.jpg',
    'assets/Images/boy2.jpg',
    'assets/Images/boy.jpg',
    'assets/Images/boy2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return  GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                6,
                (index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: (index % 2 != 0)
                          ? Colors.grey.shade200
                          : Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Member Name",
                          style: TextStyle(
                              fontFamily: 'HK Grotesk',
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Text(
                          "Position",
                          style: TextStyle(
                            fontFamily: 'HK Grotesk',
                            fontWeight: FontWeight.w600,
                            fontSize: MediaQuery.of(context).size.width * 0.03,
                            color: Color(0xffAEAEAE)
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );

  }
}
