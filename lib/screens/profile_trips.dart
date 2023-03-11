import 'package:flutter/material.dart';
import 'profile_header.dart';
import 'profile_places_list.dart';
import 'profile_background.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({super.key});

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