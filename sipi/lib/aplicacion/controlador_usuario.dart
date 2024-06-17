import '../dominio/usuario.dart';
import '../infraestructura/login_api.dart';

class ControladorUsuario {
  Usuario? usuarioAutenticado;
  final LoginAPI loginAPI = LoginAPI();

  // Método para validar credenciales (login)
  bool validarCredenciales(String correoElectronico, String contrasena) {
    bool credencialesValidas = loginAPI.validarCredenciales(correoElectronico, contrasena);
    if (credencialesValidas) {
      usuarioAutenticado = Usuario(
        idUsuario: 1, // Asignar un idUsuario ficticio para este ejemplo
        correoElectronico: correoElectronico,
        contrasena: contrasena,
        nombreUsuario: 'Nombre de Usuario', // Asignar un nombre ficticio para este ejemplo
        desarrollador: false,
        moderador: false,
        critico: false,
        notificaciones: [],
        seguidores: [],
        empresaCritica: '',
      );
      return true;
    } else {
      return false;
    }
  }

  // Método para registrar usuario
  void registrarUsuario(Usuario usuario) {
    // Simula la creación de la cuenta
    loginAPI.crearCuenta();
    usuarioAutenticado = usuario;
  }
}




