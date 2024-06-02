class Juego {
  int idJuego;
  String descripcion;
  int puntuacion;
  String nombreJuego;
  List<String> etiquetas;
  String desarrollador;

  Juego({
    required this.idJuego,
    required this.descripcion,
    required this.puntuacion,
    required this.nombreJuego,
    required this.etiquetas,
    required this.desarrollador,
  });

  void publicarJuego() {
    // Implementación de publicarJuego
    print('Publicando juego: $nombreJuego');
    
  }

  void actualizarJuego({
    required String nuevaDescripcion,
    required int nuevaPuntuacion,
    required String nuevoNombreJuego,
    required List<String> nuevasEtiquetas,
    required String nuevoDesarrollador,
  }) {
    // Actualizando los detalles del juego
    descripcion = nuevaDescripcion;
    puntuacion = nuevaPuntuacion;
    nombreJuego = nuevoNombreJuego;
    etiquetas = nuevasEtiquetas;
    desarrollador = nuevoDesarrollador;
    print('Juego actualizado: $nombreJuego');
   
  }

  void eliminarJuego() {
    // Implementación de eliminarJuego
    print('Eliminando juego: $nombreJuego');

  }
}
