import 'package:sipi/dominio/usuario.dart';

abstract class LoginController {
  Future<bool> validarCredenciales(String username, String password);
  void login();
  void logout();
  Future<void> crearCuenta(Usuario usuario);
}

  
  

