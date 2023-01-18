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
    required this.estado,
  });

  String titulo;
  String prof;
  String descripcion;
  String foto;
  String id;
  String estado;

  factory CursoDtoActualizado.fromJson(Map<String, dynamic> json) => CursoDtoActualizado(
    titulo: json["title"],
    prof: json["professorName"],
    descripcion: json["description"],
    foto: json["imagen"],
    id: json["id"],
    estado: json['state'],
  );

  Map<String, dynamic> toJson() => {
    "title": titulo,
    "professorName": prof,
    "description": descripcion,
    "imagen": foto,
    "id": id,
    "state": estado,
  };
}

