import 'dart:convert';

List<CursoDtoActualizado> cursoDtoActualizadoFromJson(String str) => List<CursoDtoActualizado>.from(json.decode(str).map((x) => CursoDtoActualizado.fromJson(x)));

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
  int id;
  String estado;

  factory CursoDtoActualizado.fromJson(Map<String, dynamic> json) => CursoDtoActualizado(
    id: json["id"],
    titulo: json["title"],
    foto: json["imagen"],
    descripcion: json["description"],
    estado: json['state'],
    prof: json["professorName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": titulo,
    "imagen": foto,
    "description": descripcion,
    "state": estado,
    "professorName": prof,
  };
}

