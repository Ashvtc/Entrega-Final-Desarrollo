import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/descripcion_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/titulo_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/id_contenido.dart';

class Leccion {
  IdLeccion idLeccion;
  IdCurso idCurso;
  TituloLeccion tituloLeccion;
  DescripcionLeccion descripcionLeccion;
  IdContenido contenido;

  Leccion({
    required this.idLeccion,
    required this.idCurso,
    required this.tituloLeccion,
    required this.descripcionLeccion,
    required this.contenido
  });

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

  IdContenido getContenido(){
    return contenido;
  }
}