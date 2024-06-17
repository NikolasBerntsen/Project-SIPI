import 'package:flutter/material.dart';
import 'package:sipi/gui/widgets/game_item.dart';

class GameCard extends StatelessWidget {
  final GameItem game;

  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/detallesJuego");
        },
        child: Column(
          children: [
            Image.network(
              game.imagePath,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(game.title, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
