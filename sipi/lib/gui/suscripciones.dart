import 'package:flutter/material.dart';

class Suscripciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar...',
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                CategoriaTag('Autos'),
                CategoriaTag('Multiplayer'),
                CategoriaTag('Accion'),
                CategoriaTag('Estrategia'),
                CategoriaTag('Co-op'),
                CategoriaTag('RPG'),
                CategoriaTag('Aventura'),
                CategoriaTag('Shooter'),
                CategoriaTag('MMO'),
                CategoriaTag('Singleplayer'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriaTag extends StatelessWidget {
  final String label;

  CategoriaTag(this.label);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[800],
      labelStyle: TextStyle(color: Colors.white),
    );
  }
}
