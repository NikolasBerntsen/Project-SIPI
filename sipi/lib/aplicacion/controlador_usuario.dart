import '../dominio/usuario.dart';
import '../infraestructura/login_api.dart';

class ControladorUsuario {
  Usuario? usuarioAutenticado;
  final LoginAPI loginAPI = LoginAPI();

  // Crear una instancia estática privada
  static final ControladorUsuario _instance = ControladorUsuario._internal();

  // Proveer un método público estático para acceder a la instancia única
  static ControladorUsuario get instance => _instance;

  // Constructor privado para evitar la creación de instancias desde fuera
  ControladorUsuario._internal();

  // Método para validar credenciales (login)
  bool validarCredenciales(String usuario, String contrasena) {
    usuarioAutenticado =
        loginAPI.validarCredenciales(usuario, contrasena);
    return usuarioAutenticado != null;
  }

  // Método para registrar usuario
  void registrarUsuario(Usuario usuario) {
    // Simula la creación de la cuenta
    loginAPI.crearCuenta();
    usuarioAutenticado = usuario;
  }
}
