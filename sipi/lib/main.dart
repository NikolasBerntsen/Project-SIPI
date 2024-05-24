import 'package:flutter/material.dart';
import 'gui/profile_page.dart'; 
import 'gui/search_page.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: Colors.blueGrey[900],
        colorScheme: ColorScheme.dark(
          secondary: Colors.blueAccent, 
        ),
      ),
      // II--II--II Para cambiar la pantalla comenta uno y descomenta el otro II--II--II
      //home: ProfilePage(), 
      home: SearchPage(), 
    );
  }
}


