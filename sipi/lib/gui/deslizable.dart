import 'package:flutter/material.dart';

class Delizable extends StatelessWidget {
  const Delizable({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Pedroperez1990"),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/03/46/83/96/1000_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg'), // Ruta a la imagen del avatar
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          DrawerItem(
            icon: Icons.library_books,
            text: 'Popular',
            onTap: () {
              Navigator.pushReplacementNamed(context, "/home");
            },
          ),
          DrawerItem(
            icon: Icons.search,
            text: 'Buscar',
            onTap: () {
              Navigator.pushReplacementNamed(context, "/busqueda");
            },
          ),
          DrawerItem(
            icon: Icons.person,
            text: 'Perfil',
            onTap: () {
              Navigator.pushReplacementNamed(context, "/perfil");
            },
          ),
          DrawerItem(
            icon: Icons.favorite,
            text: 'Favoritos',
            onTap: () {
              //Navigator.pushReplacementNamed(context, "/Favoritos");
            },
          ),
          DrawerItem(
            icon: Icons.rate_review,
            text: 'Reseñas',
            onTap: () {
              //Navigator.pushReplacementNamed(context, "/Reseñas");
            },
          ),
          DrawerItem(
            icon: Icons.pending_actions,
            text: 'Solicitudes',
            onTap: () {
              Navigator.pushReplacementNamed(context, "/solicitudes");
            },
          ),
          DrawerItem(
            icon: Icons.settings,
            text: 'Configuración',
            onTap: () {
              //Navigator.pushReplacementNamed(context, "/configuracion");
            },
          ),
          DrawerItem(
            icon: Icons.tag_faces_sharp,
            text: 'Suscripciones',
            onTap: () {
              Navigator.pushReplacementNamed(context, "/suscripciones");
            },
          ),
          DrawerItem(
            icon: Icons.logout,
            text: 'Cerrar sesión',
            onTap: () {
              //Navigator.pushReplacementNamed(context, "/Login");
            },
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const DrawerItem({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[500]),
      title: Text(text, style: TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
}