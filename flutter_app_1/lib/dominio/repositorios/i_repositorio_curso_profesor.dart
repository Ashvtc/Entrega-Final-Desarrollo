import '../agregados/curso/curso.dart';
import '../agregados/profesor/profesor.dart';

abstract class IRepositorioCursoProfesor {
  Future<List<Curso>>? getCursos();
  Future<List<Profesor>>? getProfesores();
}
