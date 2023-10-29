import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category extends StatelessWidget {
  final String category;
  final VoidCallback? onPress;
  const Category({super.key, required this.category, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          category,
          style: const TextStyle(
              fontFamily: 'poppins',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(85, 77, 86, 1)),
        ),
        SvgPicture.asset("assets/icons/catergoryArrow.svg")
      ],
    );
  }
}
