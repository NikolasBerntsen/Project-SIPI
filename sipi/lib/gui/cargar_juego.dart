import 'package:flutter/material.dart';

class CargarJuego extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cargar juego'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Imagen portada:'),
            SizedBox(height: 8.0),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.upload_file),
                  label: Text('Cargar archivo'),
                ),
                SizedBox(width: 16.0),
                Text('Formatos soportados: JPG, PNG'),
              ],
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Requisitos para adquirir el juego',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Plataformas disponibles',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Imágenes extras:'),
            SizedBox(height: 8.0),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.upload_file),
                  label: Text('Cargar archivo'),
                ),
                SizedBox(width: 16.0),
                Text('Formatos soportados: JPG, PNG'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
