import 'package:flutter_app_web/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

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
  final lecciontitulo = TextEditingController();
  final lecciondescripcion = TextEditingController();

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
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Id')),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: lecciontitulo,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Titulo')),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: TextField(
                controller: lecciondescripcion,
                decoration: 
                  InputDecoration(border: OutlineInputBorder(), labelText: 'Descripcion')),
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