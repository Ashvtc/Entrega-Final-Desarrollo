import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/usuario_temp.dart';
import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/curso_temp.dart';
import '../../infraestructura/data/Adaptador/adaptador_moor.dart';
import '../../dominio/repositorios/i_repositorio_curso_profesor.dart';
import '../../dominio/agregados/curso/curso.dart';
import '../../dominio/fabricas/fabrica_curso.dart';
import '../../dominio/fabricas/fabrica_profesor.dart';
import 'package:flutter_pantalla_1/dominio/agregados/profesor/profesor.dart';

class ApiBDRepository extends IRepositorioCursoProfesor {
  FabricaCurso fabricaCurso = FabricaCurso();
  FabricaProfesor fabricaProfesor = FabricaProfesor();
  AdaptadorMoor adaptadorMoor = AdaptadorMoor();

  List<Curso> traducirCursos(List<CursoTemp>? cursos) {
    List<Curso> cursosAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
      cursosAgg.add(
        fabricaCurso.reconstruirCurso(
          cursos[cont].idCurso.toString(),
          cursos[cont].logo,
          cursos[cont].titulo,
          cursos[cont].descripcion,
          cursos[cont].idProf.toString(),
        ),
      );
    }
    return cursosAgg;
  }

  List<Profesor> traducirProfesores(List<UsuarioTemp>? usuarios) {
    List<Profesor> profesoresAgg = [];
    for (int cont = 0; cont < usuarios!.length; cont++) {
      Profesor profe = fabricaProfesor.reconstruirProfesor(
          usuarios[cont].idProf.toString(), usuarios[cont].nombre);
      profesoresAgg.add(profe);
    }
    return profesoresAgg;
  }

  @override
  Future<List<Curso>> getCursos() async {
    adaptadorMoor.init();
    List<CursoTemp> cursos = await adaptadorMoor.getCursosBD();
    List<Curso> cursosAgg = traducirCursos(cursos);
    adaptadorMoor.close();
    return cursosAgg;
  }

  @override
  Future<List<Profesor>> getProfesores() async {
    adaptadorMoor.init();
    List<UsuarioTemp>? usuarios = await adaptadorMoor.getUsuariosBD();
    List<Profesor>? profesoresAgg = traducirProfesores(usuarios);
    adaptadorMoor.close();
    return profesoresAgg;
  }
}
