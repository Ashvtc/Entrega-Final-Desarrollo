import 'package:flutter_pantalla_1/infraestructura/API/Dtos/curso_dto_actualizado.dart';
import 'package:flutter_pantalla_1/infraestructura/API/Dtos/leccion_dto_nuevaApi.dart';

abstract class IAPINueva {

  Future<List<CursoDtoActualizado>?> getCursos();
  Future<List<LeccionDtoNuevo>?> getLecciones(String id);

}