import 'dart:developer';

import 'package:flutter_pantalla_1/infraestructura/API/Dtos/curso_dto_actualizado.dart';
import 'package:flutter_pantalla_1/infraestructura/API/Dtos/leccion_dto_nuevaApi.dart';
import 'package:flutter_pantalla_1/infraestructura/API/I_api_nueva.dart';
import 'package:flutter_pantalla_1/infraestructura/API/urls.dart';
import 'package:http/http.dart' as http;

class Api_Nueva extends IAPINueva{

  @override
  Future<List<CursoDtoActualizado>?> getCursos() async{
    try{
      var url = Uri.parse(Urls.urlFinal + Urls.cursosFinalEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<CursoDtoActualizado> cursos = cursoDtoActualizadoFromJson(response.body);
        return cursos;
      }
    }catch(e){
      var a = e.toString();
      log(a);
      return null;
    }

  }

  @override
  Future<List<LeccionDtoNuevo>?> getLecciones(String id) async{
    try{
      var url = Uri.parse(Urls.urlFinal + '/lesson' + '/' + id);
      print(url);
      print('antes');
      var response = await http.get(url);
      print(response.body);
      print('despues');
      if (response.statusCode == 200) {
        print('curso' + id);
        List<LeccionDtoNuevo> lecciones = leccionDtoFromJson(response.body);
        return lecciones;
      }
    }catch(e){
      var a = e.toString();
      log(a);
      return null;
    }

  }
}