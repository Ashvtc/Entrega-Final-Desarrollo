import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/duracion_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/id_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/videoUrl_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/titulo_leccion.dart';

class FabricaContenido{
  Contenido reconstruirContenido(String idContenido, String idLeccion, String duracion, String titulo, String url){
    return Contenido(
      idLeccion: IdLeccion(id: idLeccion),
      idContenido: IdContenido(id: idContenido),
      duracion: Duracion(duracion: duracion),
      titulo: TituloLeccion(titulo: titulo),
      url:  VideoUrl(url: url)
    );
  }
}