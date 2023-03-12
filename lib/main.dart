
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


import 'User/bloc/bloc_user.dart';
import 'travels.dart';


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
    return BlocProvider(
      bloc: UserBloc(),
      child: const  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel app',
        home:  Travels(),
      ), 
      );

  }
}
