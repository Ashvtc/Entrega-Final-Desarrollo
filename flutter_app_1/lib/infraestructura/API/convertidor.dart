// import 'package:flutter/foundation.dart';
import 'package:flutter_pantalla_1/infraestructura/API/api.dart';
import 'package:flutter_pantalla_1/infraestructura/API/Dtos/curso_dto.dart';

class Convertidor {
  static void convertirALista(List cursos) async {
    var api = Api();
    cursos = (await api.getCursos())!;
  }

  static Future<CursoDto?> convertirAIntancia(int id) async {
    var api = Api();
    return (await api.getCursoEspecifico(id))!;
  }

  static String idk(CursoDto cursos) {
    return cursos.prof;
  }
}
