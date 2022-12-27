// Esto lo tengo que cambiar, La libreria Moor migró a Drift y ya no se usa Moor

/*

import 'package:moor_flutter/moor_flutter.dart';

class MoorProfesor extends Table {
  IntColumn get id => integer().autoIncrement().call();
  TextColumn get name => text().call();
}
@UseMoor(tables: [MoorProfesor])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
}

*/