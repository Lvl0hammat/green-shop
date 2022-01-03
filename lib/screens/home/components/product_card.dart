import 'package:cached_network_image/cached_network_image.dart';
import 'package:envio/constants.dart';
import 'package:envio/screens/detail/detail_screen.dart';
import 'package:envio/sz.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.id,
      required this.size,
      required this.price})
      : super(key: key);
  final String imageUrl;
  final String title;
  final String id;
  final double price;
  final List<String> size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () =>
            Navigator.pushNamed(context, DetailScreen.routeName, arguments: id),
        child: Card(
          elevation: 7,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          child: Padding(
            padding: EdgeInsets.all(Sz.getWidth(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Sz.width * .71,
                  height: Sz.width * .71,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: Sz.getHeight(5)),
                SizedBox(
                  width: Sz.width * .71,
                  height: Sz.getHeight(75),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 28,
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: Sz.width * .71,
                  padding: EdgeInsets.symmetric(horizontal: Sz.getWidth(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$price تومان',
                        // textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontSize: 24,
                            overflow: TextOverflow.fade,
                            fontWeight: FontWeight.bold),
                      ),
                      if (size.length > 1) const Spacer(),
                      if (size.length > 1)
                        ...size
                            .map(
                              (e) => Text(
                                '$e  ',
                                style: const TextStyle(
                                  color: kCommentColor,
                                  overflow: TextOverflow.fade,
                                ),
                              ),
                            )
                            .toList()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
