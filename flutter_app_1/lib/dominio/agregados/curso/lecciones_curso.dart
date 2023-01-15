import 'package:flutter_pantalla_1/dominio/agregados/leccion/id_leccion.dart';
class LeccionesCurso {
  List<IdLeccion> lecciones;

  LeccionesCurso({required this.lecciones});

  List<IdLeccion> getLecciones() {
    return lecciones;
  }
}
