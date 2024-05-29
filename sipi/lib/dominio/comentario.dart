class Comentario {
  int idComentario;
  int idUsuario;
  String texto;
  DateTime fechaPublicacion;
  int puntuacion;
  String fotoPerfil;

  Comentario({
    required this.idComentario,
    required this.idUsuario,
    required this.texto,
    required this.fechaPublicacion,
    required this.puntuacion,
    required this.fotoPerfil,
  });
}
