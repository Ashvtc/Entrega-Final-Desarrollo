import 'package:http/http.dart' as http;

// Aqui hay que colocar la Configuracion de la API

class InsertarCursoService {
  InsertarCurso(String cursostate, String cursotitulo, String cursologo, String cursoprofesor, String cursodescripcion) async{
    var url = Uri.https('localhost:3000/courses');

    var response = await http.post(
      url, 
      body: {"title": cursotitulo,
    "descripcion": cursodescripcion,
    "state": cursostate,
    "imagen": cursologo,
    "professorName": cursoprofesor,
      });

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    // print(await http.read(Uri.https('example.com', 'foobar.txt')));
  }
}