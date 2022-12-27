import 'package:flutter_pantalla_1/dominio/agregados/curso/curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/logo_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/titulo_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/descripcion_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/profesor/id_profesor.dart';
import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';

class FabricaCurso {
  Curso reconstruirCurso(String id, String urlLogo, String titulo,
      String descripcion, String idProfesor) {
    return Curso(
      id: IdCurso(id: id),
      logo: LogoCurso(urlLogo: urlLogo),
      titulo: TituloCurso(titulo: titulo),
      descripcion: DescripcionCurso(descripcion: descripcion),
      profesor: IdProfesor(id: idProfesor),
    );
  }
}
