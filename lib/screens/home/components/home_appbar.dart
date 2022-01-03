import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../sz.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/bags.jpg'),
          radius: 33,
        ),
        Column(
          children: [
            SizedBox(height: Sz.getHeight(3)),
            const Text(
              'محمد آبیار',
              style: kTitleTextStyle,
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  size: 24,
                  color: kPrimaryColor,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'ایران , گچسارن',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 24,
                      fontFamily: 'shabnam'),
                ),
              ],
            ),
          ],
        ),
        Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: .8,
                color: kCommentColor,
              ),
            ),
            width: Sz.getHeight(63),
            height: Sz.getHeight(63),
            child: const Center(
              child: Icon(
                Icons.shop,
                color: kTextColor,
                size: 30,
              ),
            )),
      ],
    );
  }
}
