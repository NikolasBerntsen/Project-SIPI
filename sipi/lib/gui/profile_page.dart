import 'package:flutter/material.dart';
import 'package:sipi/gui/deslizable.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      drawer: Delizable(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Imagen de red
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blueGrey[900],
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Emilio Oliveira',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            buildEditableField('Nombre', _nameController),
            buildEditableField('Contraseña', _passwordController, obscureText: true),
            buildEditableField('Correo electrónico', _emailController),
          ],
        ),
      ),
    );
  }

  Widget buildEditableField(String label, TextEditingController controller, {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, color: Colors.white70),
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                obscureText: obscureText,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.edit, color: Colors.white70),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
