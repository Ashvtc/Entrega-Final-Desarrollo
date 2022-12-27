class LeccionDto {
  LeccionDto({
    required this.titulo,
    required this.descripcion,
    required this.id,
    required this.flutterCursoId,
  });

  String titulo;
  String descripcion;
  String id;
  String flutterCursoId;

  factory LeccionDto.fromJson(Map<String, dynamic> json) => LeccionDto(
    titulo: json["Titulo"],
    descripcion: json["descripcion"],
    id: json["id"],
    flutterCursoId: json["FlutterCursoId"],
  );

  Map<String, dynamic> toJson() => {
    "Titulo": titulo,
    "descripcion": descripcion,
    "id": id,
    "FlutterCursoId": flutterCursoId,
  };
}