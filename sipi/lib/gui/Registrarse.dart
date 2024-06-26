import 'package:flutter/material.dart';
import 'package:sipi/dominio/repositorio_usuarios.dart';
import 'package:sipi/dominio/usuario.dart';

class Registrarse extends StatefulWidget {
  @override
  _RegistrarseState createState() => _RegistrarseState();
}

class _RegistrarseState extends State<Registrarse> {
  // Controllers for text fields
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repeatPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("lib/assets/logo_sipi_oscuro.png"),
                SizedBox(height: 50),
                TextFormField(
                  controller: _userNameController,
                  decoration: InputDecoration(
                    labelText: 'userName',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
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
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                  ),
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _repeatPasswordController,
                  decoration: InputDecoration(
                    labelText: 'Repeat Password',
                    labelStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.2),
                  ),
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Las contraseñas son distintas';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Example of retrieving text from controllers
                    String userName = _userNameController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    if (_formKey.currentState!.validate()) {
                      Usuario user = Usuario(
                          idUsuario: UsuarioRepository().crearID(),
                          correoElectronico: email,
                          contrasena: password,
                          nombreUsuario: userName,
                          desarrollador: false,
                          moderador: false,
                          critico: false,
                          notificaciones: [],
                          seguidores: [],
                          empresaCritica: '',
                          imagen: '');
                      UsuarioRepository().agregarUsuario(user);
                      Navigator.pushReplacementNamed(context, "/login");
                    } else {}
                  },
                  child: Text('Create Account'),
                ),
              ],
            ),
          ) 
        ),
      ),
    );
  }
}
