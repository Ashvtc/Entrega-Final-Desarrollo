import '../../dominio/agregados/curso/curso.dart';
import '../../dominio/agregados/profesor/profesor.dart';
import '../../dominio/agregados/curso/id_curso.dart';
import '../../dominio/agregados/profesor/id_profesor.dart';
import '../../dominio/agregados/curso/descripcion_curso.dart';
import '../../dominio/agregados/curso/logo_curso.dart';
import '../../dominio/agregados/curso/titulo_curso.dart';
import '../../dominio/agregados/profesor/nombre_profesor.dart';
import '../../dominio/parameters_objects/info_curso_con_profesor.dart';
import '../../modelos/patron_iterador/iterado_generico/iterable_lista.dart';
import '../../dominio/repositorios/i_repositorio_curso_profesor.dart';

class ServicioInfoCursoProfesor {
  Future<IterableLista<InfoCursoConProfesor>> getTodosLosCursosConProfesores(
      IRepositorioCursoProfesor adaptadorCursoProfesor) async {
    List<Curso>? cursos;
    List<Profesor>? profesores;
    IterableLista<InfoCursoConProfesor> iterable = IterableLista();

    await adaptadorCursoProfesor.getData();
    cursos = adaptadorCursoProfesor.getCursos();
    profesores = adaptadorCursoProfesor.getProfesores();

    for (int cont = 0; cont < cursos!.length; cont++) {
      iterable.add(
        InfoCursoConProfesor(
          idCurso: IdCurso(id: cursos[cont].getId()),
          tituloCurso: TituloCurso(titulo: cursos[cont].getTitulo()),
          descripcionCurso:
              DescripcionCurso(descripcion: cursos[cont].getDescripcion()),
          logoCurso: LogoCurso(urlLogo: cursos[cont].getLogo()),
          idProfesor: IdProfesor(id: profesores![cont].getId()),
          nombreProfesor: NombreProfesor(
            nombre: profesores[cont].getNombre(),
          ),
        ),
      );
    }
    return iterable;
  }
}
