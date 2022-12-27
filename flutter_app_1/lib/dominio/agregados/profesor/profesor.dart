import 'package:flutter_pantalla_1/dominio/agregados/profesor/nombre_profesor.dart';
import 'package:flutter_pantalla_1/dominio/agregados/profesor/id_profesor.dart';

class Profesor {
  IdProfesor id;
  NombreProfesor nombre;

  Profesor({required this.id, required this.nombre});

  String getId() {
    return id.getId();
  }

  String getNombre() {
    return nombre.getNombre();
  }
}
