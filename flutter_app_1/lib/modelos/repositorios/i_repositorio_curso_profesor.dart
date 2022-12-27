import '../agregados/curso/curso.dart';
import '../agregados/profesor/profesor.dart';

abstract class IRepositorioCursoProfesor {
  Future getData();
  List<Curso>? getCursos();
  List<Profesor>? getProfesores();
}
