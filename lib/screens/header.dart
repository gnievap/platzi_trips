import 'package:basic_app/screens/card_image_list.dart';
import 'package:basic_app/screens/gradient_back.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        GradientBack(title: 'Popular'),
        CardImageList(),
      ],
    );
  }
}