import 'package:flutter/material.dart';
import 'package:sipi/gui/LogIn.dart';
import 'package:sipi/gui/Registrarse.dart';
import 'package:sipi/gui/cargar_juego.dart';
import 'package:sipi/gui/principal.dart';
import 'package:sipi/gui/profile_page.dart';
import 'package:sipi/gui/search_page.dart';
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
      initialRoute: "/login",
      routes : {
        "/home": (contex)=> Principal(),
        "/suscripciones": (contex)=> Suscripciones(),
        "/solicitudes": (contex)=> Solicitudes(),
        "/perfil": (contex)=> ProfilePage(),
        "/busqueda": (contex)=> SearchPage(),
        "/registrarse": (contex)=> Registrarse(),
        "/login": (contex)=> Login(),
        "/cargarJuego": (contex)=> CargarJuego(),
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
      home: Login(),
    );
  }
}
