import 'package:flutter/material.dart';

import 'profile_background.dart';
import 'profile_header.dart';
import 'profile_places_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const ProfileBackground(),
        ListView(
          children: <Widget>[
            const ProfileHeader(),
            ProfilePlacesList()

          ],
        ),
      ],
    );
  }
}