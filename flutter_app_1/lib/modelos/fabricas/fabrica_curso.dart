import 'package:flutter_pantalla_1/modelos/agregados/curso/curso.dart';
import 'package:flutter_pantalla_1/modelos/agregados/curso/logo_curso.dart';
import 'package:flutter_pantalla_1/modelos/agregados/curso/titulo_curso.dart';
import 'package:flutter_pantalla_1/modelos/agregados/curso/descripcion_curso.dart';
import 'package:flutter_pantalla_1/modelos/agregados/profesor/id_profesor.dart';
import 'package:flutter_pantalla_1/modelos/agregados/curso/id_curso.dart';

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
