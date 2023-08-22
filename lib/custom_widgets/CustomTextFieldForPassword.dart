import 'package:flutter/material.dart';
import '../colors/colors.dart';




class PasswordFieldSignIn extends StatefulWidget {
  const PasswordFieldSignIn(
      {this.fieldKey,
      required this.hintText,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.onFieldSubmitted,
      this.controllername});

  final Key ?fieldKey;
  final String hintText;
  final String? labelText;
  final String ?helperText;
  final FormFieldSetter<String> ?onSaved;
  final FormFieldValidator<String> ?validator;
  final ValueChanged<String> ?onFieldSubmitted;
  final TextEditingController ?controllername;

  @override
  _PasswordFieldSignInState createState() => new _PasswordFieldSignInState();
}

class _PasswordFieldSignInState extends State<PasswordFieldSignIn> {
  // TextEditingController controllername = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      controller: widget.controllername,
      key: widget.fieldKey,
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: new InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        filled: true,
        fillColor: lightGrey,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: lightGrey, fontSize: 14),
        labelText: widget.labelText,
        labelStyle: TextStyle(color: lightGrey, fontSize: 16),
        helperText: widget.helperText,
        suffixIcon: new GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: new Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            color: lightGrey,
          ),
        ),
      ),
    );
  }
}
