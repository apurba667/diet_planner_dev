import 'package:flutter/material.dart';
import '../../custom_widgets/cus_groups.dart';
import '../../custom_widgets/cus_text_form_field.dart';
import '../../custom_widgets/custom_height.dart';


class Private extends StatefulWidget {
  @override
  _PrivateState createState() => _PrivateState();
}

class _PrivateState extends State<Private> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              CusTextFormFieldCustom(
                text: "Search by Name or Group ID",
              ),
              CustomHeight(
                height: .02,
              ),
              Row(
                children: [
                  Text(
                    "Private Groups - Joining Requires Password",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .038, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              CustomHeight(
                height: .02,
              ),
              Row(
                children: [
                  Text(
                    "Groups",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * .048),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(0.3),
                thickness: 1,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Container(
                  child: CusGroups(),
                ),
              ),
              Text(
                "View More...",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: MediaQuery.of(context).size.width * 0.045,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
