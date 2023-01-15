import 'dart:html';
import 'package:http/http.dart' as http;

import 'package:flutter_app_web/infraestructura/vistas/componentes/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../../aplicacion/servicios/servicio_curso_actualizar.dart';

class CursosUpdateContent extends ResponsiveWidget {
  const CursosUpdateContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => CursosUpdateContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => CursosUpdateContentResponsive(24);
}

class CursosUpdateContentResponsive extends StatelessWidget {
  final horizontalPadding;

  CursosUpdateContentResponsive(this.horizontalPadding);

  final cursoid = TextEditingController();
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
              "Modifica un Curso",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursoid,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Id')),
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
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                  ActualizarCursoService().ActualizarCurso();
                },
                child: Text(
                  'Actualizar',
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



crearcurso(String Text) async{
  var url = Uri.https('example.com', 'whatsit/create');
  var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read(Uri.https('example.com', 'foobar.txt')));
}