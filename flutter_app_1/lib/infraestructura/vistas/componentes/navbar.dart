import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Usuario',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ), 
            accountEmail: const Text(
              'usuario@email.com',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/564x/00/80/ee/0080eeaeaa2f2fba77af3e1efeade565.jpg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://i.pinimg.com/564x/be/19/50/be1950356c5de7b24020c9c388af7e10.jpg'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.info),
            title: Text(
              'Acerca de...',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text(
              'Modo Oscuro',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}