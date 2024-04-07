import 'package:flutter/material.dart';
import '/bootstrap/helpers.dart';
import 'package:nylo_framework/nylo_framework.dart';

class SearchBox extends StatelessWidget {
  final String? hint;
  final EdgeInsets padding;
  final Color hintColor;

  const SearchBox({
    Key? key,
    this.hint,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColor.get(context).surfaceBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: this.hint,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: hintColor, fontWeight: FontWeight.bold),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
          ),
        ),
      ),
    );
  }
}
