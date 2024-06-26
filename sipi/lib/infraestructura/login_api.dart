import 'package:sipi/dominio/repositorio_usuarios.dart';
import 'package:sipi/dominio/usuario.dart';

import '../aplicacion/login_controller.dart';

class LoginAPI implements LoginController {
  @override
  Usuario? validarCredenciales(String username, String password) {
    UsuarioRepository bd = UsuarioRepository();
    return bd.getUsuario(username,password);
    }

  @override
  void crearCuenta() {
    // TODO: implement crearCuenta
  }

  @override
  void login() {
    // TODO: implement login
  }

  @override
  void logout() {
    // TODO: implement logout
  }
}
