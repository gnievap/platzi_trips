
import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(user: 'Filomena Acosta', details: '1 review 5 photos', comment: 'There is an amazing place in Sri Lanka', pathImage:'assets/img/profile_pic1.jpg'),
        Review(user: 'Pánfilo Torres', details: '3 review 10 photos', comment: 'Beautiful place', pathImage:'assets/img/profile_pic2.jpg'),
        Review(user: 'Tiburcio Luna', details: '1 review 1 photo', comment: 'So peaceful!', pathImage:'assets/img/profile_pic3.jpg'),
        Review(user: 'Anastasia Meléndez', details: '2 review 3 photos', comment: 'Wonderfull place', pathImage:'assets/img/profile_pic4.jpg'),
      ],
    );
  }

}