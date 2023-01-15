import 'dart:html';
import 'package:http/http.dart' as http;

import 'package:flutter_app_web/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class CursosDeleteContent extends ResponsiveWidget {
  const CursosDeleteContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => CursosDeleteContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => CursosDeleteContentResponsive(24);
}

class CursosDeleteContentResponsive extends StatelessWidget {
  final horizontalPadding;

  CursosDeleteContentResponsive(this.horizontalPadding);

  final cursoid = TextEditingController();  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Elimina un Curso",
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                  print('El Boton Funciona');
                },
                child: Text(
                  'Eliminar',
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