import '../API/Dtos/curso_dto.dart';
abstract class IAPI {

  Future<CursoDto?> getCursoEspecifico(int idDelCurso);
  Future<List<CursoDto>?>  getCursos();
  void getLecciones(int idDelCurso);
  void getLeccionEspecifica(int idDelCurso, int idDeLaLeccion);
}