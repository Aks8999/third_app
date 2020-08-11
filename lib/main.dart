import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:third_app/pages/HomePage.dart';
import 'package:third_app/pages/ListPage.dart';
import 'package:third_app/pages/LoginScreen.dart';
import 'package:third_app/utils/Constants.dart';

import 'card.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.perfs= await SharedPreferences.getInstance();
  runApp(MaterialApp(
    home: Constants.perfs.getBool("loggedIn")==true? HomaPage():LoginScreen(),
    title: "Third App",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      accentColor: Colors.purple,
      brightness: Brightness.light,
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login":(context)=> LoginScreen(),
      "/home": (context)=> HomaPage(),
      "/list": (context)=> ListPage(),
    },
  ));
}

