import 'package:envio/models/products.dart';
import 'package:envio/screens/home/components/product_card.dart';
import 'package:flutter/material.dart';

class ProductCards extends StatelessWidget {
  const ProductCards({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          ...List.generate(
            products.length,
            (index) => ProductCard(
              id: products[index].id,
              imageUrl: products[index].imageUrl,
              price: products[index].price,
              size: products[index].size,
              title: products[index].title,
            ),
          ),
        ],
      ),
    );
  }
}
