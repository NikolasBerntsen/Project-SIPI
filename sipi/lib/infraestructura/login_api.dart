import '../aplicacion/login_controller.dart';

class LoginAPI implements LoginController {
  @override
  bool validarCredenciales(String username, String password) {
    // Implementación de validarCredenciales
    return username == 'usuario' && password == 'contraseña'; // Ejemplo simple
  }

  @override
  void login() {
    // Implementación de login
    print('Sesión iniciada');
  }

  @override
  void logout() {
    // Implementación de logout
    print('Sesión cerrada');
  }

  @override
  void crearCuenta() {
    // Implementación de crearCuenta
    print('Cuenta creada');
  }
}
