import 'package:flutter/material.dart';
import 'package:sipi/gui/deslizable.dart';
import 'package:sipi/infraestructura/consultar_api.dart';

class Suscripciones extends StatefulWidget {
  @override
  _SuscripcionesState createState() => _SuscripcionesState();
}

class _SuscripcionesState extends State<Suscripciones> {
  List<String> categorias = ConsultarAPI.categorias();

  List<bool> _isSelected = [];

  @override
  void initState() {
    super.initState();
    _isSelected = List<bool>.filled(categorias.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Delizable(),
      appBar: AppBar(
          /*title: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar...',
            border: InputBorder.none,
          ),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),*/
          ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Número de columnas en el grid
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
          ),
          itemCount: categorias.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected[index] = !_isSelected[index];
                });
              },
              child: CategoriaTag(
                label: categorias[index],
                isSelected: _isSelected[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

class CategoriaTag extends StatelessWidget {
  final String label;
  final bool isSelected;

  CategoriaTag({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: isSelected ? Colors.blue : Colors.grey[800],
      labelStyle: TextStyle(color: Colors.white),
    );
  }
}
