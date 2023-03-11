import 'package:basic_app/screens/small_button.dart';
import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String pathImage;

  const CardImage({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 270.0,
      margin: const EdgeInsets.only(
        top: 60.0,
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
          ),
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        boxShadow: const <BoxShadow>  [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
    );
    return Stack(
      alignment: const Alignment(0.9, 1.1),
      children: [
        card,
        const SmallButton(),
      ],
    );
  }
}