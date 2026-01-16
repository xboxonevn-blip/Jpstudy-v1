import 'package:drift/drift.dart';

import 'content_database_connection.dart';

part 'content_database.g.dart';

const _itemTypeCheck = "item_type IN ('vocab','kanji','grammar')";

class ContentItems extends Table {
  @override
  String get tableName => 'items';

  IntColumn get id => integer()();
  TextColumn get itemType => text().check(const CustomExpression(_itemTypeCheck))();
  TextColumn get term => text()();
  TextColumn get reading => text().nullable()();
  TextColumn get meaning => text()();
  TextColumn get example => text().nullable()();
  TextColumn get tags => text().nullable()();
  TextColumn get createdAt => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class ContentSentences extends Table {
  @override
  String get tableName => 'sentences';

  IntColumn get id => integer()();
  IntColumn get itemId => integer().nullable()();
  TextColumn get sentence => text()();
  TextColumn get cloze => text().nullable()();
  TextColumn get answer => text().nullable()();
  TextColumn get kind => text().withDefault(const Constant('example'))();
  TextColumn get createdAt => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class ContentMeta extends Table {
  @override
  String get tableName => 'content_meta';

  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {key};
}

@DriftDatabase(
  tables: [
    ContentItems,
    ContentSentences,
    ContentMeta,
  ],
)
class ContentDatabase extends _$ContentDatabase {
  ContentDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(openContentConnection);
}
