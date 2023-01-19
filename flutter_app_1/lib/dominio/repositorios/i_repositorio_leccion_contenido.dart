import 'package:flutter_pantalla_1/dominio/agregados/leccion/entidades/contenido/contenido.dart';
import 'package:flutter_pantalla_1/dominio/agregados/leccion/leccion.dart';

abstract class IRepositorioLeccionContenido{
  Future<List<Leccion>>? getLecciones(String id);
  Future<List<Contenido>>? getContenidos(String id);
}