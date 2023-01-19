import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import '../componentes/lecciones.dart';

class PantallaDetalleCurso extends StatelessWidget {
  final String idCurso;
  final String tituloCurso;
  final String descripcionCurso;
  final String profesor;
  final String logoCurso;
    const PantallaDetalleCurso({
    required this.idCurso, required this.tituloCurso, required this.descripcionCurso, required this.profesor, required this.logoCurso,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2196F3),
      appBar: widgetAppBar(tituloCurso, context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            body(idCurso, tituloCurso, descripcionCurso, profesor, logoCurso, context), //Se muestra la información detallada del curso
          ],
        ),
      ),
    );
  }
}

PreferredSizeWidget? widgetAppBar(String tituloCurso, BuildContext context) {
  return AppBar(
    backgroundColor: const Color(0xFF2196F3),
    elevation: 0,
    automaticallyImplyLeading: false,
    leading: IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(Icons.arrow_back_ios),
    ),
    /* title: const Text (
      'Corsi',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ), */
    // actions: [
    //   like(false),
    // ],
  );
}


//Informacion detallada del curso
Widget body(String idCurso, String tituloCurso, String descripcionCurso, String profesor, String logoCurso, BuildContext context) { 
  Size size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 800, //size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                height: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 10.0, bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      tituloCurso,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      profesor,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 12, right: 12, top: 10.0, bottom: 10.0),
                    ),
                    Image.network(logoCurso),
                    // Image.asset(
                    //   'assets/imgs/CursoSinFondo.png',
                    //   fit: BoxFit.fitHeight,
                    // ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 12, right: 12, top: 10.0, bottom: 10.0),
                    ),
                    Text(
                      descripcionCurso,
                      style: Theme.of(context).textTheme.subtitle1,
                      textAlign: TextAlign.justify,
                    ),
                     leccionCurso(context, idCurso),                  //Se muestra el carrusel de las lecciones disponibles que tiene el curso
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


//Carrusel de lecciones disponibles del curso
Widget leccionCurso(context, String idcurso) {                                      
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 30.0, bottom: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'Lecciones publicadas',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'Ver todas',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
      CarouselLecciones(idCurso: IdCurso(id: idcurso), context: context),
    ],
  );
}
