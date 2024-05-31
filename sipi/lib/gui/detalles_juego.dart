import 'package:flutter/material.dart';
import 'package:sipi/gui/comentarios.dart';

class DetallesJuego extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fallout 4'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network('https://images.cdn2.buscalibre.com/fit-in/360x360/14/cc/14cc98758d6630da4071f95ddf5ace68.jpg'), 
            SizedBox(height: 16.0),
            Text(
              'Fallout 4',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Fallout 4 es un RPG de mundo abierto desarrollado por Bethesda para PlayStation 4, Xbox One y PC. '
              'La saga de juegos de rol y acción en mundo postapocalíptico en su entrega más ambiciosa, ofreciendo un mundo hostil, bello y lleno de historias y sorpresas por descubrir en el que sumergirnos durante cientos de horas.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reseñas generales:', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Extremadamente positivas (${102},${377})'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Plataformas disponibles:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Microsoft Windows, PlayStation 4, Xbox One'),
            SizedBox(height: 16.0),
            Text(
              'Fecha de lanzamiento:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('10 de Noviembre de 2015'),
            SizedBox(height: 16.0),
            Text(
              'Desarrollador:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Bethesda Game Studios'),
            SizedBox(height: 16.0),
            Text(
              'Requisitos de sistema:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Windows 7/8/10 (SO de 64-bit)\n'
                'Intel Core i5-2300 2.8 GHz/AMD Phenom II X4 945 3.0 GHz o equivalente\n'
                '8 GB RAM\n'
                '30 GB de espacio libre en disco\n'
                'NVIDIA GTX 550 Ti 2GB/AMD Radeon HD 7870 2GB o equivalente\n'
                'Consola: 28-35 GB de espacio libre en disco'),
            SizedBox(height: 16.0),
            Text(
              'Etiquetas populares para este juego:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(label: Text('#RPG')),
                Chip(label: Text('#Aventura')),
                Chip(label: Text('#Shooter')),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Comentarios:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            CommentsSection(),
          ],
        ),
      ),
    );
  }
}