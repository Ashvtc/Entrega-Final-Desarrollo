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
  MoorCursoData(
      {required this.BDid,
      required this.idCurso,
      required this.logo,
      required this.titulo,
      required this.descripcion,
      required this.idProf});
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
    };
  }

  MoorCursoData copyWith(
          {int? BDid,
          int? idCurso,
          String? logo,
          String? titulo,
          String? descripcion,
          int? idProf}) =>
      MoorCursoData(
        BDid: BDid ?? this.BDid,
        idCurso: idCurso ?? this.idCurso,
        logo: logo ?? this.logo,
        titulo: titulo ?? this.titulo,
        descripcion: descripcion ?? this.descripcion,
        idProf: idProf ?? this.idProf,
      );
  @override
  String toString() {
    return (StringBuffer('MoorCursoData(')
          ..write('BDid: $BDid, ')
          ..write('idCurso: $idCurso, ')
          ..write('logo: $logo, ')
          ..write('titulo: $titulo, ')
          ..write('descripcion: $descripcion, ')
          ..write('idProf: $idProf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(BDid, idCurso, logo, titulo, descripcion, idProf);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MoorCursoData &&
          other.BDid == this.BDid &&
          other.idCurso == this.idCurso &&
          other.logo == this.logo &&
          other.titulo == this.titulo &&
          other.descripcion == this.descripcion &&
          other.idProf == this.idProf);
}

class MoorCursoCompanion extends UpdateCompanion<MoorCursoData> {
  final Value<int> BDid;
  final Value<int> idCurso;
  final Value<String> logo;
  final Value<String> titulo;
  final Value<String> descripcion;
  final Value<int> idProf;
  const MoorCursoCompanion({
    this.BDid = const Value.absent(),
    this.idCurso = const Value.absent(),
    this.logo = const Value.absent(),
    this.titulo = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.idProf = const Value.absent(),
  });
  MoorCursoCompanion.insert({
    this.BDid = const Value.absent(),
    required int idCurso,
    required String logo,
    required String titulo,
    required String descripcion,
    required int idProf,
  })  : idCurso = Value(idCurso),
        logo = Value(logo),
        titulo = Value(titulo),
        descripcion = Value(descripcion),
        idProf = Value(idProf);
  static Insertable<MoorCursoData> custom({
    Expression<int>? BDid,
    Expression<int>? idCurso,
    Expression<String>? logo,
    Expression<String>? titulo,
    Expression<String>? descripcion,
    Expression<int>? idProf,
  }) {
    return RawValuesInsertable({
      if (BDid != null) 'b_did': BDid,
      if (idCurso != null) 'id_curso': idCurso,
      if (logo != null) 'logo': logo,
      if (titulo != null) 'titulo': titulo,
      if (descripcion != null) 'descripcion': descripcion,
      if (idProf != null) 'id_prof': idProf,
    });
  }

  MoorCursoCompanion copyWith(
      {Value<int>? BDid,
      Value<int>? idCurso,
      Value<String>? logo,
      Value<String>? titulo,
      Value<String>? descripcion,
      Value<int>? idProf}) {
    return MoorCursoCompanion(
      BDid: BDid ?? this.BDid,
      idCurso: idCurso ?? this.idCurso,
      logo: logo ?? this.logo,
      titulo: titulo ?? this.titulo,
      descripcion: descripcion ?? this.descripcion,
      idProf: idProf ?? this.idProf,
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
          ..write('idProf: $idProf')
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
  @override
  List<GeneratedColumn> get $columns =>
      [BDid, idCurso, logo, titulo, descripcion, idProf];
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

abstract class _$CorsiDataBase extends GeneratedDatabase {
  _$CorsiDataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $MoorCursoTable moorCurso = $MoorCursoTable(this);
  late final $MoorLeccionTable moorLeccion = $MoorLeccionTable(this);
  late final $MoorUsuarioTable moorUsuario = $MoorUsuarioTable(this);
  late final CursoDao cursoDao = CursoDao(this as CorsiDataBase);
  late final LeccionDao leccionDao = LeccionDao(this as CorsiDataBase);
  late final UsuarioDao usuarioDao = UsuarioDao(this as CorsiDataBase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [moorCurso, moorLeccion, moorUsuario];
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
