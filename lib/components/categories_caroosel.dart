import 'package:flutter/material.dart';
import 'package:stylish/components/category_button.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Category.dart';

class CategoriesCaroosel extends StatelessWidget {
  const CategoriesCaroosel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: defaultPadding),
      child: Row(
        children: List.generate(
          demo_categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: CategoryButton(category: demo_categories[index]),
          ),
        ),
      ),
    );
  }
}
