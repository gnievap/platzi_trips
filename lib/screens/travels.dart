import 'package:basic_app/screens/home_screen.dart';
import 'package:basic_app/screens/profile_screen.dart';
import 'package:basic_app/screens/search_places_screen.dart';
import 'package:flutter/material.dart';

class Travels extends StatefulWidget {
  const Travels({super.key});

  @override
  State<Travels> createState() => _TravelsState();
}

class _TravelsState extends State<Travels> {

  int indexTap = 0;
  final List<Widget> widgetsChildren = const [
    HomeScreen(),
    SearchPlacesScreen(),
    ProfileScreen(),
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purpleAccent,
        ), 
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped,
          currentIndex: indexTap,
          selectedItemColor: Colors.deepPurpleAccent,
          items: const [
            BottomNavigationBarItem(
              icon:Icon(Icons.home),
              label: '',
               ),
            BottomNavigationBarItem(
              icon:Icon(Icons.search),
              label: '',
               ),
            BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label: '',
               ),
          ],)),
    );
  }
}