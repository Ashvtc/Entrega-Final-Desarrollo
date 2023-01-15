import 'dart:convert';

List<CursoDtoActualizado> cursoDtoFromJson(String str) => List<CursoDtoActualizado>.from(json.decode(str).map((x) => CursoDtoActualizado.fromJson(x)));

String cursoDtoToJson(List<CursoDtoActualizado> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CursoDtoActualizado {
  CursoDtoActualizado({
    required this.titulo,
    required this.prof,
    required this.descripcion,
    required this.foto,
    required this.id,
  });

  String titulo;
  String prof;
  String descripcion;
  String foto;
  String id;

  factory CursoDtoActualizado.fromJson(Map<String, dynamic> json) => CursoDtoActualizado(
    titulo: json["title"],
    prof: json["Prof"], //Falta que me muestren como se va a llamar esto
    descripcion: json["description"],
    foto: json["image"],
    id: json["courseId"],
  );

  Map<String, dynamic> toJson() => {
    "title": titulo,
    "Prof": prof,
    "description": descripcion,
    "image": foto,
    "courseId": id,
  };
}

