import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/components/categories_caroosel.dart';
import 'package:stylish/components/products_section.dart';
import 'package:stylish/components/search_form.dart';
import 'package:stylish/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(
                "Explore",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text("best Outfits for you"),
            ),
            const SizedBox(height: defaultPadding),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: SearchForm(),
            ),
            const SizedBox(height: defaultPadding),
            const CategoriesCaroosel(),
            const SizedBox(height: defaultPadding),
            const ProductsSection(title: "New Arrival"),
            const SizedBox(height: defaultPadding),
            const ProductsSection(title: "Popular"),
          ],
        ),
      ),
    );
  }
}