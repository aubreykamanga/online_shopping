import 'package:flutter/material.dart';
import 'package:online_shopping/constants.dart';
import 'package:online_shopping/models/product.dart';
import 'category_list.dart';
import 'product_card.dart';
import 'search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          const Categorylist(),
          const SizedBox(height: kDefaultPadding / 2),
          Expanded(
              child: Stack(
            children: <Widget>[
              // App background
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                //here we use our demo products
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                  press: () {},
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
