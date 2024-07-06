import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Category.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key? key,
    required this.category,
    this.onPressed,
  }) : super(key: key);

  final Category category;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        padding: const EdgeInsets.symmetric(vertical: defaultPadding/2, horizontal: defaultPadding),
        // padding: EdgeInsets.zero,
      ),
      child: Column(
        children: [
          SvgPicture.asset(category.icon),
          const SizedBox(height: defaultPadding / 2),
          Text(category.title, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
