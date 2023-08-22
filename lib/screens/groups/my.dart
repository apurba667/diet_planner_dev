
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/cus_groups.dart';
import '../../custom_widgets/cus_text_form_field.dart';
import '../../custom_widgets/custom_height.dart';

class My extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CusTextFormFieldCustom(
                text: "Search by Group Name",
              ),
              CustomHeight(
                height: .03,
              ),
              Text(
                "Public Groups",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width * .038),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                thickness: 1,
              ),
              CustomHeight(
                height: .01,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Container(
                  child: InkWell(
                      onTap: (){Get.to(ViewGroup());},
                      child: CusGroups()
                  ),
                ),
              ),
              CustomHeight(
                height: .03,
              ),
              Text(
                "Private Groups",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width * .038),
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                thickness: 1,
              ),
              CustomHeight(
                height: .01,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Container(
                  child: CusGroups(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "View More...",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w300,
                        fontSize: MediaQuery.of(context).size.width * 0.045),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
