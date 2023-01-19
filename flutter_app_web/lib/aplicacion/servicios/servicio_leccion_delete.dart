import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EliminarLeccionService {
  EliminarLeccion({required Map <String, dynamic> lesson}) async{
    var url = Uri.parse('localhost:3000/lesson/${lesson['id']}');

    final response = await http.delete(url);
      if (response.statusCode == 200){
        return true;
      } else {
        throw Exception("Error al eliminar");
      }
      
    // print(await http.read(Uri.https('example.com', 'foobar.txt')));
  }
}