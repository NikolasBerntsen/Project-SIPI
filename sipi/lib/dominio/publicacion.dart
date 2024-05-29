import 'comentario.dart';

class Publicacion {
  int idPublicacion;
  int idJuego;
  List<Comentario> comentarios;

  Publicacion({
    required this.idPublicacion,
    required this.idJuego,
    required this.comentarios,
  });
}
