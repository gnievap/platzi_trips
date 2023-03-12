
import 'package:flutter/material.dart';

import '../../../widgets/gradient_back.dart';
import '../widgets/card_image_list.dart';

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