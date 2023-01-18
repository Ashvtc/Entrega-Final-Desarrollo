import 'dart:developer';
import '../API/Dtos/curso_dto.dart';
import '../API/iapi.dart';
import 'package:http/http.dart' as http;
import '../API/urls.dart';

class Api extends IAPI {
  @override
  Future<CursoDto?> getCursoEspecifico(int idDelCurso) async {
    try {
      var url = Uri.parse(Urls.url + Urls.cursosEndPoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        CursoDto curso = cursoDtoFromJson(response.body)[0];
        return curso;
      }
    } catch (e) {
      var a = e.toString();
      log(a);
    }
    return null;
  }

  @override
  Future<List<CursoDto>?> getCursos() async {
    try {
      var url = Uri.parse(Urls.url + Urls.cursosEndPoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CursoDto> cursos = cursoDtoFromJson(response.body);

        return cursos;
      }
    } catch (e) {
      var a = e.toString();
      log(a);
    }
    return null;
  }

  @override
  void getLecciones(int idDelCurso) {}

  @override
  void getLeccionEspecifica(int idDelCurso, int idDeLaLeccion) {}
}
