import 'package:flutter/material.dart';
import '../pantallas/pantalla_detalle_curso.dart';
import 'like_curso.dart';

class ItemCursosRecomendados extends StatefulWidget {
  const ItemCursosRecomendados({Key? key}) : super(key: key);

  @override
  State<ItemCursosRecomendados> createState() => _ItemCursosRecomendadosState();
}

class _ItemCursosRecomendadosState extends State<ItemCursosRecomendados> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const PantallaDetalleCurso(
                  idCurso: '1',
                  tituloCurso: '[Curso]',
                  descripcionCurso: '[Descripcion del curso]',
                  profesor: '',
                  logoCurso: 'https://www.formatemultiverse.com/wp-content/uploads/2020/04/clases-online.png');
            },
          ),
        );
      },
      child: itemCursoRecomendado(context),
    );
  }
}

Widget itemCursoRecomendado(BuildContext context) {
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
                cursoLogo(),
                likeSimple(), //metodo importado de la clase like_curso.dart
              ],
            ),
            infoCursoRecomendado(context),
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
      color: const Color(0xFF6297C6),
      width: 2.5,
    ),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: const <BoxShadow>[
      BoxShadow(
          color: Colors.black45, offset: Offset(5.0, 5.0), blurRadius: 10.0),
    ],
  );
}

Widget cursoLogo() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/imgs/CursoJavaScript.png', //this.nombre.logoCurso
        width: 130.0,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget favoriteIcon() {
  return const Icon(
    Icons.favorite_border,
    color: Colors.white,
  );
}

Widget infoCursoRecomendado(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'JavaScript', //this.curso.titulo
        style: Theme.of(context).textTheme.headline3,
      ),
      const Text(
        'José Hernandez', //this.curso.profesor
        style: TextStyle(
          fontSize: 13.0,
          color: Color(0xFF928F8F),
        ),
      ),
      const SizedBox(height: 5.0),
      const Text(
        overflow: (TextOverflow.ellipsis),
        'Aprende a utilizar funciones y herramientas de este lenguaje de forma rápida y sencilla', //this.curso.descripcion
        style: TextStyle(
          fontSize: 12.0,
          color: Color(0xFF000000),
        ),
      ),
    ],
  );
}
