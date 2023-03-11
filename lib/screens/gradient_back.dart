import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

  final String title;

  const GradientBack({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 112, 149, 249),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6,),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp),
      ),
      alignment: const Alignment(-0.9, -0.6),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,        ),
        ),
    );
  }
}