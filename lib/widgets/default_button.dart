import 'package:envio/constants.dart';
import 'package:envio/sz.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.text,
      required this.press,
      required this.icon})
      : super(key: key);
  final double height;
  final double width;
  final String text;
  final GestureTapCallback press;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: width,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: Sz.getWidth(30),
            ),
            SizedBox(
              width: Sz.getWidth(10),
            ),
            Text(text,
                style: TextStyle(
                    fontSize: Sz.getWidth(20),
                    color: Colors.white,
                    fontFamily: 'shabnam'))
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), gradient: kGradientColors),
      ),
    );
  }
}
