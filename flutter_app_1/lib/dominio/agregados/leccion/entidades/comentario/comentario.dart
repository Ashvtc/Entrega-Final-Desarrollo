import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/comentario/comentario_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/comentario/usuario_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/comentario/id_comentario.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';

class Comentario {
  IdComentario idComentario;
  IdLeccion idLeccion;
  Usuario usuario;
  ComentarioTexto comentario;

  Comentario({
    required this.idComentario,
    required this.idLeccion,
    required this.usuario,
    required this.comentario
});

  String getIdComentatio(){
    return idComentario.getId();
  }

  String getIdLeccion(){
    return idLeccion.getId();
  }

  String getUsuario(){
    return usuario.getUsuario();
  }

  String getComentario(){
    return comentario.getComentario();
  }
}