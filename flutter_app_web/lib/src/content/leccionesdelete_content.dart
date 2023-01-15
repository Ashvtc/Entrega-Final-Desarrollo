import 'package:flutter_app_web/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class LeccionesDeleteContent extends ResponsiveWidget {
  const LeccionesDeleteContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => LeccionesDeleteContentResponsive(200);

  @override
  Widget buildMobile(BuildContext context) => LeccionesDeleteContentResponsive(24);
}

class LeccionesDeleteContentResponsive extends StatelessWidget {
  final horizontalPadding;

  LeccionesDeleteContentResponsive(this.horizontalPadding);

  final leccionid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          children: [
            Text(
              "Elimina una Leccion",
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