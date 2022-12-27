import 'package:flutter_pantalla_1/modelos/agregados/profesor/nombre_profesor.dart';
import 'package:flutter_pantalla_1/modelos/agregados/profesor/id_profesor.dart';
import 'package:flutter_pantalla_1/modelos/agregados/profesor/profesor.dart';

class FabricaProfesor {
  Profesor reconstruirProfesor(String id, String nombre) {
    return Profesor(
      id: IdProfesor(id: id),
      nombre: NombreProfesor(nombre: nombre),
    );
  }
}
