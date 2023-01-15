import '../API/Dtos/curso_dto.dart';
import 'Dtos/leccion_dto.dart';
abstract class IAPINueva {

  Future<CursoDto?> getCursoEspecifico(int idDelCurso);
  Future<List<CursoDto>?>  getCursos();
  Future<LeccionDto?> getLecciones(int idDelCurso);
  void getLeccionEspecifica(int idDelCurso, int idDeLaLeccion);
}