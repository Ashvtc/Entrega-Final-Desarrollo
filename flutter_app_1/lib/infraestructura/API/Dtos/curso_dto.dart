import 'dart:convert';
import '../Dtos/leccion_dto.dart';

List<CursoDto> cursoDtoFromJson(String str) => List<CursoDto>.from(json.decode(str).map((x) => CursoDto.fromJson(x)));

String cursoDtoToJson(List<CursoDto> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CursoDto {
  CursoDto({
    required this.titulo,
    required this.prof,
    required this.descripcion,
    required this.foto,
    required this.id,
    required this.leccion,
  });

  String titulo;
  String prof;
  String descripcion;
  String foto;
  String id;
  List<LeccionDto> leccion;

  factory CursoDto.fromJson(Map<String, dynamic> json) => CursoDto(
    titulo: json["Titulo"],
    prof: json["Prof"],
    descripcion: json["Descripcion"],
    foto: json["Foto"],
    id: json["id"],
    leccion: List<LeccionDto>.from(json["Leccion"].map((x) => LeccionDto.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Titulo": titulo,
    "Prof": prof,
    "Descripcion": descripcion,
    "Foto": foto,
    "id": id,
    "Leccion": List<dynamic>.from(leccion.map((x) => x.toJson())),
  };
}

