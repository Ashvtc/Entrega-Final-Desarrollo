import 'package:flutter_pantalla_1/infraestructura/API/Dtos/leccion_dto.dart';

class ContenidoDto{
  String url;
  String titulo;
  String duracion;

  ContenidoDto({
    required this.url,
    required this.titulo,
    required this.duracion,
  });

  factory ContenidoDto.fromJson(Map<String, dynamic> json) => ContenidoDto(
      url: json['videoUrl'],
      titulo: json['title'],
      duracion: json['videoDuration'],
  );

  Map<String, dynamic> toJson() => {
    "videoUrl": url,
    "title": titulo,
    "videoDuration": duracion,
  };

}