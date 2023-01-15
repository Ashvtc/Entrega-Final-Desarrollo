import 'dart:html';
import 'package:http/http.dart' as http;

import 'package:flutter_app_web/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

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
                  print('El Boton Funciona');
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



crearcurso(String Text) async{
  var url = Uri.https('example.com', 'whatsit/create');
  var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read(Uri.https('example.com', 'foobar.txt')));
}