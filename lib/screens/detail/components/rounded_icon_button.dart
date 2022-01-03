import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../sz.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: Sz.getWidth(50),
        height: Sz.getWidth(50),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: kCommentColor.withOpacity(.5),
                  spreadRadius: .5,
                  blurRadius: 5,
                  offset: const Offset(0, 4))
            ]),
        child: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
