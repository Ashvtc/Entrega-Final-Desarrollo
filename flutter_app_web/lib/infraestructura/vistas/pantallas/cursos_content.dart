import 'dart:html';
import 'package:http/http.dart' as http;

import 'package:flutter_app_web/infraestructura/vistas/componentes/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../../aplicacion/servicios/servicio_curso_insertar.dart';

class CursosContent extends ResponsiveWidget {
  const CursosContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => CursosContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => CursosContentResponsive(24);
}

class CursosContentResponsive extends StatelessWidget {
  final horizontalPadding;

  CursosContentResponsive(this.horizontalPadding);

  final cursoid = TextEditingController();
  final cursostate = TextEditingController();
  final cursotitulo = TextEditingController();
  final cursologo = TextEditingController();
  final cursoprofesor = TextEditingController();
  final cursodescripcion = TextEditingController();
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Añade un Curso",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursoid,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'ID')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursotitulo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Titulo')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursologo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Logo (URL)')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursoprofesor,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Profesor')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursodescripcion,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Descripcion')),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursostate,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Estado')),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () async {
                  String cursoid2 = cursoid.toString();
                  String cursostate2 = cursostate.toString();
                  String cursotitulo2 = cursotitulo.toString();
                  String cursologo2 = cursologo.toString();
                  String cursoprofesor2 = cursoprofesor.toString();
                  String cursodescripcion2 = cursodescripcion.toString();
                  InsertarCursoService().InsertarCurso(cursoid2, cursostate2, cursotitulo2, cursologo2, cursoprofesor2, cursodescripcion2);
                },
                child: Text(
                  'Ingresar',
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

class CourseContent extends StatelessWidget {
  const CourseContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 250,
    );
  }
}



