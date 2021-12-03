import 'package:flutter/material.dart';


class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key? key,
    required this.press,
    required this.text,
    this.isFilled = true,
    this.textColor = Colors.blue,
  }) : super(key: key);

  final bool isFilled;
  final VoidCallback press;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white),
      ),
      elevation: isFilled ? 2 : 0,
      color: isFilled ? Colors.white : Colors.transparent,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? textColor : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
