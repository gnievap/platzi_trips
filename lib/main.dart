
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/travels.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setSystemUIOverlayStyle(
       const SystemUiOverlayStyle(
         statusBarColor: Colors.transparent,
         statusBarBrightness: Brightness.light,
       )
    );
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Travels(),
      );
  }
}
