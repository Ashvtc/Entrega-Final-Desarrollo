import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/duracion_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/id_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/videoUrl_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/titulo_leccion.dart';

class Contenido{
  IdLeccion idLeccion;
  IdContenido idContenido;
  Duracion duracion;
  TituloLeccion titulo;
  VideoUrl url;


  Contenido({
    required this.idLeccion,
    required this.idContenido,
    required this.duracion,
    required this.titulo,
    required this.url,
});

  String getIdLeccion() {
    return idLeccion.getId();
  }

  String getIdContenido() {
    return idContenido.getId();
  }

  String getTitulo() {
    return titulo.getTitulo();
  }

  String getDuracion() {
    return duracion.getDuracion();
  }

  String getUrl() {
    return url.getUrl();
  }

}