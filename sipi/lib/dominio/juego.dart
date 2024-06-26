class Juego {
  int idJuego;
  String descripcion;
  int puntuacion;
  String nombreJuego;
  List<String> etiquetas;
  String desarrollador;
  List<String> plataformas;
  String fechaLanzamiento;
  String requisitos;
  String imagenURL;

  Juego({
    required this.idJuego,
    required this.descripcion,
    required this.puntuacion,
    required this.nombreJuego,
    required this.etiquetas,
    required this.desarrollador,
    required this.plataformas,
    required this.fechaLanzamiento,
    required this.requisitos,
    required this.imagenURL,
  });
}
