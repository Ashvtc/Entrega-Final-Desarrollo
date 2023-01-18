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
            body(context),                  //Contenedor azul superior donde se da la bienvenida a la plataforma
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
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              height: size.height * 0.2 - 27,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 136, 156, 173),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Acerca de ...',
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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(
            left: 30.0, right: 30.0, top: 5.0, bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'Nuestro Equipo',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      )
    ],
  );
}