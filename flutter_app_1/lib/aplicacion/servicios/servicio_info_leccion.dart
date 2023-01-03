import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/leccion.dart';
import 'package:flutter_pantalla_1/dominio/repositorios/i_repositorio_leccion.dart';
import 'package:flutter_pantalla_1/modelos/patron_iterador/iterado_generico/iterable_lista.dart';

class ServicioInfoLeccionDelCurso {
  Future<IterableLista<Leccion>> getLeccionesDelCurso(IRepositorioLeccion adaptadorLeccion, IdCurso idCurso) async{
    IterableLista<Leccion> leccionesIterable = IterableLista();
    List<Leccion>? lecciones;
    lecciones = adaptadorLeccion.getLeccionesDelCurso(idCurso);

    for (int i = 0; i < lecciones!.length; i++) {
      leccionesIterable.add(lecciones[i]);
    }

    return leccionesIterable;
  }
}