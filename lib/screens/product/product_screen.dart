import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/product/color_selector.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({
    key,
    required this.product,
    required this.ki,
  }) : super(key: key);

  final Product product;
  final Key ki;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: BackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          )
        ],
        title: Text("Product"),
      ),
      body: Column(
        children: [
          Hero(
            tag: ki,
            child: Image.asset(
              product.image,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(3 * defaultBorderRadius),
                ),
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
                vertical: defaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontSize: 20),
                      ),
                      Text(
                        "\$${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Text(
                    "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.black45),
                  ),
                  SizedBox(height: defaultPadding),
                  Text(
                    "Colors",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: defaultPadding / 2),
                  ColorSelector(),
                  SizedBox(height: defaultPadding * 2),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text("Add to shopper"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
