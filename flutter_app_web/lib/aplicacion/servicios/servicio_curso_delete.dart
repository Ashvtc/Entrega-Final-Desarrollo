import 'package:http/http.dart' as http;

// Aqui hay que colocar la Configuracion de la API

class EliminarCursoService {
  EliminarCurso(String id) async{
    var url = Uri.https('URL Del API');

    final response = await http.delete(url);
      if (response.statusCode == 200){
        return true;
      } else {
        throw Exception("Error al eliminar");
      }

    // print(await http.read(Uri.https('example.com', 'foobar.txt')));
  }
}