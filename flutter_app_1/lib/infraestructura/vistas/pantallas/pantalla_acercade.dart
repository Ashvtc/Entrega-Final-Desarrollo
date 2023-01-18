import 'package:flutter/material.dart';
import '../componentes/navbar.dart';

class PantallaAcercaDe extends StatefulWidget {
  const PantallaAcercaDe({Key? key}) : super(key: key);

  @override
  State<PantallaAcercaDe> createState() => _PantallaAcercaDeState();
}

class _PantallaAcercaDeState extends State<PantallaAcercaDe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        elevation: 0,
      ), 
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            body(context),                  
            nuestroEquipo(context),       
          ],
        ),
      ),
    );
  }
}

Widget body(context) {
  Size size = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      SizedBox(
        height: size.height * 0.1,
        child: Stack(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              height: size.height - 30,
              decoration: const BoxDecoration(
                  color: Color(0xFF2196F3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sobre nosotros',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget nuestroEquipo(context) {
  return Column(
    children: [
      Image.asset('assets/imgs/team.jpg'),
      const Text(
              'Somos el equipo Titans, conformado por:',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 83, 85, 90),
              ),
              textAlign: TextAlign.center,
            ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          datosPersona('assets/imgs/profilef.jpg', 'Ashly Colmenares', 'front-end'),
          datosPersona('assets/imgs/profilem4.jpg', 'David Liendo', 'front-end'),
          datosPersona('assets/imgs/profilem.jpg', 'Carlos Ortega', 'front-end'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          datosPersona('assets/imgs/profilem3.jpg', 'Kleeders Ortiz', 'front-end'),
          datosPersona('assets/imgs/profilem.jpg', 'Daniel Carvajal', 'back-end'),
          datosPersona('assets/imgs/profilem2.jpg', 'Marcos Duque', 'back-end'),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          datosPersona('assets/imgs/profilem.jpg', 'William Gandino', 'back-end'),
          datosPersona('assets/imgs/profilem2.jpg', 'Aitor Parrilla', 'back-end'),
          datosPersona('assets/imgs/profilem4.jpg', 'Cesar Reyes', 'back-end'),
        ],
      ),
    ],
  );
}

Widget datosPersona(imagenProfile, String nombre, String areaTrabajo ) {
  return Column(
    children: [
      Image.asset(imagenProfile, width: 70),
      Text( nombre,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Text(
        areaTrabajo,
        style: const TextStyle(
          color: Colors.grey,
        ),
      ),
    ],
  );
}