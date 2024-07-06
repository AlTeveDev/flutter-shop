import 'package:flutter/material.dart';

class ProductsHeader extends StatelessWidget {
  const ProductsHeader({
    Key? key,
    required this.title,
    required this.moreText,
    this.morePressed,
  }) : super(key: key);

  final String title, moreText;
  final VoidCallback? morePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        TextButton(
          onPressed: morePressed,
          child: Text(
            moreText,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
