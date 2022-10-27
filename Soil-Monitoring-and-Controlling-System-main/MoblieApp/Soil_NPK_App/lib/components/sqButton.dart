// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:soil_npk_app/constants.dart';

class sqButton extends StatelessWidget {
  final String text;
  final VoidCallback? press;
  final Color color, textColor;
  const sqButton({
    Key? key,
    required this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.33,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: kPrimaryColor,
          onPressed: press,
          child: Text(
            text,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
