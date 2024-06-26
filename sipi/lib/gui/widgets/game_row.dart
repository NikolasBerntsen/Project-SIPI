import 'package:flutter/material.dart';
import 'package:sipi/dominio/juego.dart';
import 'package:sipi/gui/widgets/game_card.dart';

class GameRow extends StatelessWidget {
  final List<Juego> games;

  const GameRow({super.key, required this.games});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: games.map((game) => GameCard(game: game)).toList(),
      ),
    );
  }
}
