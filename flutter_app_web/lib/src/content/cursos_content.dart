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

  final cursonombre = TextEditingController();
  final cursodescripcion = TextEditingController();
  final cursoprofesor = TextEditingController();
  final cursoimagen = TextEditingController();
  

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
                controller: cursonombre,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Nombre')),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursodescripcion,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Descripcion')),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursoprofesor,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Profesor')),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: cursoimagen,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Imagen')),
            ),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final String image;

  const _Image({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16),
        Image.asset(image),
        SizedBox(width: 16),
      ],
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