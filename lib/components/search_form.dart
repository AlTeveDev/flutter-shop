import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.black),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: "Search items...",
          hintStyle: Theme.of(context).textTheme.bodyMedium,
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(defaultBorderRadius)),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2,
              horizontal: defaultPadding/2,
            ),
            child: SizedBox(
              width: 48,
              height: 48,
              child: IconButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultBorderRadius),
                  ),
                ),
                icon: SvgPicture.asset("assets/icons/Filter.svg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
