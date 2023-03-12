import 'package:flutter/material.dart';
import '../widgets/profile_background.dart';
import '../widgets/profile_places_list.dart';
import 'profile_header.dart';

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