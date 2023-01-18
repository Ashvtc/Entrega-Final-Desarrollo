import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/usuario_temp.dart';
import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/curso_temp.dart';
import 'package:flutter_pantalla_1/infraestructura/data/modelo_temporal/leccion_temporal.dart';
import 'package:flutter_pantalla_1/infraestructura/data/moor/moor_db.dart';
import 'package:moor_flutter/moor_flutter.dart';

// En teoria esta listo, solo habria q reemplazar esto en el archivo de la bd y correr los comandos de migraciones, pero no lo voy a hacer hasta q este lista la api
// y se pueda probar bien, por si se van a hacer mas cambios y necesitan probar con la api vieja

part 'moor_db.g.dart';

// de aqui no hay q cambiar nada
class MoorCurso extends Table {
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idCurso => integer()();
  TextColumn get logo => text()();
  TextColumn get titulo => text()();
  TextColumn get descripcion => text()();
  IntColumn get idProf => integer()();
  TextColumn get estado => text()();

}
// tampoco hay q cambiar nada aqui
class MoorLeccion extends Table{
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idLeccion => integer()();
  TextColumn get titulo => text()();
  TextColumn get descripcion => text()();
  IntColumn get idCurso => integer()(); //Aqui debe haber una FK
}

// Ya no es necesario pero dejarlo cambia menos vainas
class MoorUsuario extends Table{
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idProf => integer()();
  TextColumn get nombreProf => text()();
}
/*
//Los 2 nuevos Objetos
class MoorComentario extends Table{
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idComentario => integer()();
  TextColumn get usuario => text()();
  TextColumn get texto => text()();
  IntColumn get idLeccion => integer()(); //Aqui debe haber una FK
}*/

class MoorContenido extends Table{
  IntColumn get BDid => integer().autoIncrement()();
  IntColumn get idCotenido => integer()();
  TextColumn get duracion => text()();
  TextColumn get titulo => text()();
  TextColumn get videoUrl => text()();
  IntColumn get videoId => integer()();
  IntColumn get idLeccion => integer()(); //Aqui debe haber una FK
}


@UseMoor(tables: [MoorCurso, MoorLeccion, MoorUsuario], daos: [CursoDao, LeccionDao, UsuarioDao])
class CorsiDataBase extends _$CorsiDataBase{
  CorsiDataBase()
      :super(FlutterQueryExecutor.inDatabaseFolder(path: 'corsi.sqlite', logStatements:  true));
  @override
  int get schemaVersion => 1;
}

@UseDao(tables: [MoorCurso])
class CursoDao extends DatabaseAccessor<CorsiDataBase> with _$CursoDaoMixin {
  final CorsiDataBase db;
  CursoDao(this.db) : super(db);

  Future<List<MoorCursoData>> obtenerTodosLosCursos() => select(moorCurso).get();

  Stream<List<CursoTemp>> verTodosLosCursos() {
    return select(moorCurso)
        .watch()
        .map((rows) {
      final cursos = <CursoTemp>[];
      rows.forEach((row) {
        final recipe = moorCursoToCurso(row);
      },);
      return cursos;
    },);
  }

  Future<List<MoorCursoData>> buscarCursoPorId(int id) => (select(moorCurso)..where((tbl) => tbl.idCurso.equals(id))).get();

  Future<int> insertarCurso(Insertable<MoorCursoData> curso) => into(moorCurso).insert(curso);

//Future deleteCurso(int id) => Future.value((delete(moorCurso)..where((tbl) => tbl.idCurso.equals(id))).go());
}


@UseDao(tables: [MoorLeccion])
class LeccionDao extends DatabaseAccessor<CorsiDataBase> with _$LeccionDaoMixin {
  final CorsiDataBase db;
  LeccionDao(this.db) : super(db);

  Future<List<MoorLeccionData>> obtenerTodasLasLecciones() => select(moorLeccion).get();

  //Stream<List<LeccionTemp>> verTodasLasLecciones() {} //no c si lo vaya a poner al final ni c lo q hace xd

  Future<List<MoorLeccionData>> buscarLeccionPorId(int id) => (select(moorLeccion)..where((tbl) => tbl.idLeccion.equals(id))).get();

  Future<int> insertarLeccion(Insertable<MoorLeccionData> leccion) => into(moorLeccion).insert(leccion);


//Future deleteLeccion(int id) => Future.value((delete(moorLeccion)..where((tbl) => tbl.idLeccion.equals(id))).go());
}

@UseDao(tables: [MoorUsuario])
class UsuarioDao extends DatabaseAccessor<CorsiDataBase> with _$UsuarioDaoMixin {
  final CorsiDataBase db;
  UsuarioDao(this.db) : super(db);

  Future<List<MoorUsuarioData>> obtenerTodosLosUsuarios() => select(moorUsuario).get();

  //Stream<List<Usuario>> verTodosLosUsuarios() {} //no c si lo vaya a poner al final ni c lo q hace xd

  Future<List<MoorUsuarioData>> buscarUsuarioPorId(int id) => (select(moorUsuario)..where((tbl) => tbl.idProf.equals(id))).get();

  Future<int> insertarUsuario(Insertable<MoorUsuarioData> usuario) => into(moorUsuario).insert(usuario);

//Future deleteUsuario(int id) => Future.value((delete(moorUsuario)..where((tbl) => tbl.idProf.equals(id))).go());
}
/*
@useDao(tables: [MoorComentario])
class ComentarioDao extends DatabaseAccessor<CorsiDataBase> with _$ComentarioDaoMixin{
  final CorsiDataBase db;
  ComentarioDao(this.db) : super(db);

  Future<List<MoorComentarioData>> obtenerTodosLosComentarios() => select(moorComentario).get();

  Future<List<MoorComentarioData>> buscarComentarioPorId(int id) => (select(moorComentario)..where((tbl) => tbl.idComentario.equals(id))).get();

  Future<int> insertarComentario(Insertable<MoorComentarioData> comentario) => into(moorComentario).insert(comentario);
}*/

@useDao(tables: [MoorContenido])
class ContenidoDao extends DatabaseAccessor<CorsiDataBase> with _$ContenidoDaoMixin{
  final CorsiDataBase db;
  ContenidoDao(this.db) : super(db);

  Future<List<MoorContenidoData>> obtenerTodosLosContenidos() => select(moorContenido).get();

  Future<List<MoorContenidoData>> buscarContenidoPorId(int id) => (select(moorContenido)..where((tbl) => tbl.idContenido.equals(id))).get();

  Future<int> insertarContenido(Insertable<MoorContenidoData> contenido) => into(moorContenido).insert(contenido);
}

CursoTemp moorCursoToCurso(MoorCursoData curso) {
  return CursoTemp(
      BDid: curso.BDid,
      idCurso: curso.idCurso,
      logo: curso.logo,
      titulo: curso.titulo,
      descripcion: curso.descripcion,
      idProf: curso.idProf,
      estado : curso.estado,
  );
}

Insertable<MoorCursoData> cursoToInsertableMoorCurso (CursoTemp curso){
  return MoorCursoCompanion.insert(
    idCurso: curso.idCurso ?? 0,
    logo: curso.logo ?? '',
    titulo: curso.titulo ?? '',
    descripcion: curso.descripcion ?? '',
    idProf: curso.idProf ?? 0,
    estado: curso.estado ?? '',
  );
}

LeccionTemp moorLeccionToLeccion(MoorLeccionData leccion) {
  return LeccionTemp(
      BDid: leccion.BDid,
      idLeccion: leccion.idCurso,
      titulo: leccion.titulo,
      descripcion: leccion.descripcion,
      idCurso: leccion.idCurso
  );
}

Insertable<MoorLeccionData> leccionToInsertableMoorLeccion (LeccionTemp leccion){
  return MoorLeccionCompanion.insert(
    idLeccion: leccion.idLeccion ?? 0,
    titulo: leccion.titulo ?? '',
    descripcion: leccion.descripcion ?? '',
    idCurso: leccion.idCurso ?? 0,
  );
}

UsuarioTemp moorUsuarioToUsuario(MoorUsuarioData usuario) {
  return UsuarioTemp(
    BDid: usuario.BDid,
    idProf: usuario.idProf,
    nombre: usuario.nombreProf,
  );
}

Insertable<MoorUsuarioData> usuarioToInsertableMoorUsuario (UsuarioTemp usuario){
  return MoorUsuarioCompanion.insert(
    idProf: usuario.idProf ?? 0,
    nombreProf: usuario.nombre ?? '',
  );
}
/*
ComentarioTemp moorComentarioToComentario (MoorComentarioData comentario){
  return ComentarioTemp (
    BDid : comentario.BDid,
    idComentario : comentario.idComentario,
    usuario : comentario.usuario,
    texto : comentario.texto,
    idLeccion : comentario.idLeccion,
  );
}

Insertable<MoorComentarioData> comentarioToInsertableMoorComentario (ComentarioTemp comentario){
  return MoorComentarioCompanion.insert(
    idComentario : comentario.idComentario ?? 0,
    usuario : comentario.usuario ?? '',
    texto : comentario.texto ?? '',
    idLeccion : comentario.idLeccion ?? 0,
  )
}*/

ContenidoTemp moorContenidoToContenido (MoorContenidoData contenido){
  return ContenidoTemp (
    BDid : contenido.BDid,
    idComentario : contenido.idContenido,
    duracion : contenido.duracion,
    titulo : contenido.titulo,
    videoUrl : contenido.videoUrl,
    videoId : contenido.videoId,
    idLeccion : contenido.idLeccion,
  );
}

Insertable<MoorContenidoData> comentarioToInsertableMoorContenido (ContenidoTemp contenido){
  return MoorContenidoCompanion.insert(
    idComentario : contenido.idContenido ?? 0,
    duracion : contenido.duracion ?? '',
    titulo : contenido.titulo ?? '',
    videoUrl : contenido.videoUrl ?? '',
    videoId : contenido.videoId ?? 0,
    idLeccion : contenido.idLeccion ?? 0,
  );
}
