import 'juego.dart';

class JuegosEnPantalla {
  List<Juego> juegos;

  static final JuegosEnPantalla _instancia = JuegosEnPantalla._internal();

  factory JuegosEnPantalla() {
    return _instancia;
  }

  JuegosEnPantalla._internal() : juegos = [];

  List<Juego> getInstancia() {
    return juegos;
  }
}
