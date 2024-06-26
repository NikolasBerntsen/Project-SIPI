import 'package:sipi/infraestructura/consultar_api.dart';

import 'juego.dart';

class JuegosEnPantalla {
  List<Juego>? juegos;


  List<Juego> getjuegos() {
    return juegos!;
  }

  // Método para obtener todos los juegos
  List<Juego> juegosDe(String genero) {
    return ConsultarAPI.buscargenero(genero);
  }
}

