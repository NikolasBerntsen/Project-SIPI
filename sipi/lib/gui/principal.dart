import 'package:flutter/material.dart';
import 'package:sipi/gui/deslizable.dart';
import 'package:sipi/gui/widgets/section_title.dart';
import 'package:sipi/gui/widgets/game_row.dart';
import 'package:sipi/infraestructura/consultar_api.dart';

class Principal extends StatelessWidget {
  Principal({super.key});

  final List<String> etiquetas = ConsultarAPI.categorias();
  final List<String> plataformas = ConsultarAPI.plataformas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Delizable(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...etiquetas.map((item) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: item),
                    GameRow(games: ConsultarAPI.buscargenero(item)),
                  ],
                )),
            ...plataformas.map((item) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: item),
                    GameRow(games: ConsultarAPI.buscarplataforma(item)),
                  ],
                )),
                const SectionTitle(title: "Tus juegos"),
                GameRow(games: ConsultarAPI.misJuegos()),
          ],
        ),
      ),
    );
  }
}
