import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/descripcion_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/titulo_leccion.dart';

class Leccion {
  IdLeccion idLeccion;
  IdCurso idCurso;
  TituloLeccion tituloLeccion;
  DescripcionLeccion descripcionLeccion;

  Leccion({required this.idLeccion,
          required this.idCurso,
          required this.tituloLeccion,
          required this.descripcionLeccion});

  String getIdLeccion() {
    return idLeccion.getId();
  }

  String getIdCurso() {
    return idCurso.getId();
  }

  String getTituloLeccion() {
    return tituloLeccion.getTitulo();
  }

  String getDescripcionLeccion() {
    return descripcionLeccion.getDescripcion();
  }
}