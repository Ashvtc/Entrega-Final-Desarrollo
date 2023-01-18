import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/contenido.dart';
import 'package:flutter_pantalla_1/dominio/fabricas/Fabrica_Contenido.dart';
import 'package:flutter_pantalla_1/dominio/fabricas/fabrica_leccion.dart';

import 'package:flutter_pantalla_1/dominio/repositorios/i_repositorio_leccion_contenido.dart';

import '../../dominio/agregados/leccion/leccion.dart';
import '../API/Dtos/contenido_dto.dart';
import '../API/Dtos/leccion_dto_nuevaApi.dart';


class ApiJsonRepositoryLeccionYContenido implements IRepositorioLeccionContenido {
  FabricaContenido fabricaContenido = FabricaContenido();
  FabricaLeccion fabricaLeccion = FabricaLeccion();

  List<Leccion> traducirLecciones(List<LeccionDtoNuevo>? lecciones) {
    List<Leccion> leccionesAgg = [];
    for (int cont = 0; cont < lecciones!.length; cont++) {
      Contenido video = crearContenido(
          cont.toString(), lecciones[cont].id, lecciones[cont].contenido);
      leccionesAgg.add(
          fabricaLeccion.reconstruirLeccion(
              lecciones[cont].id,
              lecciones[cont].cursoId,
              lecciones[cont].titulo,
              lecciones[cont].descripcion,
              video.getIdContenido())
      );
    }
    return leccionesAgg;
  }

  List<Contenido> traducirContenidos(List<LeccionDtoNuevo>? lecciones) {
    List<Contenido> contenidoAgg = [];
    for (int cont = 0; cont < lecciones!.length; cont++) {
      contenidoAgg.add(crearContenido(cont.toString(),
          lecciones[cont].id,
          lecciones[cont].contenido));
    }
    return contenidoAgg;
  }

  Contenido crearContenido(String id, String leccionId,
      ContenidoDto contenido) {
    return fabricaContenido.reconstruirContenido(
        id,
        leccionId,
        contenido.duracion,
        contenido.titulo,
        contenido.url);
  }

  @override
  Future<List<Leccion>>? getLecciones() async {
    List<LeccionDtoNuevo>? lecciones = await /* aqui va el nombre del nuevo adaptador de la api q aun no esta listo*/ ;
    List <Leccion>? leccionesAgg = traducirLecciones(lecciones);
    return leccionesAgg;
  }

  @override
  Future<List<Contenido>>? getContenidos() async {
    List<LeccionDtoNuevo>? contenidos = await /* aqui va el nombre del nuevo adaptador de la api q aun no esta listo*/ ;
    List <Contenido>? contenidosAgg = traducirContenidos(contenidos);
    return contenidosAgg;
  }

}