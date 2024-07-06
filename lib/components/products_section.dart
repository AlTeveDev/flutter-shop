import 'package:flutter/material.dart';
import 'package:stylish/components/product_card.dart';
import 'package:stylish/components/products_header.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: ProductsHeader(
            title: title,
            moreText: "See All",
            morePressed: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: defaultPadding),
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  product: demo_product[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
