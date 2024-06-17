import 'package:flutter/material.dart';
import 'package:sipi/gui/deslizable.dart';
import 'package:sipi/gui/widgets/section_title.dart';
import 'package:sipi/gui/widgets/game_row.dart';
import 'package:sipi/gui/widgets/game_item.dart';

class Principal extends StatelessWidget {
  Principal({super.key});

  final String JUEGO_1 = "ScreenCheat";
  final String JUEGO_1_URL = "https://images.igdb.com/igdb/image/upload/t_cover_big/fdhebb99wjlrxlwuapwo.jpg";
  final String JUEGO_2 = "Friday Nigth Funky";
  final String JUEGO_2_URL = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGuDKZVRaL0XzyRnDjfWlnTJS9JC3pHkROYipmVrcjtQ&s";
  final String JUEGO_3 = "Five Nigth ar Freddys";
  final String JUEGO_3_URL = "https://musicart.xboxlive.com/7/19f76700-0000-0000-0000-000000000002/504/image.jpg?w=1920&h=1080";
  final String JUEGO_4 = "Celeste";
  final String JUEGO_4_URL = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLn4vqfLf2rxH4wp9x-V2rQpzJUVpVM2NdmwMHUB0c-g&s";
  final String JUEGO_5 = "Pizza Tower";
  final String JUEGO_5_URL = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIsg_GP3iEAKvt2ThjgmV6u4yH5Vb3LB0fHX2Pnukb8Q&s";
  final String JUEGO_6 = "Pinneaple On Pizza";
  final String JUEGO_6_URL = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaexU4jLHzErXwvxWGrGUH1sV37q-zBTCO8b2FMEyzsA&s";
  final String JUEGO_7 = "Speed Runners";
  final String JUEGO_7_URL = "https://store-images.s-microsoft.com/image/apps.50634.66726508910677917.a577adb2-6c73-4149-92ac-c3807d2d15cd.e78c4c54-33e7-47b8-bcc8-fa77e3055f41?q=90&w=177&h=265";

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
        ),
      ),
    );
  }
}

