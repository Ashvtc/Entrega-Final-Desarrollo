import 'package:flutter_pantalla_1/data/ModeloTamporal/UsuarioTemp.dart';
import 'package:flutter_pantalla_1/data/ModeloTamporal/cursoTemp.dart';
import '../../modelos/agregados/curso/curso.dart';
import '../../modelos/agregados/profesor/profesor.dart';

abstract class IRepositorioMoor {
  Future init();
  void close();
  Future<List<CursoTemp>> getCursosBD();
  //Future<List<LeccionTemp>> getLeccionesBD();
  Future<List<UsuarioTemp>> getUsuariosBD();
  Future<CursoTemp> getCursoPorIdBD(int idCurso);
  Future<int> insertarCurso(CursoTemp curso);
  //Future<int> insertarLeccion(LeccionTemp leccion);
  Future<int> insertarUsuario(UsuarioTemp usuario);
  void guardarTodosLosCursos(List<CursoTemp> cursos);
  void guardarTodosLosUsuarios(List<UsuarioTemp> usuario);
  List<Curso>? getCursos();
  List<Profesor>? getProfesores();
}
