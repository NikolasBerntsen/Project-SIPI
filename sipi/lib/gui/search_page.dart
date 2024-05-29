// lib/gui/search_page.dart

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        
          },
        ),
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: ListView.builder(
          itemCount: 10, 
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                'Resultado $index',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
               
              },
            );
          },
        ),
      ),
    );
  }
}


