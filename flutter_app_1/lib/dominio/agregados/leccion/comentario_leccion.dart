import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/comentario/id_comentario.dart';

class ComentariosLeccion {
  List<IdComentario> comentarios;

  ComentariosLeccion({required this.comentarios});

  List<IdComentario> getComentarios() {
    return comentarios;
  }
}
