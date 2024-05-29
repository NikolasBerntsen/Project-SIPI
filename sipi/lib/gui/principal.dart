import 'package:flutter/material.dart';
import 'package:sipi/gui/deslizable.dart';

class Principal extends StatelessWidget {
  Principal({super.key});

  String JUEGO_1 = "ScreenCheat";
  String JUEGO_1_URL =
      "https://images.igdb.com/igdb/image/upload/t_cover_big/fdhebb99wjlrxlwuapwo.jpg";
  String JUEGO_2 = "Friday Nigth Funky";
  String JUEGO_2_URL =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGuDKZVRaL0XzyRnDjfWlnTJS9JC3pHkROYipmVrcjtQ&s";
  String JUEGO_3 = "Five Nigth ar Freddys";
  String JUEGO_3_URL =
      "https://musicart.xboxlive.com/7/19f76700-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080";
  String JUEGO_4 = "Celeste";
  String JUEGO_4_URL =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLn4vqfLf2rxH4wp9x-V2rQpzJUVpVM2NdmwMHUB0c-g&s";
  String JUEGO_5 = "Pizza Tower";
  String JUEGO_5_URL =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIsg_GP3iEAKvt2ThjgmV6u4yH5Vb3LB0fHX2Pnukb8Q&s";
  String JUEGO_6 = "Pinneaple On Pizza";
  String JUEGO_6_URL =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaexU4jLHzErXwvxWGrGUH1sV37q-zBTCO8b2FMEyzsA&s";
  String JUEGO_7 = "Speed Runners";
  String JUEGO_7_URL =
      "https://store-images.s-microsoft.com/image/apps.50634.66726508910677917.a577adb2-6c73-4149-92ac-c3807d2d15cd.e78c4c54-33e7-47b8-bcc8-fa77e3055f41?q=90&w=177&h=265";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Delizable(),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title: 'Popular esta semana'),
            GameRow(
              games: [
                GameItem(imagePath: JUEGO_1_URL, title: JUEGO_1),
                GameItem(imagePath: JUEGO_2_URL, title: JUEGO_2),
              ],
            ),
            SectionTitle(title: 'Novedades de amigos'),
            GameRow(
              games: [
                GameItem(imagePath: JUEGO_3_URL, title: JUEGO_3),
              ],
            ),
            SectionTitle(title: 'Popular entre amigos'),
            GameRow(
              games: [
                GameItem(imagePath: JUEGO_4_URL, title: JUEGO_4),
                GameItem(imagePath: JUEGO_5_URL, title: JUEGO_5),
                GameItem(imagePath: JUEGO_6_URL, title: JUEGO_6),
                GameItem(imagePath: JUEGO_7_URL, title: JUEGO_7),
              ],
            ),
          ],
        )));
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class GameRow extends StatelessWidget {
  final List<GameItem> games;

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

class GameItem {
  final String imagePath;
  final String title;

  GameItem({required this.imagePath, required this.title});
}

class GameCard extends StatelessWidget {
  final GameItem game;

  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
    );
  }
}
