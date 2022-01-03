import 'package:cached_network_image/cached_network_image.dart';
import 'package:envio/constants.dart';
import 'package:envio/models/products.dart';
import 'package:envio/screens/detail/components/rounded_icon_button.dart';
import 'package:envio/sz.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.productId}) : super(key: key);
  final String productId;

  @override
  Widget build(BuildContext context) {
    final product =
        Provider.of<Products>(context, listen: false).findById(productId);
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
            width: Sz.width,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 10, horizontal: Sz.getWidth(11)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      DetailImageCard(product: product),
                      const RoundedIconButtons()
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    product.title,
                    // textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'vazir',
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class DetailImageCard extends StatelessWidget {
  const DetailImageCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sz.width,
      height: Sz.width + 50,
      child: Card(
        elevation: 30,
        shadowColor: kCommentColor.withOpacity(.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: CachedNetworkImage(
            imageUrl: product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class RoundedIconButtons extends StatelessWidget {
  const RoundedIconButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 13,
      left: 15,
      right: 15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RoundedIconButton(
            icon: Icons.arrow_forward_ios,
            press: () => Navigator.pop(context),
          ),
          RoundedIconButton(
            icon: Icons.bookmark_border_outlined,
            press: () {},
          )
        ],
      ),
    );
  }
}
