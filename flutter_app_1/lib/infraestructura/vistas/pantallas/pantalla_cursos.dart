import 'package:flutter/material.dart';
import '../componentes/cursos_recientes.dart';
import '../componentes/cursos_recomendados.dart';

class PantallaCursos extends StatefulWidget {
  const PantallaCursos({Key? key}) : super(key: key);

  @override
  State<PantallaCursos> createState() => _PantallaCursosState();
}

class _PantallaCursosState extends State<PantallaCursos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),                //AppBar (Menú)
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            body(context),                  //Contenedor azul superior donde se da la bienvenida
            cursosRecientes(context),       //Se muestra el carrusel de cursos recientes del usuario
            cursosRecomendados(context),    //Se muestra el carrusel de cursos recomendados para el usuario
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Image.asset(
        'assets/imgs/menu.png',
        width: 25.0,
      ),
      onPressed: null,
    ),
  );
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
                    '¡Bienvenid@ a Corsi!',
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

Widget cursosRecientes(context) {
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
              'Reciente',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Ver todos',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
      const CarouselCursosRecientes(),
    ],
  );
}

Widget cursosRecomendados(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(
            left: 30.0, right: 30.0, top: 20.0, bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'Para ti',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'Ver más',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
      const CarouselCursosRecomendados(),
    ],
  );
}
