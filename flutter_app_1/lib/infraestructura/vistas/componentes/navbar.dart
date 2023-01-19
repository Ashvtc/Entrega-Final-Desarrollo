import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/infraestructura/vistas/pantallas/pantalla_acercade.dart';
import 'package:flutter_pantalla_1/infraestructura/vistas/pantallas/pantalla_cursos.dart';
import 'package:flutter_pantalla_1/infraestructura/vistas/pantallas/pantalla_detalle_curso.dart';

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
                fontSize: 20,
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
                child: Image.asset(
                  'assets/imgs/profile.jpg',
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
          Row(
            children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const PantallaCursos())
                    );
                  },
                  icon: const Icon(Icons.home),
              ),
              const Text(
                  'Página Principal',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
              ),
            ],
          ),
          Row(
            children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const PantallaAcercaDe())
                    );
                  },
                  icon: const Icon(Icons.info),
                ),
                const Text(
                  'Acerca de ...',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
          Row(
            children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.dark_mode),
                ),
                const Text(
                  'Modo Oscuro',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}