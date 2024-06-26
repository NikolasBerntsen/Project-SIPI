import 'package:sipi/dominio/usuario.dart';

abstract class LoginController {
  Usuario? validarCredenciales(String username, String password);
  void login();
  void logout();
  void crearCuenta();
}

