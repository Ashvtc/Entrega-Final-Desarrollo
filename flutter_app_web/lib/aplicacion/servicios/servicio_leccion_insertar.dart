import 'package:http/http.dart' as http;

// Aqui hay que colocar la Configuracion de la API

class InsertarLeccionService {
  InsertarLeccion(String leccionidcurso, String lecciontitulo, String lecciondescripcion, String lecciontitulovideo, String leccionurlvideo, String lecciontipovideo, String leccionduracionvideo) async{
    var url = Uri.https('URL Del API');

    var response = await http.post(
      url, 
      body: {

    "title": lecciontitulo,
    "descripcion": lecciondescripcion,
    "video": {
      "videoUrl": leccionurlvideo,
      "type": lecciontipovideo,
      "title": lecciontitulovideo,
      "videoDuration": leccionduracionvideo
    },
    "CourseId": leccionidcurso,

      });

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}