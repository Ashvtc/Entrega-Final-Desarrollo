import 'package:flutter/material.dart';

class PantallaLecciones extends StatefulWidget {
  const PantallaLecciones({Key? key}) : super(key: key);

  @override
  State<PantallaLecciones> createState() => _PantallaLeccionesState();
}

class _PantallaLeccionesState extends State<PantallaLecciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            body(context),
          ],
        ),
      ),
    );
  }
}

Widget body(context) {
  Size size = MediaQuery.of(context).size;
  return Column(
    children: <Widget>[
      SizedBox(
        height: size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              height: size.height * 0.2 - 27,
              decoration: const BoxDecoration(
                  color: Color(0xFF2196F3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Lección',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}