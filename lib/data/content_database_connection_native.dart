import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:sqlite3/sqlite3.dart';

import 'content_db_loader.dart';

Future<QueryExecutor> openContentConnectionImpl() async {
  final path = await ensureContentDbReady();
  final db = sqlite3.open(path, mode: OpenMode.readOnly);
  return NativeDatabase.opened(db);
}
