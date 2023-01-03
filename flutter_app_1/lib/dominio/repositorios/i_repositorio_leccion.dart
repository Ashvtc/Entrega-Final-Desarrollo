import 'package:flutter_pantalla_1/dominio/agregados/curso/id_curso.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/leccion.dart';

abstract class IRepositorioLeccion {
  List<Leccion>? getLeccionesDelCurso(IdCurso idCurso);
}