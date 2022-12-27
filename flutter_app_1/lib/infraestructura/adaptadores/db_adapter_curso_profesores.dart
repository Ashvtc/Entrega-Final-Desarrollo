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
  List<Profesor>? profesoresAgg;
  List<Curso>? cursosAgg;
  List<CursoTemp>? cursos;
  List<UsuarioTemp>? usuarios;

  @override
  Future getData() async {
    AdaptadorMoor adaptadorMoor = AdaptadorMoor();
    adaptadorMoor.init();
    cursos = await adaptadorMoor.getCursosBD();
    usuarios = await adaptadorMoor.getUsuariosBD();
    adaptadorMoor.close();
    fabrica();
  }

  void fabrica() {
    cursosAgg = [];
    profesoresAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
      cursosAgg!.add(
        fabricaCurso.reconstruirCurso(
          cursos![cont].idCurso.toString(),
          cursos![cont].logo,
          cursos![cont].titulo,
          cursos![cont].descripcion,
          cursos![cont].idProf.toString(),
        ),
      );
    }
    for (int cont = 0; cont < usuarios!.length; cont++) {
      Profesor profe = fabricaProfesor.reconstruirProfesor(
          usuarios![cont].idProf.toString(), usuarios![cont].nombre);
      profesoresAgg!.add(profe);
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
