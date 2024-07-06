import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({
    Key? key,
  }) : super(key: key);

  final colors = const [Colors.amber, Colors.red, Colors.blueAccent];

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  int selected = 0;

  void setSelected(int i) {
    setState(() {
      selected = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        widget.colors.length,
        (index) => InkWell(
          onTap: () => setSelected(index),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(500)),
              border: Border.all(color: selected == index ? primaryColor : Colors.transparent)
            ),
            width: 26,
            height: 26,
            padding: EdgeInsets.all(3),
            margin: EdgeInsets.only(left: 4),
            child: Container(
              decoration: BoxDecoration(
                color: widget.colors[index],
                borderRadius: BorderRadius.all(
                  Radius.circular(500),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
