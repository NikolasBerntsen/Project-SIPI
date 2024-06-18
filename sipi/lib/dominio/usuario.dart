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

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      idUsuario: json['idUsuario'],
      correoElectronico: json['correoElectronico'],
      contrasena: json['contrasena'],
      nombreUsuario: json['nombreUsuario'],
      desarrollador: json['desarrollador'],
      moderador: json['moderador'],
      critico: json['critico'],
      notificaciones: List<String>.from(json['notificaciones']),
      seguidores: List<String>.from(json['seguidores']),
      empresaCritica: json['empresaCritica'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idUsuario': idUsuario,
      'correoElectronico': correoElectronico,
      'contrasena': contrasena,
      'nombreUsuario': nombreUsuario,
      'desarrollador': desarrollador,
      'moderador': moderador,
      'critico': critico,
      'notificaciones': notificaciones,
      'seguidores': seguidores,
      'empresaCritica': empresaCritica,
    };
  }
}

