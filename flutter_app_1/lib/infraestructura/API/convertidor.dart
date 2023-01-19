
import 'package:flutter_pantalla_1/infraestructura/API/Dtos/curso_dto.dart';
import 'package:flutter_pantalla_1/infraestructura/API/api_nueva.dart';

class Convertidor {
  static void convertirALista(List cursos) async {
    var api = Api_Nueva();
    cursos = (await api.getCursos())!;
  }
/*
  static void convertirAListaLeccion(List lecciones) async {
    var api = Api_Nueva();
    lecciones = (await api.getLecciones())!;
  }

  static Future<CursoDto?> convertirAIntancia(int id) async {
    var api = Api();
    return (await api.getCursoEspecifico(id))!;
  }*/

  static String idk(CursoDto cursos) {
    return cursos.prof;
  }
}
