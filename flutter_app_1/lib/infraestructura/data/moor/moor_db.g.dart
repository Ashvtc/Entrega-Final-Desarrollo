// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class MoorCursoData extends DataClass implements Insertable<MoorCursoData> {
  final int BDid;
  final int idCurso;
  final String logo;
  final String titulo;
  final String descripcion;
  final int idProf;
  final String estado;
  MoorCursoData(
      {required this.BDid,
      required this.idCurso,
      required this.logo,
      required this.titulo,
      required this.descripcion,
      required this.idProf,
      required this.estado});
  factory MoorCursoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MoorCursoData(
      BDid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}b_did'])!,
      idCurso: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_curso'])!,
      logo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}logo'])!,
      titulo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}titulo'])!,
      descripcion: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion'])!,
      idProf: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_prof'])!,
      estado: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}estado'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['b_did'] = Variable<int>(BDid);
    map['id_curso'] = Variable<int>(idCurso);
    map['logo'] = Variable<String>(logo);
    map['titulo'] = Variable<String>(titulo);
    map['descripcion'] = Variable<String>(descripcion);
    map['id_prof'] = Variable<int>(idProf);
    map['estado'] = Variable<String>(estado);
    return map;
  }

  MoorCursoCompanion toCompanion(bool nullToAbsent) {
    return MoorCursoCompanion(
      BDid: Value(BDid),
      idCurso: Value(idCurso),
      logo: Value(logo),
      titulo: Value(titulo),
      descripcion: Value(descripcion),
      idProf: Value(idProf),
      estado: Value(estado),
    );
  }

  factory MoorCursoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorCursoData(
      BDid: serializer.fromJson<int>(json['BDid']),
      idCurso: serializer.fromJson<int>(json['idCurso']),
      logo: serializer.fromJson<String>(json['logo']),
      titulo: serializer.fromJson<String>(json['titulo']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      idProf: serializer.fromJson<int>(json['idProf']),
      estado: serializer.fromJson<String>(json['estado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'BDid': serializer.toJson<int>(BDid),
      'idCurso': serializer.toJson<int>(idCurso),
      'logo': serializer.toJson<String>(logo),
      'titulo': serializer.toJson<String>(titulo),
      'descripcion': serializer.toJson<String>(descripcion),
      'idProf': serializer.toJson<int>(idProf),
      'estado': serializer.toJson<String>(estado),
    };
  }

  MoorCursoData copyWith(
          {int? BDid,
          int? idCurso,
          String? logo,
          String? titulo,
          String? descripcion,
          int? idProf,
          String? estado}) =>
      MoorCursoData(
        BDid: BDid ?? this.BDid,
        idCurso: idCurso ?? this.idCurso,
        logo: logo ?? this.logo,
        titulo: titulo ?? this.titulo,
        descripcion: descripcion ?? this.descripcion,
        idProf: idProf ?? this.idProf,
        estado: estado ?? this.estado,
      );
  @override
  String toString() {
    return (StringBuffer('MoorCursoData(')
          ..write('BDid: $BDid, ')
          ..write('idCurso: $idCurso, ')
          ..write('logo: $logo, ')
          ..write('titulo: $titulo, ')
          ..write('descripcion: $descripcion, ')
          ..write('idProf: $idProf, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(BDid, idCurso, logo, titulo, descripcion, idProf, estado);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoorCursoData &&
          other.BDid == this.BDid &&
          other.idCurso == this.idCurso &&
          other.logo == this.logo &&
          other.titulo == this.titulo &&
          other.descripcion == this.descripcion &&
          other.idProf == this.idProf &&
          other.estado == this.estado);
}

class MoorCursoCompanion extends UpdateCompanion<MoorCursoData> {
  final Value<int> BDid;
  final Value<int> idCurso;
  final Value<String> logo;
  final Value<String> titulo;
  final Value<String> descripcion;
  final Value<int> idProf;
  final Value<String> estado;
  const MoorCursoCompanion({
    this.BDid = const Value.absent(),
    this.idCurso = const Value.absent(),
    this.logo = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.idProf = const Value.absent(),
    this.estado = const Value.absent(),
  });
  MoorCursoCompanion.insert({
    this.BDid = const Value.absent(),
    required int idCurso,
    required String logo,
    required String titulo,
    required String descripcion,
    required int idProf,
    required String estado,
  })  : idCurso = Value(idCurso),
        logo = Value(logo),
        titulo = Value(titulo),
        descripcion = Value(descripcion),
        idProf = Value(idProf),
        estado = Value(estado);
  static Insertable<MoorCursoData> custom({
    Expression<int>? BDid,
    Expression<int>? idCurso,
    Expression<String>? logo,
    Expression<String>? titulo,
    Expression<String>? descripcion,
    Expression<int>? idProf,
    Expression<String>? estado,
  }) {
    return RawValuesInsertable({
      if (BDid != null) 'b_did': BDid,
      if (idCurso != null) 'id_curso': idCurso,
      if (logo != null) 'logo': logo,
      if (titulo != null) 'titulo': titulo,
      if (descripcion != null) 'descripcion': descripcion,
      if (idProf != null) 'id_prof': idProf,
      if (estado != null) 'estado': estado,
    });
  }

  MoorCursoCompanion copyWith(
      {Value<int>? BDid,
      Value<int>? idCurso,
      Value<String>? logo,
      Value<String>? titulo,
      Value<String>? descripcion,
      Value<int>? idProf,
      Value<String>? estado}) {
    return MoorCursoCompanion(
      BDid: BDid ?? this.BDid,
      idCurso: idCurso ?? this.idCurso,
      logo: logo ?? this.logo,
      titulo: titulo ?? this.titulo,
      descripcion: descripcion ?? this.descripcion,
      idProf: idProf ?? this.idProf,
      estado: estado ?? this.estado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (BDid.present) {
      map['b_did'] = Variable<int>(BDid.value);
    }
    if (idCurso.present) {
      map['id_curso'] = Variable<int>(idCurso.value);
    }
    if (logo.present) {
      map['logo'] = Variable<String>(logo.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (idProf.present) {
      map['id_prof'] = Variable<int>(idProf.value);
    }
    if (estado.present) {
      map['estado'] = Variable<String>(estado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorCursoCompanion(')
          ..write('BDid: $BDid, ')
          ..write('idCurso: $idCurso, ')
          ..write('logo: $logo, ')
          ..write('titulo: $titulo, ')
          ..write('descripcion: $descripcion, ')
          ..write('idProf: $idProf, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }
}

class $MoorCursoTable extends MoorCurso
    with TableInfo<$MoorCursoTable, MoorCursoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoorCursoTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _BDidMeta = const VerificationMeta('BDid');
  @override
  late final GeneratedColumn<int?> BDid = GeneratedColumn<int?>(
      'b_did', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idCursoMeta = const VerificationMeta('idCurso');
  @override
  late final GeneratedColumn<int?> idCurso = GeneratedColumn<int?>(
      'id_curso', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<String?> logo = GeneratedColumn<String?>(
      'logo', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  @override
  late final GeneratedColumn<String?> titulo = GeneratedColumn<String?>(
      'titulo', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  @override
  late final GeneratedColumn<String?> descripcion = GeneratedColumn<String?>(
      'descripcion', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idProfMeta = const VerificationMeta('idProf');
  @override
  late final GeneratedColumn<int?> idProf = GeneratedColumn<int?>(
      'id_prof', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _estadoMeta = const VerificationMeta('estado');
  @override
  late final GeneratedColumn<String?> estado = GeneratedColumn<String?>(
      'estado', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [BDid, idCurso, logo, titulo, descripcion, idProf, estado];
  @override
  String get aliasedName => _alias ?? 'moor_curso';
  @override
  String get actualTableName => 'moor_curso';
  @override
  VerificationContext validateIntegrity(Insertable<MoorCursoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('b_did')) {
      context.handle(
          _BDidMeta, BDid.isAcceptableOrUnknown(data['b_did']!, _BDidMeta));
    }
    if (data.containsKey('id_curso')) {
      context.handle(_idCursoMeta,
          idCurso.isAcceptableOrUnknown(data['id_curso']!, _idCursoMeta));
    } else if (isInserting) {
      context.missing(_idCursoMeta);
    }
    if (data.containsKey('logo')) {
      context.handle(
          _logoMeta, logo.isAcceptableOrUnknown(data['logo']!, _logoMeta));
    } else if (isInserting) {
      context.missing(_logoMeta);
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo']!, _tituloMeta));
    } else if (isInserting) {
      context.missing(_tituloMeta);
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion']!, _descripcionMeta));
    } else if (isInserting) {
      context.missing(_descripcionMeta);
    }
    if (data.containsKey('id_prof')) {
      context.handle(_idProfMeta,
          idProf.isAcceptableOrUnknown(data['id_prof']!, _idProfMeta));
    } else if (isInserting) {
      context.missing(_idProfMeta);
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado']!, _estadoMeta));
    } else if (isInserting) {
      context.missing(_estadoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {BDid};
  @override
  MoorCursoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MoorCursoData.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoorCursoTable createAlias(String alias) {
    return $MoorCursoTable(attachedDatabase, alias);
  }
}

class MoorLeccionData extends DataClass implements Insertable<MoorLeccionData> {
  final int BDid;
  final int idLeccion;
  final String titulo;
  final String descripcion;
  final int idCurso;
  MoorLeccionData(
      {required this.BDid,
      required this.idLeccion,
      required this.titulo,
      required this.descripcion,
      required this.idCurso});
  factory MoorLeccionData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MoorLeccionData(
      BDid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}b_did'])!,
      idLeccion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_leccion'])!,
      titulo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}titulo'])!,
      descripcion: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descripcion'])!,
      idCurso: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_curso'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['b_did'] = Variable<int>(BDid);
    map['id_leccion'] = Variable<int>(idLeccion);
    map['titulo'] = Variable<String>(titulo);
    map['descripcion'] = Variable<String>(descripcion);
    map['id_curso'] = Variable<int>(idCurso);
    return map;
  }

  MoorLeccionCompanion toCompanion(bool nullToAbsent) {
    return MoorLeccionCompanion(
      BDid: Value(BDid),
      idLeccion: Value(idLeccion),
      titulo: Value(titulo),
      descripcion: Value(descripcion),
      idCurso: Value(idCurso),
    );
  }

  factory MoorLeccionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorLeccionData(
      BDid: serializer.fromJson<int>(json['BDid']),
      idLeccion: serializer.fromJson<int>(json['idLeccion']),
      titulo: serializer.fromJson<String>(json['titulo']),
      descripcion: serializer.fromJson<String>(json['descripcion']),
      idCurso: serializer.fromJson<int>(json['idCurso']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'BDid': serializer.toJson<int>(BDid),
      'idLeccion': serializer.toJson<int>(idLeccion),
      'titulo': serializer.toJson<String>(titulo),
      'descripcion': serializer.toJson<String>(descripcion),
      'idCurso': serializer.toJson<int>(idCurso),
    };
  }

  MoorLeccionData copyWith(
          {int? BDid,
          int? idLeccion,
          String? titulo,
          String? descripcion,
          int? idCurso}) =>
      MoorLeccionData(
        BDid: BDid ?? this.BDid,
        idLeccion: idLeccion ?? this.idLeccion,
        titulo: titulo ?? this.titulo,
        descripcion: descripcion ?? this.descripcion,
        idCurso: idCurso ?? this.idCurso,
      );
  @override
  String toString() {
    return (StringBuffer('MoorLeccionData(')
          ..write('BDid: $BDid, ')
          ..write('idLeccion: $idLeccion, ')
          ..write('titulo: $titulo, ')
          ..write('descripcion: $descripcion, ')
          ..write('idCurso: $idCurso')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(BDid, idLeccion, titulo, descripcion, idCurso);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoorLeccionData &&
          other.BDid == this.BDid &&
          other.idLeccion == this.idLeccion &&
          other.titulo == this.titulo &&
          other.descripcion == this.descripcion &&
          other.idCurso == this.idCurso);
}

class MoorLeccionCompanion extends UpdateCompanion<MoorLeccionData> {
  final Value<int> BDid;
  final Value<int> idLeccion;
  final Value<String> titulo;
  final Value<String> descripcion;
  final Value<int> idCurso;
  const MoorLeccionCompanion({
    this.BDid = const Value.absent(),
    this.idLeccion = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.idCurso = const Value.absent(),
  });
  MoorLeccionCompanion.insert({
    this.BDid = const Value.absent(),
    required int idLeccion,
    required String titulo,
    required String descripcion,
    required int idCurso,
  })  : idLeccion = Value(idLeccion),
        titulo = Value(titulo),
        descripcion = Value(descripcion),
        idCurso = Value(idCurso);
  static Insertable<MoorLeccionData> custom({
    Expression<int>? BDid,
    Expression<int>? idLeccion,
    Expression<String>? titulo,
    Expression<String>? descripcion,
    Expression<int>? idCurso,
  }) {
    return RawValuesInsertable({
      if (BDid != null) 'b_did': BDid,
      if (idLeccion != null) 'id_leccion': idLeccion,
      if (titulo != null) 'titulo': titulo,
      if (descripcion != null) 'descripcion': descripcion,
      if (idCurso != null) 'id_curso': idCurso,
    });
  }

  MoorLeccionCompanion copyWith(
      {Value<int>? BDid,
      Value<int>? idLeccion,
      Value<String>? titulo,
      Value<String>? descripcion,
      Value<int>? idCurso}) {
    return MoorLeccionCompanion(
      BDid: BDid ?? this.BDid,
      idLeccion: idLeccion ?? this.idLeccion,
      titulo: titulo ?? this.titulo,
      descripcion: descripcion ?? this.descripcion,
      idCurso: idCurso ?? this.idCurso,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (BDid.present) {
      map['b_did'] = Variable<int>(BDid.value);
    }
    if (idLeccion.present) {
      map['id_leccion'] = Variable<int>(idLeccion.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (descripcion.present) {
      map['descripcion'] = Variable<String>(descripcion.value);
    }
    if (idCurso.present) {
      map['id_curso'] = Variable<int>(idCurso.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorLeccionCompanion(')
          ..write('BDid: $BDid, ')
          ..write('idLeccion: $idLeccion, ')
          ..write('titulo: $titulo, ')
          ..write('descripcion: $descripcion, ')
          ..write('idCurso: $idCurso')
          ..write(')'))
        .toString();
  }
}

class $MoorLeccionTable extends MoorLeccion
    with TableInfo<$MoorLeccionTable, MoorLeccionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoorLeccionTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _BDidMeta = const VerificationMeta('BDid');
  @override
  late final GeneratedColumn<int?> BDid = GeneratedColumn<int?>(
      'b_did', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idLeccionMeta = const VerificationMeta('idLeccion');
  @override
  late final GeneratedColumn<int?> idLeccion = GeneratedColumn<int?>(
      'id_leccion', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  @override
  late final GeneratedColumn<String?> titulo = GeneratedColumn<String?>(
      'titulo', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  @override
  late final GeneratedColumn<String?> descripcion = GeneratedColumn<String?>(
      'descripcion', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idCursoMeta = const VerificationMeta('idCurso');
  @override
  late final GeneratedColumn<int?> idCurso = GeneratedColumn<int?>(
      'id_curso', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [BDid, idLeccion, titulo, descripcion, idCurso];
  @override
  String get aliasedName => _alias ?? 'moor_leccion';
  @override
  String get actualTableName => 'moor_leccion';
  @override
  VerificationContext validateIntegrity(Insertable<MoorLeccionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('b_did')) {
      context.handle(
          _BDidMeta, BDid.isAcceptableOrUnknown(data['b_did']!, _BDidMeta));
    }
    if (data.containsKey('id_leccion')) {
      context.handle(_idLeccionMeta,
          idLeccion.isAcceptableOrUnknown(data['id_leccion']!, _idLeccionMeta));
    } else if (isInserting) {
      context.missing(_idLeccionMeta);
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo']!, _tituloMeta));
    } else if (isInserting) {
      context.missing(_tituloMeta);
    }
    if (data.containsKey('descripcion')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['descripcion']!, _descripcionMeta));
    } else if (isInserting) {
      context.missing(_descripcionMeta);
    }
    if (data.containsKey('id_curso')) {
      context.handle(_idCursoMeta,
          idCurso.isAcceptableOrUnknown(data['id_curso']!, _idCursoMeta));
    } else if (isInserting) {
      context.missing(_idCursoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {BDid};
  @override
  MoorLeccionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MoorLeccionData.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoorLeccionTable createAlias(String alias) {
    return $MoorLeccionTable(attachedDatabase, alias);
  }
}

class MoorUsuarioData extends DataClass implements Insertable<MoorUsuarioData> {
  final int BDid;
  final int idProf;
  final String nombreProf;
  MoorUsuarioData(
      {required this.BDid, required this.idProf, required this.nombreProf});
  factory MoorUsuarioData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MoorUsuarioData(
      BDid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}b_did'])!,
      idProf: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_prof'])!,
      nombreProf: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nombre_prof'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['b_did'] = Variable<int>(BDid);
    map['id_prof'] = Variable<int>(idProf);
    map['nombre_prof'] = Variable<String>(nombreProf);
    return map;
  }

  MoorUsuarioCompanion toCompanion(bool nullToAbsent) {
    return MoorUsuarioCompanion(
      BDid: Value(BDid),
      idProf: Value(idProf),
      nombreProf: Value(nombreProf),
    );
  }

  factory MoorUsuarioData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorUsuarioData(
      BDid: serializer.fromJson<int>(json['BDid']),
      idProf: serializer.fromJson<int>(json['idProf']),
      nombreProf: serializer.fromJson<String>(json['nombreProf']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'BDid': serializer.toJson<int>(BDid),
      'idProf': serializer.toJson<int>(idProf),
      'nombreProf': serializer.toJson<String>(nombreProf),
    };
  }

  MoorUsuarioData copyWith({int? BDid, int? idProf, String? nombreProf}) =>
      MoorUsuarioData(
        BDid: BDid ?? this.BDid,
        idProf: idProf ?? this.idProf,
        nombreProf: nombreProf ?? this.nombreProf,
      );
  @override
  String toString() {
    return (StringBuffer('MoorUsuarioData(')
          ..write('BDid: $BDid, ')
          ..write('idProf: $idProf, ')
          ..write('nombreProf: $nombreProf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(BDid, idProf, nombreProf);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoorUsuarioData &&
          other.BDid == this.BDid &&
          other.idProf == this.idProf &&
          other.nombreProf == this.nombreProf);
}

class MoorUsuarioCompanion extends UpdateCompanion<MoorUsuarioData> {
  final Value<int> BDid;
  final Value<int> idProf;
  final Value<String> nombreProf;
  const MoorUsuarioCompanion({
    this.BDid = const Value.absent(),
    this.idProf = const Value.absent(),
    this.nombreProf = const Value.absent(),
  });
  MoorUsuarioCompanion.insert({
    this.BDid = const Value.absent(),
    required int idProf,
    required String nombreProf,
  })  : idProf = Value(idProf),
        nombreProf = Value(nombreProf);
  static Insertable<MoorUsuarioData> custom({
    Expression<int>? BDid,
    Expression<int>? idProf,
    Expression<String>? nombreProf,
  }) {
    return RawValuesInsertable({
      if (BDid != null) 'b_did': BDid,
      if (idProf != null) 'id_prof': idProf,
      if (nombreProf != null) 'nombre_prof': nombreProf,
    });
  }

  MoorUsuarioCompanion copyWith(
      {Value<int>? BDid, Value<int>? idProf, Value<String>? nombreProf}) {
    return MoorUsuarioCompanion(
      BDid: BDid ?? this.BDid,
      idProf: idProf ?? this.idProf,
      nombreProf: nombreProf ?? this.nombreProf,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (BDid.present) {
      map['b_did'] = Variable<int>(BDid.value);
    }
    if (idProf.present) {
      map['id_prof'] = Variable<int>(idProf.value);
    }
    if (nombreProf.present) {
      map['nombre_prof'] = Variable<String>(nombreProf.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorUsuarioCompanion(')
          ..write('BDid: $BDid, ')
          ..write('idProf: $idProf, ')
          ..write('nombreProf: $nombreProf')
          ..write(')'))
        .toString();
  }
}

class $MoorUsuarioTable extends MoorUsuario
    with TableInfo<$MoorUsuarioTable, MoorUsuarioData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoorUsuarioTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _BDidMeta = const VerificationMeta('BDid');
  @override
  late final GeneratedColumn<int?> BDid = GeneratedColumn<int?>(
      'b_did', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idProfMeta = const VerificationMeta('idProf');
  @override
  late final GeneratedColumn<int?> idProf = GeneratedColumn<int?>(
      'id_prof', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _nombreProfMeta = const VerificationMeta('nombreProf');
  @override
  late final GeneratedColumn<String?> nombreProf = GeneratedColumn<String?>(
      'nombre_prof', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [BDid, idProf, nombreProf];
  @override
  String get aliasedName => _alias ?? 'moor_usuario';
  @override
  String get actualTableName => 'moor_usuario';
  @override
  VerificationContext validateIntegrity(Insertable<MoorUsuarioData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('b_did')) {
      context.handle(
          _BDidMeta, BDid.isAcceptableOrUnknown(data['b_did']!, _BDidMeta));
    }
    if (data.containsKey('id_prof')) {
      context.handle(_idProfMeta,
          idProf.isAcceptableOrUnknown(data['id_prof']!, _idProfMeta));
    } else if (isInserting) {
      context.missing(_idProfMeta);
    }
    if (data.containsKey('nombre_prof')) {
      context.handle(
          _nombreProfMeta,
          nombreProf.isAcceptableOrUnknown(
              data['nombre_prof']!, _nombreProfMeta));
    } else if (isInserting) {
      context.missing(_nombreProfMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {BDid};
  @override
  MoorUsuarioData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MoorUsuarioData.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoorUsuarioTable createAlias(String alias) {
    return $MoorUsuarioTable(attachedDatabase, alias);
  }
}

class MoorContenidoData extends DataClass
    implements Insertable<MoorContenidoData> {
  final int BDid;
  final int idContenido;
  final String duracion;
  final String titulo;
  final String videoUrl;
  final int idLeccion;
  MoorContenidoData(
      {required this.BDid,
      required this.idContenido,
      required this.duracion,
      required this.titulo,
      required this.videoUrl,
      required this.idLeccion});
  factory MoorContenidoData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MoorContenidoData(
      BDid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}b_did'])!,
      idContenido: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_contenido'])!,
      duracion: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}duracion'])!,
      titulo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}titulo'])!,
      videoUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}video_url'])!,
      idLeccion: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_leccion'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['b_did'] = Variable<int>(BDid);
    map['id_contenido'] = Variable<int>(idContenido);
    map['duracion'] = Variable<String>(duracion);
    map['titulo'] = Variable<String>(titulo);
    map['video_url'] = Variable<String>(videoUrl);
    map['id_leccion'] = Variable<int>(idLeccion);
    return map;
  }

  MoorContenidoCompanion toCompanion(bool nullToAbsent) {
    return MoorContenidoCompanion(
      BDid: Value(BDid),
      idContenido: Value(idContenido),
      duracion: Value(duracion),
      titulo: Value(titulo),
      videoUrl: Value(videoUrl),
      idLeccion: Value(idLeccion),
    );
  }

  factory MoorContenidoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorContenidoData(
      BDid: serializer.fromJson<int>(json['BDid']),
      idContenido: serializer.fromJson<int>(json['idContenido']),
      duracion: serializer.fromJson<String>(json['duracion']),
      titulo: serializer.fromJson<String>(json['titulo']),
      videoUrl: serializer.fromJson<String>(json['videoUrl']),
      idLeccion: serializer.fromJson<int>(json['idLeccion']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'BDid': serializer.toJson<int>(BDid),
      'idContenido': serializer.toJson<int>(idContenido),
      'duracion': serializer.toJson<String>(duracion),
      'titulo': serializer.toJson<String>(titulo),
      'videoUrl': serializer.toJson<String>(videoUrl),
      'idLeccion': serializer.toJson<int>(idLeccion),
    };
  }

  MoorContenidoData copyWith(
          {int? BDid,
          int? idContenido,
          String? duracion,
          String? titulo,
          String? videoUrl,
          int? idLeccion}) =>
      MoorContenidoData(
        BDid: BDid ?? this.BDid,
        idContenido: idContenido ?? this.idContenido,
        duracion: duracion ?? this.duracion,
        titulo: titulo ?? this.titulo,
        videoUrl: videoUrl ?? this.videoUrl,
        idLeccion: idLeccion ?? this.idLeccion,
      );
  @override
  String toString() {
    return (StringBuffer('MoorContenidoData(')
          ..write('BDid: $BDid, ')
          ..write('idContenido: $idContenido, ')
          ..write('duracion: $duracion, ')
          ..write('titulo: $titulo, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('idLeccion: $idLeccion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(BDid, idContenido, duracion, titulo, videoUrl, idLeccion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoorContenidoData &&
          other.BDid == this.BDid &&
          other.idContenido == this.idContenido &&
          other.duracion == this.duracion &&
          other.titulo == this.titulo &&
          other.videoUrl == this.videoUrl &&
          other.idLeccion == this.idLeccion);
}

class MoorContenidoCompanion extends UpdateCompanion<MoorContenidoData> {
  final Value<int> BDid;
  final Value<int> idContenido;
  final Value<String> duracion;
  final Value<String> titulo;
  final Value<String> videoUrl;
  final Value<int> idLeccion;
  const MoorContenidoCompanion({
    this.BDid = const Value.absent(),
    this.idContenido = const Value.absent(),
    this.duracion = const Value.absent(),
    this.titulo = const Value.absent(),
    this.videoUrl = const Value.absent(),
    this.idLeccion = const Value.absent(),
  });
  MoorContenidoCompanion.insert({
    this.BDid = const Value.absent(),
    required int idContenido,
    required String duracion,
    required String titulo,
    required String videoUrl,
    required int idLeccion,
  })  : idContenido = Value(idContenido),
        duracion = Value(duracion),
        titulo = Value(titulo),
        videoUrl = Value(videoUrl),
        idLeccion = Value(idLeccion);
  static Insertable<MoorContenidoData> custom({
    Expression<int>? BDid,
    Expression<int>? idContenido,
    Expression<String>? duracion,
    Expression<String>? titulo,
    Expression<String>? videoUrl,
    Expression<int>? idLeccion,
  }) {
    return RawValuesInsertable({
      if (BDid != null) 'b_did': BDid,
      if (idContenido != null) 'id_contenido': idContenido,
      if (duracion != null) 'duracion': duracion,
      if (titulo != null) 'titulo': titulo,
      if (videoUrl != null) 'video_url': videoUrl,
      if (idLeccion != null) 'id_leccion': idLeccion,
    });
  }

  MoorContenidoCompanion copyWith(
      {Value<int>? BDid,
      Value<int>? idContenido,
      Value<String>? duracion,
      Value<String>? titulo,
      Value<String>? videoUrl,
      Value<int>? idLeccion}) {
    return MoorContenidoCompanion(
      BDid: BDid ?? this.BDid,
      idContenido: idContenido ?? this.idContenido,
      duracion: duracion ?? this.duracion,
      titulo: titulo ?? this.titulo,
      videoUrl: videoUrl ?? this.videoUrl,
      idLeccion: idLeccion ?? this.idLeccion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (BDid.present) {
      map['b_did'] = Variable<int>(BDid.value);
    }
    if (idContenido.present) {
      map['id_contenido'] = Variable<int>(idContenido.value);
    }
    if (duracion.present) {
      map['duracion'] = Variable<String>(duracion.value);
    }
    if (titulo.present) {
      map['titulo'] = Variable<String>(titulo.value);
    }
    if (videoUrl.present) {
      map['video_url'] = Variable<String>(videoUrl.value);
    }
    if (idLeccion.present) {
      map['id_leccion'] = Variable<int>(idLeccion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorContenidoCompanion(')
          ..write('BDid: $BDid, ')
          ..write('idContenido: $idContenido, ')
          ..write('duracion: $duracion, ')
          ..write('titulo: $titulo, ')
          ..write('videoUrl: $videoUrl, ')
          ..write('idLeccion: $idLeccion')
          ..write(')'))
        .toString();
  }
}

class $MoorContenidoTable extends MoorContenido
    with TableInfo<$MoorContenidoTable, MoorContenidoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MoorContenidoTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _BDidMeta = const VerificationMeta('BDid');
  @override
  late final GeneratedColumn<int?> BDid = GeneratedColumn<int?>(
      'b_did', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idContenidoMeta =
      const VerificationMeta('idContenido');
  @override
  late final GeneratedColumn<int?> idContenido = GeneratedColumn<int?>(
      'id_contenido', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _duracionMeta = const VerificationMeta('duracion');
  @override
  late final GeneratedColumn<String?> duracion = GeneratedColumn<String?>(
      'duracion', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _tituloMeta = const VerificationMeta('titulo');
  @override
  late final GeneratedColumn<String?> titulo = GeneratedColumn<String?>(
      'titulo', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _videoUrlMeta = const VerificationMeta('videoUrl');
  @override
  late final GeneratedColumn<String?> videoUrl = GeneratedColumn<String?>(
      'video_url', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idLeccionMeta = const VerificationMeta('idLeccion');
  @override
  late final GeneratedColumn<int?> idLeccion = GeneratedColumn<int?>(
      'id_leccion', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [BDid, idContenido, duracion, titulo, videoUrl, idLeccion];
  @override
  String get aliasedName => _alias ?? 'moor_contenido';
  @override
  String get actualTableName => 'moor_contenido';
  @override
  VerificationContext validateIntegrity(Insertable<MoorContenidoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('b_did')) {
      context.handle(
          _BDidMeta, BDid.isAcceptableOrUnknown(data['b_did']!, _BDidMeta));
    }
    if (data.containsKey('id_contenido')) {
      context.handle(
          _idContenidoMeta,
          idContenido.isAcceptableOrUnknown(
              data['id_contenido']!, _idContenidoMeta));
    } else if (isInserting) {
      context.missing(_idContenidoMeta);
    }
    if (data.containsKey('duracion')) {
      context.handle(_duracionMeta,
          duracion.isAcceptableOrUnknown(data['duracion']!, _duracionMeta));
    } else if (isInserting) {
      context.missing(_duracionMeta);
    }
    if (data.containsKey('titulo')) {
      context.handle(_tituloMeta,
          titulo.isAcceptableOrUnknown(data['titulo']!, _tituloMeta));
    } else if (isInserting) {
      context.missing(_tituloMeta);
    }
    if (data.containsKey('video_url')) {
      context.handle(_videoUrlMeta,
          videoUrl.isAcceptableOrUnknown(data['video_url']!, _videoUrlMeta));
    } else if (isInserting) {
      context.missing(_videoUrlMeta);
    }
    if (data.containsKey('id_leccion')) {
      context.handle(_idLeccionMeta,
          idLeccion.isAcceptableOrUnknown(data['id_leccion']!, _idLeccionMeta));
    } else if (isInserting) {
      context.missing(_idLeccionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {BDid};
  @override
  MoorContenidoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MoorContenidoData.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $MoorContenidoTable createAlias(String alias) {
    return $MoorContenidoTable(attachedDatabase, alias);
  }
}

abstract class _$CorsiDataBase extends GeneratedDatabase {
  _$CorsiDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MoorCursoTable moorCurso = $MoorCursoTable(this);
  late final $MoorLeccionTable moorLeccion = $MoorLeccionTable(this);
  late final $MoorUsuarioTable moorUsuario = $MoorUsuarioTable(this);
  late final $MoorContenidoTable moorContenido = $MoorContenidoTable(this);
  late final CursoDao cursoDao = CursoDao(this as CorsiDataBase);
  late final LeccionDao leccionDao = LeccionDao(this as CorsiDataBase);
  late final UsuarioDao usuarioDao = UsuarioDao(this as CorsiDataBase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [moorCurso, moorLeccion, moorUsuario, moorContenido];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$CursoDaoMixin on DatabaseAccessor<CorsiDataBase> {
  $MoorCursoTable get moorCurso => attachedDatabase.moorCurso;
}
mixin _$LeccionDaoMixin on DatabaseAccessor<CorsiDataBase> {
  $MoorLeccionTable get moorLeccion => attachedDatabase.moorLeccion;
}
mixin _$UsuarioDaoMixin on DatabaseAccessor<CorsiDataBase> {
  $MoorUsuarioTable get moorUsuario => attachedDatabase.moorUsuario;
}
mixin _$ContenidoDaoMixin on DatabaseAccessor<CorsiDataBase> {
  $MoorContenidoTable get moorContenido => attachedDatabase.moorContenido;
}
