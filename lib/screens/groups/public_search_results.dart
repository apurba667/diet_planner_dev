import 'package:flutter/material.dart';
import '../../custom_widgets/cus_groups.dart';
import '../../custom_widgets/cus_text_form_field.dart';
import '../../custom_widgets/custom_height.dart';


class PublicSearch extends StatefulWidget {
  @override
  _PublicState createState() => _PublicState();
}

class _PublicState extends State<PublicSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [CustomHeight(
              height: .015,
            ),
              CusTextFormFieldSearchResult(
                text: "Veggie LOvers",
              ),
              CustomHeight(
                height: .03,
              ),
              Row(
                children: [
                  Text(
                    "Public Groups Open To Everyone",
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
                    "28 Results Found",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * .04),
                  )
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
