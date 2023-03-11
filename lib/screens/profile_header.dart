import 'package:flutter/material.dart';
import 'user_info.dart';
import 'button_bar.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {

    const title =  Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: const Column(
        children: <Widget>[
           Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo('assets/img/ann.jpg', 'Anahí Salgado','anahi@platzi.com'),
          ButtonsBar()
        ],
      ),
    );
  }

}