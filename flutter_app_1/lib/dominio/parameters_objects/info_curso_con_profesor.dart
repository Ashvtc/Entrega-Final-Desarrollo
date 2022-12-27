import 'package:flutter_pantalla_1/dominio/agregados/curso/logo_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/titulo_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/descripcion_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/profesor/id_profesor.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/profesor/nombre_profesor.dart';

class InfoCursoConProfesor {
  IdCurso idCurso;
  LogoCurso logoCurso;
  TituloCurso tituloCurso;
  DescripcionCurso descripcionCurso;
  IdProfesor idProfesor;
  NombreProfesor nombreProfesor;

  InfoCursoConProfesor(
      {required this.idCurso,
      required this.logoCurso,
      required this.tituloCurso,
      required this.descripcionCurso,
      required this.idProfesor,
      required this.nombreProfesor});

  String getIdCurso() {
    return idCurso.getId();
  }

  String getLogoCurso() {
    return logoCurso.getLogo();
  }

  String getTituloCurso() {
    return tituloCurso.getTitulo();
  }

  String getDescripcionCurso() {
    return descripcionCurso.getDescripcion();
  }

  String getIdProfesor() {
    return idProfesor.getId();
  }

  String getNombreProfesor() {
    return nombreProfesor.getNombre();
  }
}
