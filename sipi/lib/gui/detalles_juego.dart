import 'package:flutter/material.dart';
import 'package:sipi/dominio/juego.dart';
import 'package:sipi/gui/comentarios.dart';
import 'package:sipi/gui/widgets/estrellas.dart';

class DetallesJuego extends StatelessWidget {
  final Juego game;
  const DetallesJuego({super.key, required this.game});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.nombreJuego),
      ),
      body: SingleChildScrollView(
        //padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(game.imagenURL), 
            SizedBox(height: 16.0),
            Text(
              game.nombreJuego,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              game.descripcion,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reseñas generales:', style: TextStyle(fontWeight: FontWeight.bold)),
                Estrellas(game.puntuacion),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Plataformas disponibles:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            mostrarLista(lista: game.plataformas),
            SizedBox(height: 16.0),
            Text(
              'Fecha de lanzamiento:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(game.fechaLanzamiento),
            SizedBox(height: 16.0),
            Text(
              'Desarrollador:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(game.desarrollador),
            SizedBox(height: 16.0),
            Text(
              'Requisitos de sistema:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(game.requisitos),
            SizedBox(height: 16.0),
            Text(
              'Etiquetas populares para este juego:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            mostrarLista(lista: game.etiquetas),
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

class mostrarLista extends StatelessWidget {
  const mostrarLista({
    super.key,
    required this.lista,
  });

  final List<String> lista;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          final String item = lista[index];
          return Chip(label: Text(item));
        }
      ),
    );
  }
}