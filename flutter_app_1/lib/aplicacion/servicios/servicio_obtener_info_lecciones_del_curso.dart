import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/id_contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/leccion.dart';
import 'package:flutter_pantalla_1/dominio/repositorios/i_repositorio_leccion_contenido.dart';
import 'package:flutter_pantalla_1/modelos/patron_iterador/iterado_generico/iterable_lista.dart';
import 'package:flutter_pantalla_1/modelos/result.dart';

class ServicioObtenerInfoLeccionesDelCurso {
  Future<Result<IterableLista<Leccion>>> execute(IRepositorioLeccionContenido adaptadorLeccion, IdCurso idCurso) async{
    IterableLista<Leccion> leccionesIterable = IterableLista();
    List<Leccion>? lecciones;
    List<Contenido>? contenidos;
    lecciones = await adaptadorLeccion.getLecciones(idCurso.getId());
    // contenidos = await adaptadorLeccion.getContenidos(idCurso.getId());

    // for (int i = 0; i < lecciones!.length; i++) {
    //   for (int j = 0; j < contenidos!.length; i++) {
    //     if(lecciones[i].getIdLeccion() == contenidos[j].getIdLeccion()) {
    //       lecciones[i].contenido = IdContenido(id: contenidos[j].getIdContenido()) ;
    //     }
    //   }
    // }

    for (int i = 0; i < lecciones!.length; i++) {
      leccionesIterable.add(lecciones[i]);
    }

    return Result<IterableLista<Leccion>>(valor: leccionesIterable);
  }
}