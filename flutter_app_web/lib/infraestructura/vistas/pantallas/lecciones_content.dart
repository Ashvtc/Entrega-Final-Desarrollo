import 'package:flutter_app_web/infraestructura/vistas/componentes/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../../aplicacion/servicios/servicio_leccion_insertar.dart';

class LeccionesContent extends ResponsiveWidget {
  const LeccionesContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => LeccionesContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => LeccionesContentResponsive(24);
}

class LeccionesContentResponsive extends StatelessWidget {
  final horizontalPadding;

  LeccionesContentResponsive(this.horizontalPadding);

  final leccionid = TextEditingController();
  final leccionidcurso = TextEditingController();
  final lecciontitulo = TextEditingController();
  final lecciondescripcion = TextEditingController();
  final lecciontitulovideo = TextEditingController();
  final leccionurlvideo = TextEditingController();
  final lecciontipovideo = TextEditingController();
  final leccionduracionvideo =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Añade una Leccion",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: leccionid,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'ID')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: lecciontitulo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Titulo')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: lecciondescripcion,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Descripcion')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: leccionidcurso,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Id del Curso Asociado')),
            ),
            SizedBox(height: 15),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: lecciontitulovideo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Titulo Video')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: leccionurlvideo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'URL Video')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: lecciontipovideo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Tipo Video')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: leccionduracionvideo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Duracion Video')),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                    String leccionidcurso2 = leccionidcurso.toString();
                    String lecciontitulo2 = lecciontitulo.toString();
                    String lecciondescripcion2 = lecciondescripcion.toString();
                    String lecciontitulovideo2 = lecciontitulo.toString();
                    String leccionurlvideo2 = leccionurlvideo.toString();
                    String lecciontipovideo2 = lecciontipovideo.toString();
                    String leccionduracionvideo2 =leccionduracionvideo.toString();
                  InsertarLeccionService().InsertarLeccion(leccionidcurso2, lecciontitulo2, lecciondescripcion2, lecciontitulovideo2, leccionurlvideo2, lecciontipovideo2, leccionduracionvideo2, leccionidcurso2);
                },
                child: Text(
                  'Añadir',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'rbold'
                  )
                )
              )
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class LessonContent extends StatelessWidget {
  const LessonContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 250,
    );
  }
}