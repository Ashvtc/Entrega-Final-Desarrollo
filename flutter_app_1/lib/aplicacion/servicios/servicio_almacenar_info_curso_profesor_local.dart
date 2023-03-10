import 'package:flutter_pantalla_1/aplicacion/parameter_objects/parametro_adaptador_iterable.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/lecciones_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';
import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/usuario_temp.dart';
import '../../dominio/parameters_objects/info_curso_con_profesor.dart';
import '../../modelos/patron_iterador/iterado_generico/iterable_lista.dart';
import '../../modelos/patron_iterador/iterado_generico/iterador_lista.dart';
import '../../infraestructura/data/Adaptador/i_repository_bd.dart';
import '../../infraestructura/data/modelo_temporal/curso_temp.dart';

class ServicioGuardarInfoCursoProfesorDB{
  Future execute(ParametroAdaptadorIterable<IRepositorioMoor, IterableLista<InfoCursoConProfesor>> parametro) async {
    IRepositorioMoor adaptadorCursoProfesor = parametro.getAdaptador();
    IterableLista<InfoCursoConProfesor>? datos = parametro.getIterable();
    IteradorLista<InfoCursoConProfesor> iteradorDatos = datos.crearIterador();

    await adaptadorCursoProfesor.init();
    adaptadorCursoProfesor.guardarTodosLosCursos(traducirCursos(iteradorDatos));
    iteradorDatos.resetPosicionInicial();
    adaptadorCursoProfesor.guardarTodosLosUsuarios(traducirProfesores(iteradorDatos));
    adaptadorCursoProfesor.close();
  }

  List<CursoTemp> traducirCursos(IteradorLista<InfoCursoConProfesor> cursos) {
    List<CursoTemp> cursosTemp = [];
    int cont = 0;
    while (cursos.hasMore()) {
      cont++;
      InfoCursoConProfesor curso = cursos.getNext();
      cursosTemp.add(
        CursoTemp(
          BDid: cont,
          idCurso: int.parse(curso.idCurso.getId()),
          logo: curso.logoCurso.getLogo(),
          titulo: curso.tituloCurso.getTitulo(),
          descripcion: curso.descripcionCurso.getDescripcion(),
          idProf: int.parse(curso.idProfesor.getId()),
          estado: curso.estado,
        ),
      );
    }
    return cursosTemp;
  }

  List<UsuarioTemp> traducirProfesores(
      IteradorLista<InfoCursoConProfesor> profesores) {
    List<UsuarioTemp> usuariosTemp = [];
    int cont = 0;
    while (profesores.hasMore()) {
      cont++;
      InfoCursoConProfesor profesor = profesores.getNext();
      usuariosTemp.add(
        UsuarioTemp(
          BDid: cont,
          idProf: int.parse(profesor.getIdProfesor()),
          nombre: profesor.getNombreProfesor(),
        ),
      );
    }
    return usuariosTemp;
  }
}
