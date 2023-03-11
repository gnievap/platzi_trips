import 'package:basic_app/screens/button_navigate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionPlaceScreen extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  const DescriptionPlaceScreen(
      {super.key,
      required this.namePlace,
      required this.stars,
      required this.descriptionPlace});

  @override
  Widget build(BuildContext context) {
    const TextStyle titleStyle = TextStyle(      
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    // final starBorder = Container(
    //   margin: const EdgeInsets.only(
    //     top: 323.0,
    //     right: 3.0,
    //   ),
    //   child: const Icon(
    //     Icons.star_border,
    //     color: Color(0xFFf2C611),
    //   ),
    // );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final tittleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: GoogleFonts.lato(
              textStyle: titleStyle,
            ),
            textAlign: TextAlign.left,
            
          ),
        ),
        Row(
          children: [
            star,
            star,
            star,
            star,
            starHalf,
          ],
        ),
      ],
    );
    Container description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: GoogleFonts.almendra(
          textStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
        ),
      ),
    );
    return Column(
      children: [
        tittleStars,
        description,
        const ButtonNavigate(buttonText: 'Navigate',),
      ],
    );
  }
}
