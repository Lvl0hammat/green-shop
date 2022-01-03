import 'package:envio/constants.dart';
import 'package:envio/sz.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: Sz.width * .69,
          height: Sz.getWidth(80),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'جست و جو در بین محصولات',
              hintStyle: const TextStyle(fontSize: 17),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(color: kPrimaryColor),
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: kTextColor,
                size: 24,
              ),
            ),
          ),
        ),
        const Spacer(),
        Container(
          height: Sz.getWidth(60),
          width: Sz.getWidth(60),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kPrimaryColor,
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list_sharp,
                color: Colors.white,
                size: 35,
              )),
        )
      ],
    );
  }
}
