import 'package:flutter/material.dart';

class ItemLecciones extends StatelessWidget {
  const ItemLecciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              infoLeccion(context),
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration boxDecoration(context) {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: const Color(0xFF6297C6),
      width: 1.5,
    ),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const <BoxShadow>[
      BoxShadow(
          color: Colors.black45, offset: Offset(5.0, 5.0), blurRadius: 10.0),
    ],
  );
}

Widget infoLeccion(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Lección',
        style: Theme.of(context).textTheme.headline3,
      ),
      const SizedBox(height: 3.0),
      const Text(
        'Descripción Lección', //this.curso.descripcion
        style: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF000000),
        ),
      ),
    ],
  );
}
