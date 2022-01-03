import 'package:envio/screens/detail/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const routeName = '/detail';
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: Body(
        productId: id,
      ),
    );
  }
}
