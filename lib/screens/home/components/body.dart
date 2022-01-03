import 'package:envio/models/products.dart';
import 'package:envio/screens/home/components/hedline.dart';
import 'package:envio/screens/home/components/home_appbar.dart';
import 'package:envio/screens/home/components/product_cards.dart';
import 'package:envio/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../sz.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context, listen: false);
    final products = productsData.products;
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: Sz.width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: Sz.getWidth(20),
                    right: Sz.getWidth(20),
                    top: Sz.getHeight(10)),
                child: const HomeAppbar(),
              ),
              SizedBox(height: Sz.getHeight(20)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sz.getWidth(20)),
                  child: const SearchField()),
              SizedBox(height: Sz.getHeight(20)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sz.getWidth(20)),
                child: Headline(
                  text: 'محصولات اخیر',
                  press: () {},
                ),
              ),
              SizedBox(height: Sz.getHeight(20)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Sz.getWidth(20)),
                child: ProductCards(products: products),
              )
            ],
          ),
        ),
      ),
    );
  }
}
