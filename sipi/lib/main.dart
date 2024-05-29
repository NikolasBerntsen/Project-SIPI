import 'package:flutter/material.dart';
import 'package:sipi/gui/deslizable.dart';
import 'package:sipi/gui/principal.dart';
import 'package:sipi/gui/solicitudes.dart';
import 'package:sipi/gui/suscripciones.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes : {
        "/home": (contex)=> Principal(),
        "/suscripciones": (contex)=> Suscripciones(),
        "/solicitudes": (contex)=> Solicitudes(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey[900],
        scaffoldBackgroundColor: Colors.blueGrey[900],
        colorScheme: ColorScheme.dark(
          secondary: Colors.blueAccent, 
        ),
      ),
      home: Principal(),
    );
  }
}
