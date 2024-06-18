import 'package:flutter/material.dart';
import '../aplicacion/controlador_usuario.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final ControladorUsuario controladorUsuario = ControladorUsuario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
              ),
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
              ),
              style: TextStyle(color: Colors.white),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () async {
                String email = emailController.text;
                String password = passwordController.text;

                // Validar las credenciales utilizando el controlador de usuario
                bool credencialesValidas = await controladorUsuario.validarCredenciales(email, password);

                if (credencialesValidas) {
                  // Navegar a la pantalla de home si las credenciales son válidas
                  Navigator.pushReplacementNamed(context, "/home");
                } else {
                  // Mostrar algún mensaje de error o feedback al usuario
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Credenciales inválidas. Por favor, intenta de nuevo.'),
                    ),
                  );
                }
              },
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text('Create an account'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/registrarse");
              },
            ),
          ],
        ),
      ),
    );
  }
}



