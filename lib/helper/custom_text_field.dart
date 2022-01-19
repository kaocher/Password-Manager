import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String hintText;
  String labelText;
  TextEditingController controller;
  bool obsecueVal;
  IconData icon;
  CustomTextField({Key? key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    required this.obsecueVal,



  required this.icon,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28,right: 28),
      child: TextFormField(


        obscureText: widget.obsecueVal,
        controller: widget.controller,

        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(

                ),
                borderRadius: BorderRadius.circular(15)
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(

            ),
            hintText: widget.hintText,
            border: OutlineInputBorder(
                borderSide: BorderSide(

                ),
                borderRadius: BorderRadius.circular(15)
            )
        ),
      ),
    );
  }
}