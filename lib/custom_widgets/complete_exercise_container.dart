import 'package:flutter/material.dart';


class CompleteExercise extends StatelessWidget {

  final String img;
  CompleteExercise({required this.img});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*.48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Colors.grey.withOpacity(0.3)
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: MediaQuery.of(context).size.height*.20,
                  width: MediaQuery.of(context).size.width*.48,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(img),
                          fit: BoxFit.fill
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Container(
                              height: 22,
                              width: 22,
                              child: Image.asset('assets/Images/yes.png',),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text("Challenge Name",
                              style: TextStyle(
                                  fontFamily: 'HK Grotesk',
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.width*.034
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 5),
                child: Row(
                  children: [
                    Text("Completed: Week1",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                        color: Color(0xff151624),
                          fontSize: MediaQuery.of(context).size.width*.042
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 5),
                child: Row(
                  children: [
                    Text("Repeated: ",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          fontSize: MediaQuery.of(context).size.width*.042
                      ),
                    ),
                    Image.asset('assets/Images/yespink.png',width: 10,),
                    SizedBox(width: 4,),
                    Image.asset('assets/Images/yespink.png',width: 10,),
                    SizedBox(width: 4,),
                    Image.asset('assets/Images/yespink.png',width: 10,)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5,bottom: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width*.34,
                  height: MediaQuery.of(context).size.height*.044,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xff317EEE),
                  ),
                  child: Center(
                    child: Text(
                      "Repeat",
                      style: TextStyle(
                          fontFamily: 'HK Grotesk',
                          color: Colors.white,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height*.02,
        // )
      ],
    );
  }
}
