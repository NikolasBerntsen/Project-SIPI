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

  // Método para agregar un juego a la lista
  void agregarJuego(Juego juego) {
    juegos.add(juego);
    print('Juego agregado: ${juego.nombreJuego}');
  }

  // Método para eliminar un juego de la lista
  void eliminarJuego(int idJuego) {
    juegos.removeWhere((juego) => juego.idJuego == idJuego);
    print('Juego con ID $idJuego eliminado.');
  }

  // Método para obtener todos los juegos
  List<Juego> obtenerTodosLosJuegos() {
    return List.unmodifiable(juegos); // Devolver una lista inmodificable
  }
}
