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
    if (!notificaciones.contains(tag)) {
      notificaciones.add(tag);
    }
  } //primero verifica si el tag esta o no, si no esta lo agrega

  void eliminarTag(String tag) {
    notificaciones.remove(tag);
  }
} //elimina el tag de la lista de notificaciones si esta presente

