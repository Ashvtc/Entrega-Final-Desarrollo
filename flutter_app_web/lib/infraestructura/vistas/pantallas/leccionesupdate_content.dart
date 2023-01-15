import 'package:flutter_app_web/infraestructura/vistas/componentes/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../../aplicacion/servicios/servicio_leccion_actualizar.dart';

class LeccionesUpdateContent extends ResponsiveWidget {
  const LeccionesUpdateContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => LeccionesUpdateContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => LeccionesUpdateContentResponsive(24);
}

class LeccionesUpdateContentResponsive extends StatelessWidget {
  final horizontalPadding;

  LeccionesUpdateContentResponsive(this.horizontalPadding);

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
              "Modifica una Leccion",
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
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: (){
                  ActualizarLeccionService().ActualizarLeccion();
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