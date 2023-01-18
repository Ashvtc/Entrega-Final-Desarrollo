import 'package:flutter_pantalla_1/dominio/agregados/profesor/profesor.dart';
import '../API/Dtos/curso_dto.dart';
import 'package:flutter_pantalla_1/infraestructura/API/api.dart';
import '../../dominio/agregados/curso/curso.dart';
import '../../dominio/fabricas/fabrica_curso.dart';
import '../../dominio/fabricas/fabrica_profesor.dart';
import '../../dominio/repositorios/i_repositorio_curso_profesor.dart';

class ApiJsonRepository implements IRepositorioCursoProfesor {
  FabricaCurso fabricaCurso = FabricaCurso();
  FabricaProfesor fabricaProfesor = FabricaProfesor();

  List<Curso> traducirCursos(List<CursoDto>? cursos) {
    List<Curso> cursosAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
      //Profesor profe = fabricaProfesor.reconstruirProfesor(
      //    cont.toString(), cursos[cont].prof);
      Profesor profe = crearProf(cont.toString(), cursos[cont].prof;
      cursosAgg.add(
        fabricaCurso.reconstruirCurso(
          cursos[cont].id,
          cursos[cont].foto,
          cursos[cont].titulo,
          cursos[cont].descripcion,
          profe.getId(),
        )
      );
    }
    return cursosAgg;
  }

  List<Profesor> traducirProfesores(List<CursoDto>? cursos) {
    List<Profesor> profesoresAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
     // Profesor profe = fabricaProfesor.reconstruirProfesor(
     //     cont.toString(), cursos[cont].prof);
      profesoresAgg.add(crearProf(cont.toString(), cursos[cont].prof));
    }
    return profesoresAgg;
  }

  Profesor crearProf(String id, String nombre){
    return fabricaProfesor.reconstruirProfesor(id, nombre);
  }

  @override
  Future<List<Curso>>? getCursos() async {
    List<CursoDto>? cursos = await Api().getCursos();
    List<Curso>? cursosAgg = traducirCursos(cursos);
    return cursosAgg;
  }

  @override
  Future<List<Profesor>>? getProfesores() async {
    List<CursoDto>? cursos = await Api().getCursos();
    List<Profesor>? profesoresAgg = traducirProfesores(cursos);
    return profesoresAgg;
  }
}
