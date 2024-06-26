// lib/gui/search_page.dart

import 'package:flutter/material.dart';
import 'package:sipi/dominio/juego.dart';
import 'package:sipi/gui/deslizable.dart';
import 'package:sipi/gui/detalles_juego.dart';
import 'package:sipi/infraestructura/consultar_api.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Juego> resultados = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Delizable(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Buscar...',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white70),
          ),
          style: TextStyle(color: Colors.white),
          onChanged: (query) {
            setState(() {
              resultados = ConsultarAPI.buscar(_searchController.text);
            });
          },
        ),
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: ListView.builder(
          itemCount: resultados.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                "${resultados[index].nombreJuego}",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      child: DetallesJuego(game: resultados[index]),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
