import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
    final String pathImage;
    final String user;
    final String details;
    final String comment;

    const Review({super.key, required this.user, required this.details, required this.comment, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        ),
        child: Row(
          children: [
            Text(
              details,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7),
              ),
            ),
            star,
            star,
            star,
          ],
        ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        ),
        child: Text(
          user,
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
        ),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            fontSize: 15.0,
          ),
        ),
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment,
      ],
    );

    
    final photo = Container(
      margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)),
      ),
    );

   return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        photo,
        userDetails,
      ],
    );

    //return photo;
  }
}