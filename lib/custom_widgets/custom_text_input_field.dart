import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../colors/colors.dart';

// ignore: must_be_immutable
class CustomTextInputField extends StatelessWidget {
  final String ?hintText, text;
  final bool? obscureText, enabled;
  final Function? onChanged;
  final TextInputType? textInputType;
  final int? maxLength;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final Color? textColor;
  final String? error;
  final Function? onEditComplete;
  final List<TextInputFormatter>? textInputFormatter;
  final InputBorder? border;
  final Icon ?prefixIcon;
  final Icon? suffixIcon;

  double ?labelPadding;

  CustomTextInputField(
      { this.labelPadding,
      this.suffixIcon,
      this.prefixIcon,
      this.border,
      this.textInputFormatter,
      this.maxLength,
      this.onEditComplete,
      this.error,
      this.textColor,
      this.textInputAction,
      this.maxLines,
       this.text,
      required this.hintText,
      this.obscureText,
      this.onChanged,
      this.enabled,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(720, 1424),);
    if (labelPadding == null) {
      labelPadding = 1.0;
    }
    TextEditingController? _controller =
        text != null ? TextEditingController(text: text) : null;
    if (_controller != null) {
      _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
    }

    return Container(
      width: ScreenUtil().setWidth(600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: const Color(0xfff4f5f7),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.04,
        ),
        //obscureText: obscureText == null ? false : obscureText,
        maxLength: maxLength != null ? maxLength : null,
        enabled: enabled != null ? enabled : true,
        controller: _controller != null ? _controller : null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF4F5),
          counterText: '',
          hintStyle: TextStyle(
            fontFamily: 'HK Grotesk',
            fontSize: 14,
            color: const Color(0xff757575),
          ),
          labelStyle: TextStyle(
            fontFamily: 'HK Grotesk',
            fontSize: 15,
            color: const Color(0xff757575),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          errorText: error,
          enabledBorder: border,
          focusedBorder: border,
          labelText: hintText,
          contentPadding: EdgeInsets.all(0.0),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PassTextField extends StatefulWidget {
  final String ?hintText, text;
  final bool? obscureText, enabled;
  final Function? onChanged;
  final TextInputType? textInputType;
  final int? maxLength;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final Color? textColor;
  final String? error;
  final Function? onEditComplete;
  final List<TextInputFormatter>? textInputFormatter;
  final InputBorder? border;
  final Icon? prefixIcon;
  final Icon ?suffixIcon;
  double? labelPadding;

  PassTextField(
      {this.labelPadding,
      this.suffixIcon,
      this.prefixIcon,
      this.border,
      this.textInputFormatter,
      this.maxLength,
      this.onEditComplete,
      this.error,
      this.textColor,
      this.textInputAction,
      this.maxLines, this.text,
      this.obscureText,
      this.onChanged,
      this.enabled,
      this.textInputType, required this.hintText});

  @override
  _PassTextFieldState createState() => _PassTextFieldState();
}

class _PassTextFieldState extends State<PassTextField> {
  var passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.labelPadding == null) {
      widget.labelPadding = 1.0;
    }
    TextEditingController? _controller =
        widget.text != null ? TextEditingController(text: widget.text) : null;
    if (_controller != null) {
      _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
    }

    return Container(
      width: ScreenUtil().setWidth(600),
      decoration: BoxDecoration(
        color: lightGrey,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: TextField(
        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
        obscureText: passwordVisible,
        maxLength: widget.maxLength != null ? widget.maxLength : null,
        enabled: widget.enabled != null ? widget.enabled : true,
        controller: _controller != null ? _controller : null,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffF4F5),
          hintStyle: TextStyle(color: textFieldHintColor),
          labelStyle: TextStyle(
            fontFamily: 'HK Grotesk',
            fontSize: 16,
            color: const Color(0xff757575),
          ),
          counterText: '',
          prefixIcon: widget.prefixIcon,
          suffixIcon: GestureDetector(
              onTap: () {
                setState(
                  () {
                    passwordVisible = !passwordVisible;
                  },
                );
              },
              child: passwordVisible == null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                    )
                  : passwordVisible == true
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.grey,
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                        )),
          errorText: widget.error,
          enabledBorder: widget.border,
          focusedBorder: widget.border,
          labelText: widget.hintText,
          contentPadding: EdgeInsets.all(0.0),
        ),
      ),
    );
  }
}
