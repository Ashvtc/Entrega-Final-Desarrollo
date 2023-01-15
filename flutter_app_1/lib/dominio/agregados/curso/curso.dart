import 'package:flutter_pantalla_1/dominio/agregados/curso/lecciones_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/logo_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/titulo_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/descripcion_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/profesor/id_profesor.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';

class Curso {
  IdCurso id;
  LogoCurso logo;
  TituloCurso titulo;
  DescripcionCurso descripcion;
  IdProfesor profesor;
  //LeccionesCurso lecciones;
  //String estado;

  Curso(
      {required this.id,
      required this.logo,
      required this.titulo,
      required this.descripcion,
      required this.profesor
      //required this.lecciones
      //required this.estado
      });

  String getLogo() {
    return logo.getLogo();
  }

  String getId() {
    return id.getId();
  }

  String getTitulo() {
    return titulo.getTitulo();
  }

  String getDescripcion() {
    return descripcion.getDescripcion();
  }

  IdProfesor getIdProfesor() {
    return profesor;
  }

  /*LeccionesCurso getLecciones(){
    return lecciones;
  }*/

}
