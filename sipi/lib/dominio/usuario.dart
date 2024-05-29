class Usuario {
  int idUsuario;
  String correoElectronico;
  String contrasena;
  String nombreUsuario;
  bool desarrollador;
  bool moderador;
  bool critico;
  List<String> notificaciones;
  List<String> seguidores;
  String empresaCritica;

  Usuario({
    required this.idUsuario,
    required this.correoElectronico,
    required this.contrasena,
    required this.nombreUsuario,
    required this.desarrollador,
    required this.moderador,
    required this.critico,
    required this.notificaciones,
    required this.seguidores,
    required this.empresaCritica,
  });

  bool esDesarrollador() => desarrollador;
  bool esCritico() => critico;
  bool esModerador() => moderador;
  void agregarTag(String tag) {
    // Implementación de agregarTag
  }

  void eliminarTag(String tag) {
    // Implementación de eliminarTag
  }
}
