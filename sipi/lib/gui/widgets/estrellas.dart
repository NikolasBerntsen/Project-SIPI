import 'package:flutter/material.dart';

class Estrellas extends StatefulWidget {
  final int ratingInicial; // Use final for constructor parameters
  const Estrellas(this.ratingInicial, {Key? key}) : super(key: key);

  @override
  _EstrellasState createState() => _EstrellasState();
}

class _EstrellasState extends State<Estrellas> {
  late int _rating; // Use late to initialize in initState

  @override
  void initState() {
    super.initState();
    _rating = widget.ratingInicial; // Initialize _rating in initState
  }

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  Widget _buildStar(int index) {
    IconData icon = index < _rating ? Icons.star : Icons.star_border;
    return IconButton(
      icon: Icon(icon, size: 40, color: Colors.yellow),
      onPressed: () {
        _setRating(index + 1);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) => _buildStar(index)),
    );
  }
}
