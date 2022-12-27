import 'package:flutter_pantalla_1/modelos/agregados/profesor/profesor.dart';
import '../../API/Dtos/curso_dto.dart';
import 'package:flutter_pantalla_1/API/api.dart';
import '../agregados/curso/curso.dart';
import '../fabricas/fabrica_curso.dart';
import '../fabricas/fabrica_profesor.dart';
import 'i_repositorio_curso_profesor.dart';

class ApiJsonRepository implements IRepositorioCursoProfesor {
  FabricaCurso fabricaCurso = FabricaCurso();
  FabricaProfesor fabricaProfesor = FabricaProfesor();
  List<Profesor>? profesoresAgg;
  List<Curso>? cursosAgg;
  List<CursoDto>? cursos;

  @override
  Future getData() async {
    cursos = await Api().getCursos();
    fabrica();
  }

  void fabrica() {
    cursosAgg = [];
    profesoresAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
      Profesor profe = fabricaProfesor.reconstruirProfesor(
          cont.toString(), cursos![cont].prof);
      profesoresAgg!.add(profe);
      cursosAgg!.add(
        fabricaCurso.reconstruirCurso(
          cursos![cont].id,
          cursos![cont].foto,
          cursos![cont].titulo,
          cursos![cont].descripcion,
          profe.id.getId(),
        ),
      );
    }
  }

  @override
  List<Curso>? getCursos() {
    return cursosAgg;
  }

  @override
  List<Profesor>? getProfesores() {
    return profesoresAgg;
  }
}
