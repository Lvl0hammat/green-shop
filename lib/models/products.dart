import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

class Products with ChangeNotifier {
  final List<Product> _products = [
    Product(
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
      id: '1',
      title: 'قابلمه',
      price: 22.99,
      size: [''],
    ),
    Product(
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
      id: '2',
      title: 'شلوار زمستانی گرم',
      price: 122.99,
      size: ['', 'XL', 'X', 'M', 'S'],
    ),
  ];
  List<Product> get products {
    return [..._products];
  }

  Product findById(String id) {
    return _products.firstWhere((element) => element.id == id);
  }
}
//https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg
//https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg
//

class Product {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  final List<String> size;
  final List<Color> colors;
  Product({
    required this.imageUrl,
    required this.id,
    required this.title,
    required this.price,
    this.size = const [''],
    this.colors = const [],
  });
}
