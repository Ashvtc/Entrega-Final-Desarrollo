import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/usuario_temp.dart';
import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/curso_temp.dart';
import '../../../dominio/agregados/curso/curso.dart';
import '../../../dominio/agregados/profesor/profesor.dart';
import '../modelo_temporal/leccion_temporal.dart';

abstract class IRepositorioMoor {
  Future init();
  void close();
  Future<List<CursoTemp>> getCursosBD();
  Future<List<LeccionTemp>> getLeccionesBD();
  Future<List<UsuarioTemp>> getUsuariosBD();
  Future<CursoTemp> getCursoPorIdBD(int idCurso);
  Future<int> insertarCurso(CursoTemp curso);
  Future<int> insertarLeccion(LeccionTemp leccion);
  Future<int> insertarUsuario(UsuarioTemp usuario);
  void guardarTodosLosCursos(List<CursoTemp> cursos);
  void guardarTodosLosUsuarios(List<UsuarioTemp> usuario);
  List<Curso>? getCursos();
  List<Profesor>? getProfesores();
}
