import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';

class ColorDot extends StatelessWidget {
  // ignore: use_super_parameters
  const ColorDot({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.FillColor,
    this.isSelected = false,
  }) : super(key: key);
  // ignore: non_constant_identifier_names
  final Color FillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: const EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: FillColor,
        ),
      ),
    );
  }
}
