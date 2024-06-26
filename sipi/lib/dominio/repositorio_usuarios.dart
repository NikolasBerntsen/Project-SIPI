import 'package:sipi/dominio/usuario.dart';

class UsuarioRepository {
  static final UsuarioRepository _instance = UsuarioRepository._internal();

  factory UsuarioRepository() {
    return _instance;
  }

  UsuarioRepository._internal();

  List<Usuario> _usuarios = [
    Usuario(
      idUsuario: 1, // Asignar un idUsuario ficticio para este ejemplo
      correoElectronico: "admin@admin.com",
      contrasena: "1234",
      nombreUsuario: 'admin', // Asignar un nombre ficticio para este ejemplo
      desarrollador: false,
      moderador: false,
      critico: false,
      notificaciones: [],
      seguidores: [],
      empresaCritica: '',
      imagen: "https://play-lh.googleusercontent.com/8ddL1kuoNUB5vUvgDVjYY3_6HwQcrg1K2fd_R8soD-e2QYj8fT9cfhfh3G0hnSruLKec",
    ),
  ];

  void agregarUsuario(Usuario user) {
    _usuarios.add(user);
  }


  Usuario? getUsuario(String username, String password) {
    for (Usuario usuario in _usuarios) {
      if (usuario.nombreUsuario == username && usuario.contrasena == password) {
        return usuario;
      }
    }
    return null;
  }

  int crearID() {
    return _usuarios[_usuarios.length-1].idUsuario + 1;
  }
  
}
