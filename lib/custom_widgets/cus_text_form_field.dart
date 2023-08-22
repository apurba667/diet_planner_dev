import 'package:flutter/material.dart';
import '../custom_widgets/custom_width.dart';



class CusTextFormField extends StatelessWidget {

  final String text;
  final TextEditingController? controller;

  CusTextFormField({required this.text,this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.06,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey.withOpacity(0.2),
              width: 1
          )
      ),
      child: Row(
        children: [
          CustomWidth(widths: .03,),
          Icon(Icons.search,color: Colors.grey,),
          CustomWidth(widths: .03,),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class CusTextFormFieldCustom extends StatelessWidget {

  final String text;
  final TextEditingController ?controller;

  CusTextFormFieldCustom({required this.text, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.06,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey.withOpacity(0.5),
              width: 1
          )
      ),
      child: Row(
        children: [
          CustomWidth(widths: .03,),
          Icon(Icons.search,color: Colors.grey,),
          CustomWidth(widths: .03,),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: text,
                hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 14),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CusTextFormFieldSearchResult extends StatelessWidget {

  final String text;
  final TextEditingController ?controller;

  CusTextFormFieldSearchResult({required this.text, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.06,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.grey.withOpacity(0.2),
              width: 1
          )
      ),
      child: Row(
        children: [
          CustomWidth(widths: .03,),
          Icon(Icons.search,color: Colors.grey,),
          CustomWidth(widths: .03,),
          Expanded(
            child: TextFormField(
              controller: controller,
              initialValue: text,
              decoration: InputDecoration(
                //hintText: text,
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}