import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sipi/infraestructura/consultar_api.dart';

class CargarJuego extends StatefulWidget {
  const CargarJuego({super.key});

  @override
  State<CargarJuego> createState() => _CargarJuegoState();
}

class _CargarJuegoState extends State<CargarJuego> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _descricionController = TextEditingController();
  final TextEditingController _imagenController = TextEditingController();
  final TextEditingController _requisitosController = TextEditingController();
  final TextEditingController _fechaLanzamientoController =
      TextEditingController();
  DateTime? _selectedDate;

  final List<String> _generos = ConsultarAPI.categorias();
  final Map<String, bool> _generosSeleccionados = {};
  final List<String> _plataformas =ConsultarAPI.plataformas();
  final Map<String, bool> _plataformasSeleccionados = {};

  @override
  void initState() {
    super.initState();
    for (var genero in _generos) {
      _generosSeleccionados[genero] = false;
    }
    for (var plataforma in _plataformas) {
      _plataformasSeleccionados[plataforma] = false;
    }
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _descricionController.dispose();
    _imagenController.dispose();
    _requisitosController.dispose();
    _fechaLanzamientoController.dispose();
    super.dispose();
  }

  void _limpiarCampos() {
    _nombreController.clear();
    _descricionController.clear();
    _imagenController.clear();
    _requisitosController.clear();
    _plataformasSeleccionados.forEach((key, _) {
      _plataformasSeleccionados[key] = false;
    });
    _fechaLanzamientoController.clear();
    _generosSeleccionados.forEach((key, _) {
      _generosSeleccionados[key] = false;
    });
    setState(() {
      
    });
  }

  Future<void> _subirJuego() async {
    String nombre = _nombreController.text;
    String descripcion = _descricionController.text;
    String imagen = _imagenController.text;
    String requisitos = _requisitosController.text;
    List<String> plataformas = _plataformasSeleccionados.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();
    String fechaLanzamiento = _fechaLanzamientoController.text;
    List<String> generosSeleccionados = _generosSeleccionados.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    // Crear un mapa con la información del formulario
    Map<String, dynamic> data = {
      'nombre': nombre,
      'descripcion': descripcion,
      'requisitos': requisitos,
      'plataformas': plataformas,
      'fechaLanzamiento': fechaLanzamiento,
      'generos': generosSeleccionados,
      'imagen': imagen,
    };

    ConsultarAPI.subirJuego(data);
    _limpiarCampos();
    // Crear un FormData para enviar la imagen y los datos
    /*FormData formData = FormData.fromMap(data);

    try {
      var response = await Dio()
          .post('https://tu-api-endpoint.com/upload', data: formData);
      if (response.statusCode == 200) {
        print('Juego subido exitosamente');
      } else {
        print('Error al subir el juego: ${response.statusCode}');
      }
    } catch (e) {
      print('Error al subir el juego: $e');
    }*/
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _fechaLanzamientoController.text =
            DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cargar juego'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _nombreController,
              decoration: InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            TextField(
              controller: _descricionController,
              decoration: InputDecoration(
                labelText: 'descripcion',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Imagen portada:'),
            SizedBox(height: 8.0),
            TextField(
                controller: _imagenController,
                decoration: InputDecoration(
                  labelText: 'Url Imagen',
                ),
                onSubmitted: (value) => setState(() {})),
            Text('Formatos soportados: JPG, PNG'),
            SizedBox(height: 16.0),
            Image.network(_imagenController.text,
                height: 500,
                width: 300,
                fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 300,
                width: 2,
                color: Colors.grey,
              );
            }),
            SizedBox(height: 16.0),
            TextField(
              controller: _requisitosController,
              decoration: InputDecoration(
                labelText: 'Requisitos para adquirir el juego',
              ),
            ),
            SizedBox(height: 16.0),
            Text('Plataformas:'),
            SizedBox(height: 8.0),
            Column(
              children: _plataformas.map((plataforma) {
                return CheckboxListTile(
                  title: Text(plataforma),
                  value: _plataformasSeleccionados[plataforma],
                  onChanged: (bool? value) {
                    setState(() {
                      _plataformasSeleccionados[plataforma] = value!;
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _fechaLanzamientoController,
              decoration: InputDecoration(
                labelText: 'Fecha de lanzamiento',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context),
                ),
              ),
              readOnly: true,
            ),
            SizedBox(height: 16.0),
            Text('Géneros:'),
            SizedBox(height: 8.0),
            Column(
              children: _generos.map((genero) {
                return CheckboxListTile(
                  title: Text(genero),
                  value: _generosSeleccionados[genero],
                  onChanged: (bool? value) {
                    setState(() {
                      _generosSeleccionados[genero] = value!;
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _subirJuego,
              child: Text('Subir juego'),
            ),
          ],
        ),
      ),
    );
  }
}
