import 'dart:convert';

import 'package:flutter_pantalla_1/infraestructura/API/Dtos/contenido_dto.dart';

List<LeccionDtoNuevo> leccionDtoFromJson(String str) => List<LeccionDtoNuevo>.from(json.decode(str).map((x) => LeccionDtoNuevo.fromJson(x)));

String leccionDtoToJson(List<LeccionDtoNuevo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LeccionDtoNuevo {
  LeccionDtoNuevo({
    required this.titulo,
    required this.descripcion,
    required this.id,
    required this.cursoId,
    required this.contenido,
  });

  String titulo;
  String descripcion;
  String id;
  String cursoId;
  ContenidoDto contenido;

  factory LeccionDtoNuevo.fromJson(Map<String, dynamic> json) =>
      LeccionDtoNuevo(
          titulo: json['title'],
          descripcion: json['description'],
          id: json['id'],
          cursoId: json['CourseId'],
          contenido: json['video'].map((x) => ContenidoDto.fromJson(x)),
      );

  Map<String, dynamic> toJson() => {
    "title": titulo,
    "description": descripcion,
    "id": id,
    "CourseId": cursoId,
    "video": contenido,
  };
}