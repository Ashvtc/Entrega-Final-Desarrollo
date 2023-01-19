

import 'package:flutter_pantalla_1/dominio/agregados/curso/lecciones_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';
import 'package:flutter_pantalla_1/dominio/agregados/profesor/profesor.dart';
import 'package:flutter_pantalla_1/dominio/fabricas/fabrica_leccion.dart';
import 'package:flutter_pantalla_1/infraestructura/API/Dtos/curso_dto_actualizado.dart';
import 'package:flutter_pantalla_1/infraestructura/API/Dtos/leccion_dto_nuevaApi.dart';
import 'package:flutter_pantalla_1/infraestructura/API/I_api_nueva.dart';
import 'package:flutter_pantalla_1/infraestructura/API/api_nueva.dart';
import 'package:flutter_pantalla_1/infraestructura/adaptadores/json_adpter_leccion_contenido.dart';
import '../../dominio/agregados/leccion/leccion.dart';
import '../API/Dtos/curso_dto.dart';
import '../../dominio/agregados/curso/curso.dart';
import '../../dominio/fabricas/fabrica_curso.dart';
import '../../dominio/fabricas/fabrica_profesor.dart';
import '../../dominio/repositorios/i_repositorio_curso_profesor.dart';

class ApiJsonRepository implements IRepositorioCursoProfesor {
  FabricaCurso fabricaCurso = FabricaCurso();
  FabricaProfesor fabricaProfesor = FabricaProfesor();
  ApiJsonRepositoryLeccionYContenido repoLeccion = ApiJsonRepositoryLeccionYContenido();

  Future<List<Curso>> traducirCursos(List<CursoDtoActualizado>? cursos) async{
    List<Curso> cursosAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
      //List<LeccionDtoNuevo>? leccionesDelCursoApi = await Api_Nueva().getLecciones(cursos[cont].id);
      List<Leccion>? leccionesDelCurso = ApiJsonRepositoryLeccionYContenido().traducirLecciones( await Api_Nueva().getLecciones(cursos[cont].id.toString()));
      List<IdLeccion> idLeccionCurso = [];
      for (int i = 0; i < leccionesDelCurso!.length; i++){
        idLeccionCurso.add(leccionesDelCurso[i].idLeccion);
      }
      Profesor profe = crearProf(cont.toString(), cursos[cont].prof);
      cursosAgg.add(
        fabricaCurso.reconstruirCurso(
          cursos[cont].id.toString(),
          cursos[cont].foto,
          cursos[cont].titulo,
          cursos[cont].descripcion,
          profe.getId(),
          idLeccionCurso,
          cursos[cont].estado,
        )
      );
    }
    return cursosAgg;
  }

  List<Profesor> traducirProfesores(List<CursoDtoActualizado>? cursos) {
    List<Profesor> profesoresAgg = [];
    for (int cont = 0; cont < cursos!.length; cont++) {
      profesoresAgg.add(crearProf(cont.toString(), cursos[cont].prof));
    }
    return profesoresAgg;
  }

  Profesor crearProf(String id, String nombre){
    return fabricaProfesor.reconstruirProfesor(id, nombre);
  }

  @override
  Future<List<Curso>?>? getCursos() async {
    List<CursoDtoActualizado>? cursos = await Api_Nueva().getCursos();
    List<Curso>? cursosAgg = await traducirCursos(cursos) as List<Curso>?;
    return cursosAgg;
  }

  @override
  Future<List<Profesor>>? getProfesores() async {
    List<CursoDtoActualizado>? cursos = await Api_Nueva().getCursos();
    List<Profesor>? profesoresAgg = traducirProfesores(cursos);
    return profesoresAgg;
  }
}
