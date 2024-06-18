import 'package:http/http.dart' as http;
import 'dart:convert';
import '../dominio/usuario.dart';
import '../aplicacion/login_controller.dart';

class LoginAPI implements LoginController {
  final String baseUrl = 'https://tu-api.com'; // Cambia esto por la URL de tu API

  @override
  Future<bool> validarCredenciales(String correoElectronico, String contrasena) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'correoElectronico': correoElectronico,
        'contrasena': contrasena,
      }),
    );

    if (response.statusCode == 200) {
      // Si el servidor devuelve una respuesta OK, el usuario es válido
      return true;
    } else {
      // Si el servidor devuelve una respuesta no OK, el usuario no es válido
      return false;
    }
  }

  Future<Usuario?> obtenerUsuario(String correoElectronico, String contrasena) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'correoElectronico': correoElectronico,
        'contrasena': contrasena,
      }),
    );

    if (response.statusCode == 200) {
      // Si el servidor devuelve una respuesta OK, transformamos el JSON a Usuario
      final data = jsonDecode(response.body);
      return Usuario.fromJson(data);
    } else {
      // Si el servidor devuelve una respuesta no OK, no se encontró el usuario
      return null;
    }
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
  Future<void> crearCuenta(Usuario usuario) async {
    final response = await http.post(
      Uri.parse('$baseUrl/registrar'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(usuario.toJson()),
    );

    if (response.statusCode == 201) {
      // Si el servidor devuelve una respuesta 201 Created
      print('Cuenta creada');
    } else {
      // Manejo de errores
      print('Error al crear la cuenta');
    }
  }
}



