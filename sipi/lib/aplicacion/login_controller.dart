import '../infraestructura/login_api.dart';

class LoginController {
  final LoginAPI loginAPI;

  LoginController(this.loginAPI);

  bool validarCredenciales(String username, String password) {
    return loginAPI.validarCredenciales(username, password);
  }

  void login() {
    loginAPI.login();
  }

  void logout() {
    loginAPI.logout();
  }

  void crearCuenta() {
    loginAPI.crearCuenta();
  }
}
