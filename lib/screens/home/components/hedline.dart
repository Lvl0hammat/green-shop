import 'package:envio/constants.dart';
import 'package:envio/sz.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: kTitleTextStyle,
        ),
        Container(
          width: Sz.getWidth(100),
          height: Sz.getWidth(37),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: const Center(
            child: Text(
              'مشاهده همه ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 19,
                  fontFamily: 'vazir',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
            ),
          ),
        )
      ],
    );
  }
}
