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

  // Método para actualizar un juego en la lista
  void actualizarJuego(int idJuego, Juego juegoActualizado) {
    for (int i = 0; i < juegos.length; i++) {
      if (juegos[i].idJuego == idJuego) {
        juegos[i] = juegoActualizado;
        print('Juego actualizado: ${juegoActualizado.nombreJuego}');
        return;
      }
    }
    print('Juego con ID $idJuego no encontrado.');
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
