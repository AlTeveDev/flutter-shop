import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/product/product_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    final ki = UniqueKey();
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              product: product,
              ki: ki,
            ),
          ),
        );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.all(Radius.circular(1.5 * defaultBorderRadius)),
        ),
        padding: const EdgeInsets.all(defaultPadding / 2),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                    Radius.circular(defaultBorderRadius)),
                color: product.bgColor,
              ),
              width: 132,
              height: 132,
              child: Hero(tag: ki, child: Image.asset(product.image)),
            ),
            const SizedBox(height: defaultPadding),
            SizedBox(
              width: 132,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      product.title,
                      softWrap: true,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.black54),
                    ),
                  ),
                  const SizedBox(width: defaultPadding / 4),
                  Text(
                    "\$${product.price}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
