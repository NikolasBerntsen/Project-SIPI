import 'package:flutter/material.dart';
import 'package:sipi/dominio/juego.dart';
import 'package:sipi/gui/detalles_juego.dart';

class GameCard extends StatelessWidget {
  final Juego game;

  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: DetallesJuego(game: game),
              );
            },
          );
        },
        child: Column(
          children: [
            Image.network(
              game.imagenURL,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              game.nombreJuego,
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

