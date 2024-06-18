import '../dominio/usuario.dart';
import '../infraestructura/login_api.dart';

class ControladorUsuario {
  Usuario? usuarioAutenticado;
  final LoginAPI loginAPI = LoginAPI();

  // Método para validar credenciales (login)
  Future<bool> validarCredenciales(String correoElectronico, String contrasena) async {
    bool credencialesValidas = await loginAPI.validarCredenciales(correoElectronico, contrasena);
    if (credencialesValidas) {
      usuarioAutenticado = await loginAPI.obtenerUsuario(correoElectronico, contrasena);
      return true;
    } else {
      return false;
    }
  }

  // Método para registrar usuario
  Future<void> registrarUsuario(Usuario usuario) async {
    await loginAPI.crearCuenta(usuario);
    usuarioAutenticado = usuario;
  }
}






