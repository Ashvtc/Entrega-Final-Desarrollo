import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/descripcion_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/id_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/titulo_leccion.dart';

import '../agregados/leccion/id_leccion.dart';

class FabricaLeccion{
  Leccion reconstruirLeccion(String idLeccion, String idCurso, String titulo, String descripcion, String contenido){
    return Leccion(
      idLeccion: IdLeccion(id: idLeccion),
      idCurso: IdCurso(id: idCurso),
      tituloLeccion: TituloLeccion(titulo: titulo),
      descripcionLeccion: DescripcionLeccion(descripcion: descripcion),
      contenido: IdContenido(id: contenido)
    );
}
}