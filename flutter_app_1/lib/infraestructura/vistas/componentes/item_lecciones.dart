import 'package:flutter/material.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/leccion.dart';
import 'package:flutter_pantalla_1/infraestructura/vistas/pantallas/pantalla_leccion_detallada.dart';

// class ItemLecciones extends StatefulWidget {
//   final IdCurso idCurso;
//   final Leccion leccion;
//   const ItemLecciones({required this.idCurso, required this.leccion, Key? key}) : super(key: key);

//   @override
//   State<ItemLecciones> createState() => _ItemLeccionesState();
// }

// class _ItemLeccionesState extends State<ItemLecciones> {
//   @override
Widget itemLecciones(IdCurso idCurso, Leccion? leccion, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return PantallaDetalleLeccion(
                leccion!.getTituloLeccion(),
                leccion.getDescripcionLeccion(),
                'https://www.youtube.com/watch?v=rPYMbhR-8RU');
          },
        ),
      );
    },
    child: itemLeccionDetalle(context, idCurso),
  );
}

Widget itemLeccionDetalle(BuildContext context, IdCurso idCurso) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            infoLeccion(context, idCurso),
          ],
        ),
      ),
    ),
  );
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

Widget infoLeccion(context, IdCurso idCurso) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
         'Lección ${idCurso.getId()}',
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
