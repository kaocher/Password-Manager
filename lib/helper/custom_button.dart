import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  double height;
  double width;
  String btnText;
  Color buttonColor;
  CustomButton({Key? key,
    required this.height,
    required this.width,
    required this.btnText,
    required this.buttonColor,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: widget.buttonColor,
      ),
      child: Center(
          child: Text(
            widget.btnText,
        style: TextStyle(color: Colors.white,
            fontSize: 18,fontWeight: FontWeight.bold),)),
    );
  }
}