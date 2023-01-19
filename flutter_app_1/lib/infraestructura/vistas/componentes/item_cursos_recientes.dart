import 'package:flutter/material.dart';
import '../pantallas/pantalla_detalle_curso.dart';
import 'like_curso.dart';
import '../../../dominio/parameters_objects/info_curso_con_profesor.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> getdata(String idCurso) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool b = (preferences.get('idCurso$idCurso') ?? false) as bool;
  return b;
}

Widget itemCursosRecientes(InfoCursoConProfesor? info, context) {
  return GestureDetector(
    onTap: widgetOnTap(
        info!.getIdCurso(),
        info.getTituloCurso(),
        info.getNombreProfesor(),
        info.getDescripcionCurso(),
        info.getLogoCurso(),
        context),
    child: itemCursoReciente(
        info.getIdCurso(),
        info.getTituloCurso(),
        info.getNombreProfesor(),
        info.getDescripcionCurso(),
        info.getLogoCurso(),
        context),
  );
}

widgetOnTap(String idCurso, String titulo, String profesor, String descripcion,
    String logoCurso, BuildContext context) {
  return (() => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return PantallaDetalleCurso(
                  titulo, descripcion, profesor, logoCurso);
            },
          ),
        )
      });
}

Widget itemCursoReciente(String idCurso, String titulo, String profesor,
    String descripcion, String logoCurso, BuildContext context) {
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
              children: <Widget>[
                cursoLogo(logoCurso),
                like(
                    idCurso,
                    getdata(
                        idCurso)), //metodo importado de la clase like_curso.dart
              ],
            ),
            infoCursoReciente(titulo, profesor, descripcion, context),
          ],
        ),
      ),
    ),
  );
}

BoxDecoration boxDecoration(context) {
  return BoxDecoration(
    color: const Color(0xFFFFFFFF),
    border: Border.all(
      color: const Color(0xFF528BBD),
      width: 2.5,
    ),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const <BoxShadow>[
      BoxShadow(
          color: Colors.black45, offset: Offset(5.0, 5.0), blurRadius: 10.0),
    ],
  );
}

Widget cursoLogo(String logoCurso) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(logoCurso, width: 130.0),
      // Image.asset(
      //   'assets/imgs/CursoUX.png', //this.curso.logoCurso
      //   width: 130.0,
      // ),
    ),
  );
}

Widget infoCursoReciente(
    String titulo, String profesor, String descripcion, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        titulo, //this.curso.titulo
        style: Theme.of(context).textTheme.headline3,
      ),
      Text(
        profesor, //this.curso.profesor
        style: const TextStyle(
          fontSize: 13.0,
          color: Color(0xFF928F8F),
        ),
      ),
      const SizedBox(height: 5.0),
      Text(
        overflow: (TextOverflow.ellipsis),
        descripcion, //this.curso.descripcion
        style: const TextStyle(
          fontSize: 12.0,
          color: Color(0xFF000000),
        ),
      ),
    ],
  );
}
