// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_database.dart';

// ignore_for_file: type=lint
class $ContentItemsTable extends ContentItems
    with TableInfo<$ContentItemsTable, ContentItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContentItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemTypeMeta =
      const VerificationMeta('itemType');
  @override
  late final GeneratedColumn<String> itemType = GeneratedColumn<String>(
      'item_type', aliasedName, false,
      check: () => const CustomExpression(_itemTypeCheck),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _termMeta = const VerificationMeta('term');
  @override
  late final GeneratedColumn<String> term = GeneratedColumn<String>(
      'term', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _readingMeta =
      const VerificationMeta('reading');
  @override
  late final GeneratedColumn<String> reading = GeneratedColumn<String>(
      'reading', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _meaningMeta =
      const VerificationMeta('meaning');
  @override
  late final GeneratedColumn<String> meaning = GeneratedColumn<String>(
      'meaning', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _exampleMeta =
      const VerificationMeta('example');
  @override
  late final GeneratedColumn<String> example = GeneratedColumn<String>(
      'example', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
      'tags', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemType, term, reading, meaning, example, tags, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items';
  @override
  VerificationContext validateIntegrity(Insertable<ContentItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_type')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['item_type']!, _itemTypeMeta));
    } else if (isInserting) {
      context.missing(_itemTypeMeta);
    }
    if (data.containsKey('term')) {
      context.handle(
          _termMeta, term.isAcceptableOrUnknown(data['term']!, _termMeta));
    } else if (isInserting) {
      context.missing(_termMeta);
    }
    if (data.containsKey('reading')) {
      context.handle(_readingMeta,
          reading.isAcceptableOrUnknown(data['reading']!, _readingMeta));
    }
    if (data.containsKey('meaning')) {
      context.handle(_meaningMeta,
          meaning.isAcceptableOrUnknown(data['meaning']!, _meaningMeta));
    } else if (isInserting) {
      context.missing(_meaningMeta);
    }
    if (data.containsKey('example')) {
      context.handle(_exampleMeta,
          example.isAcceptableOrUnknown(data['example']!, _exampleMeta));
    }
    if (data.containsKey('tags')) {
      context.handle(
          _tagsMeta, tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContentItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContentItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_type'])!,
      term: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}term'])!,
      reading: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reading']),
      meaning: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}meaning'])!,
      example: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}example']),
      tags: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tags']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ContentItemsTable createAlias(String alias) {
    return $ContentItemsTable(attachedDatabase, alias);
  }
}

class ContentItem extends DataClass implements Insertable<ContentItem> {
  final int id;
  final String itemType;
  final String term;
  final String? reading;
  final String meaning;
  final String? example;
  final String? tags;
  final String createdAt;
  const ContentItem(
      {required this.id,
      required this.itemType,
      required this.term,
      this.reading,
      required this.meaning,
      this.example,
      this.tags,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_type'] = Variable<String>(itemType);
    map['term'] = Variable<String>(term);
    if (!nullToAbsent || reading != null) {
      map['reading'] = Variable<String>(reading);
    }
    map['meaning'] = Variable<String>(meaning);
    if (!nullToAbsent || example != null) {
      map['example'] = Variable<String>(example);
    }
    if (!nullToAbsent || tags != null) {
      map['tags'] = Variable<String>(tags);
    }
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  ContentItemsCompanion toCompanion(bool nullToAbsent) {
    return ContentItemsCompanion(
      id: Value(id),
      itemType: Value(itemType),
      term: Value(term),
      reading: reading == null && nullToAbsent
          ? const Value.absent()
          : Value(reading),
      meaning: Value(meaning),
      example: example == null && nullToAbsent
          ? const Value.absent()
          : Value(example),
      tags: tags == null && nullToAbsent ? const Value.absent() : Value(tags),
      createdAt: Value(createdAt),
    );
  }

  factory ContentItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContentItem(
      id: serializer.fromJson<int>(json['id']),
      itemType: serializer.fromJson<String>(json['itemType']),
      term: serializer.fromJson<String>(json['term']),
      reading: serializer.fromJson<String?>(json['reading']),
      meaning: serializer.fromJson<String>(json['meaning']),
      example: serializer.fromJson<String?>(json['example']),
      tags: serializer.fromJson<String?>(json['tags']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemType': serializer.toJson<String>(itemType),
      'term': serializer.toJson<String>(term),
      'reading': serializer.toJson<String?>(reading),
      'meaning': serializer.toJson<String>(meaning),
      'example': serializer.toJson<String?>(example),
      'tags': serializer.toJson<String?>(tags),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  ContentItem copyWith(
          {int? id,
          String? itemType,
          String? term,
          Value<String?> reading = const Value.absent(),
          String? meaning,
          Value<String?> example = const Value.absent(),
          Value<String?> tags = const Value.absent(),
          String? createdAt}) =>
      ContentItem(
        id: id ?? this.id,
        itemType: itemType ?? this.itemType,
        term: term ?? this.term,
        reading: reading.present ? reading.value : this.reading,
        meaning: meaning ?? this.meaning,
        example: example.present ? example.value : this.example,
        tags: tags.present ? tags.value : this.tags,
        createdAt: createdAt ?? this.createdAt,
      );
  ContentItem copyWithCompanion(ContentItemsCompanion data) {
    return ContentItem(
      id: data.id.present ? data.id.value : this.id,
      itemType: data.itemType.present ? data.itemType.value : this.itemType,
      term: data.term.present ? data.term.value : this.term,
      reading: data.reading.present ? data.reading.value : this.reading,
      meaning: data.meaning.present ? data.meaning.value : this.meaning,
      example: data.example.present ? data.example.value : this.example,
      tags: data.tags.present ? data.tags.value : this.tags,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContentItem(')
          ..write('id: $id, ')
          ..write('itemType: $itemType, ')
          ..write('term: $term, ')
          ..write('reading: $reading, ')
          ..write('meaning: $meaning, ')
          ..write('example: $example, ')
          ..write('tags: $tags, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, itemType, term, reading, meaning, example, tags, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentItem &&
          other.id == this.id &&
          other.itemType == this.itemType &&
          other.term == this.term &&
          other.reading == this.reading &&
          other.meaning == this.meaning &&
          other.example == this.example &&
          other.tags == this.tags &&
          other.createdAt == this.createdAt);
}

class ContentItemsCompanion extends UpdateCompanion<ContentItem> {
  final Value<int> id;
  final Value<String> itemType;
  final Value<String> term;
  final Value<String?> reading;
  final Value<String> meaning;
  final Value<String?> example;
  final Value<String?> tags;
  final Value<String> createdAt;
  const ContentItemsCompanion({
    this.id = const Value.absent(),
    this.itemType = const Value.absent(),
    this.term = const Value.absent(),
    this.reading = const Value.absent(),
    this.meaning = const Value.absent(),
    this.example = const Value.absent(),
    this.tags = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ContentItemsCompanion.insert({
    this.id = const Value.absent(),
    required String itemType,
    required String term,
    this.reading = const Value.absent(),
    required String meaning,
    this.example = const Value.absent(),
    this.tags = const Value.absent(),
    required String createdAt,
  })  : itemType = Value(itemType),
        term = Value(term),
        meaning = Value(meaning),
        createdAt = Value(createdAt);
  static Insertable<ContentItem> custom({
    Expression<int>? id,
    Expression<String>? itemType,
    Expression<String>? term,
    Expression<String>? reading,
    Expression<String>? meaning,
    Expression<String>? example,
    Expression<String>? tags,
    Expression<String>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemType != null) 'item_type': itemType,
      if (term != null) 'term': term,
      if (reading != null) 'reading': reading,
      if (meaning != null) 'meaning': meaning,
      if (example != null) 'example': example,
      if (tags != null) 'tags': tags,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ContentItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? itemType,
      Value<String>? term,
      Value<String?>? reading,
      Value<String>? meaning,
      Value<String?>? example,
      Value<String?>? tags,
      Value<String>? createdAt}) {
    return ContentItemsCompanion(
      id: id ?? this.id,
      itemType: itemType ?? this.itemType,
      term: term ?? this.term,
      reading: reading ?? this.reading,
      meaning: meaning ?? this.meaning,
      example: example ?? this.example,
      tags: tags ?? this.tags,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemType.present) {
      map['item_type'] = Variable<String>(itemType.value);
    }
    if (term.present) {
      map['term'] = Variable<String>(term.value);
    }
    if (reading.present) {
      map['reading'] = Variable<String>(reading.value);
    }
    if (meaning.present) {
      map['meaning'] = Variable<String>(meaning.value);
    }
    if (example.present) {
      map['example'] = Variable<String>(example.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentItemsCompanion(')
          ..write('id: $id, ')
          ..write('itemType: $itemType, ')
          ..write('term: $term, ')
          ..write('reading: $reading, ')
          ..write('meaning: $meaning, ')
          ..write('example: $example, ')
          ..write('tags: $tags, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ContentSentencesTable extends ContentSentences
    with TableInfo<$ContentSentencesTable, ContentSentence> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContentSentencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sentenceMeta =
      const VerificationMeta('sentence');
  @override
  late final GeneratedColumn<String> sentence = GeneratedColumn<String>(
      'sentence', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _clozeMeta = const VerificationMeta('cloze');
  @override
  late final GeneratedColumn<String> cloze = GeneratedColumn<String>(
      'cloze', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String> answer = GeneratedColumn<String>(
      'answer', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _kindMeta = const VerificationMeta('kind');
  @override
  late final GeneratedColumn<String> kind = GeneratedColumn<String>(
      'kind', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('example'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<String> createdAt = GeneratedColumn<String>(
      'created_at', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemId, sentence, cloze, answer, kind, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sentences';
  @override
  VerificationContext validateIntegrity(Insertable<ContentSentence> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    }
    if (data.containsKey('sentence')) {
      context.handle(_sentenceMeta,
          sentence.isAcceptableOrUnknown(data['sentence']!, _sentenceMeta));
    } else if (isInserting) {
      context.missing(_sentenceMeta);
    }
    if (data.containsKey('cloze')) {
      context.handle(
          _clozeMeta, cloze.isAcceptableOrUnknown(data['cloze']!, _clozeMeta));
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer']!, _answerMeta));
    }
    if (data.containsKey('kind')) {
      context.handle(
          _kindMeta, kind.isAcceptableOrUnknown(data['kind']!, _kindMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ContentSentence map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContentSentence(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id']),
      sentence: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sentence'])!,
      cloze: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cloze']),
      answer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}answer']),
      kind: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kind'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ContentSentencesTable createAlias(String alias) {
    return $ContentSentencesTable(attachedDatabase, alias);
  }
}

class ContentSentence extends DataClass implements Insertable<ContentSentence> {
  final int id;
  final int? itemId;
  final String sentence;
  final String? cloze;
  final String? answer;
  final String kind;
  final String createdAt;
  const ContentSentence(
      {required this.id,
      this.itemId,
      required this.sentence,
      this.cloze,
      this.answer,
      required this.kind,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || itemId != null) {
      map['item_id'] = Variable<int>(itemId);
    }
    map['sentence'] = Variable<String>(sentence);
    if (!nullToAbsent || cloze != null) {
      map['cloze'] = Variable<String>(cloze);
    }
    if (!nullToAbsent || answer != null) {
      map['answer'] = Variable<String>(answer);
    }
    map['kind'] = Variable<String>(kind);
    map['created_at'] = Variable<String>(createdAt);
    return map;
  }

  ContentSentencesCompanion toCompanion(bool nullToAbsent) {
    return ContentSentencesCompanion(
      id: Value(id),
      itemId:
          itemId == null && nullToAbsent ? const Value.absent() : Value(itemId),
      sentence: Value(sentence),
      cloze:
          cloze == null && nullToAbsent ? const Value.absent() : Value(cloze),
      answer:
          answer == null && nullToAbsent ? const Value.absent() : Value(answer),
      kind: Value(kind),
      createdAt: Value(createdAt),
    );
  }

  factory ContentSentence.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContentSentence(
      id: serializer.fromJson<int>(json['id']),
      itemId: serializer.fromJson<int?>(json['itemId']),
      sentence: serializer.fromJson<String>(json['sentence']),
      cloze: serializer.fromJson<String?>(json['cloze']),
      answer: serializer.fromJson<String?>(json['answer']),
      kind: serializer.fromJson<String>(json['kind']),
      createdAt: serializer.fromJson<String>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemId': serializer.toJson<int?>(itemId),
      'sentence': serializer.toJson<String>(sentence),
      'cloze': serializer.toJson<String?>(cloze),
      'answer': serializer.toJson<String?>(answer),
      'kind': serializer.toJson<String>(kind),
      'createdAt': serializer.toJson<String>(createdAt),
    };
  }

  ContentSentence copyWith(
          {int? id,
          Value<int?> itemId = const Value.absent(),
          String? sentence,
          Value<String?> cloze = const Value.absent(),
          Value<String?> answer = const Value.absent(),
          String? kind,
          String? createdAt}) =>
      ContentSentence(
        id: id ?? this.id,
        itemId: itemId.present ? itemId.value : this.itemId,
        sentence: sentence ?? this.sentence,
        cloze: cloze.present ? cloze.value : this.cloze,
        answer: answer.present ? answer.value : this.answer,
        kind: kind ?? this.kind,
        createdAt: createdAt ?? this.createdAt,
      );
  ContentSentence copyWithCompanion(ContentSentencesCompanion data) {
    return ContentSentence(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      sentence: data.sentence.present ? data.sentence.value : this.sentence,
      cloze: data.cloze.present ? data.cloze.value : this.cloze,
      answer: data.answer.present ? data.answer.value : this.answer,
      kind: data.kind.present ? data.kind.value : this.kind,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContentSentence(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('sentence: $sentence, ')
          ..write('cloze: $cloze, ')
          ..write('answer: $answer, ')
          ..write('kind: $kind, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, itemId, sentence, cloze, answer, kind, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentSentence &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.sentence == this.sentence &&
          other.cloze == this.cloze &&
          other.answer == this.answer &&
          other.kind == this.kind &&
          other.createdAt == this.createdAt);
}

class ContentSentencesCompanion extends UpdateCompanion<ContentSentence> {
  final Value<int> id;
  final Value<int?> itemId;
  final Value<String> sentence;
  final Value<String?> cloze;
  final Value<String?> answer;
  final Value<String> kind;
  final Value<String> createdAt;
  const ContentSentencesCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.sentence = const Value.absent(),
    this.cloze = const Value.absent(),
    this.answer = const Value.absent(),
    this.kind = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ContentSentencesCompanion.insert({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    required String sentence,
    this.cloze = const Value.absent(),
    this.answer = const Value.absent(),
    this.kind = const Value.absent(),
    required String createdAt,
  })  : sentence = Value(sentence),
        createdAt = Value(createdAt);
  static Insertable<ContentSentence> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<String>? sentence,
    Expression<String>? cloze,
    Expression<String>? answer,
    Expression<String>? kind,
    Expression<String>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (sentence != null) 'sentence': sentence,
      if (cloze != null) 'cloze': cloze,
      if (answer != null) 'answer': answer,
      if (kind != null) 'kind': kind,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ContentSentencesCompanion copyWith(
      {Value<int>? id,
      Value<int?>? itemId,
      Value<String>? sentence,
      Value<String?>? cloze,
      Value<String?>? answer,
      Value<String>? kind,
      Value<String>? createdAt}) {
    return ContentSentencesCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      sentence: sentence ?? this.sentence,
      cloze: cloze ?? this.cloze,
      answer: answer ?? this.answer,
      kind: kind ?? this.kind,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (sentence.present) {
      map['sentence'] = Variable<String>(sentence.value);
    }
    if (cloze.present) {
      map['cloze'] = Variable<String>(cloze.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (kind.present) {
      map['kind'] = Variable<String>(kind.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<String>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentSentencesCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('sentence: $sentence, ')
          ..write('cloze: $cloze, ')
          ..write('answer: $answer, ')
          ..write('kind: $kind, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ContentMetaTable extends ContentMeta
    with TableInfo<$ContentMetaTable, ContentMetaData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContentMetaTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'content_meta';
  @override
  VerificationContext validateIntegrity(Insertable<ContentMetaData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  ContentMetaData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ContentMetaData(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $ContentMetaTable createAlias(String alias) {
    return $ContentMetaTable(attachedDatabase, alias);
  }
}

class ContentMetaData extends DataClass implements Insertable<ContentMetaData> {
  final String key;
  final String value;
  const ContentMetaData({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  ContentMetaCompanion toCompanion(bool nullToAbsent) {
    return ContentMetaCompanion(
      key: Value(key),
      value: Value(value),
    );
  }

  factory ContentMetaData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ContentMetaData(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  ContentMetaData copyWith({String? key, String? value}) => ContentMetaData(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  ContentMetaData copyWithCompanion(ContentMetaCompanion data) {
    return ContentMetaData(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ContentMetaData(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ContentMetaData &&
          other.key == this.key &&
          other.value == this.value);
}

class ContentMetaCompanion extends UpdateCompanion<ContentMetaData> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const ContentMetaCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ContentMetaCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        value = Value(value);
  static Insertable<ContentMetaData> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ContentMetaCompanion copyWith(
      {Value<String>? key, Value<String>? value, Value<int>? rowid}) {
    return ContentMetaCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContentMetaCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ContentDatabase extends GeneratedDatabase {
  _$ContentDatabase(QueryExecutor e) : super(e);
  $ContentDatabaseManager get managers => $ContentDatabaseManager(this);
  late final $ContentItemsTable contentItems = $ContentItemsTable(this);
  late final $ContentSentencesTable contentSentences =
      $ContentSentencesTable(this);
  late final $ContentMetaTable contentMeta = $ContentMetaTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [contentItems, contentSentences, contentMeta];
}

typedef $$ContentItemsTableCreateCompanionBuilder = ContentItemsCompanion
    Function({
  Value<int> id,
  required String itemType,
  required String term,
  Value<String?> reading,
  required String meaning,
  Value<String?> example,
  Value<String?> tags,
  required String createdAt,
});
typedef $$ContentItemsTableUpdateCompanionBuilder = ContentItemsCompanion
    Function({
  Value<int> id,
  Value<String> itemType,
  Value<String> term,
  Value<String?> reading,
  Value<String> meaning,
  Value<String?> example,
  Value<String?> tags,
  Value<String> createdAt,
});

class $$ContentItemsTableFilterComposer
    extends Composer<_$ContentDatabase, $ContentItemsTable> {
  $$ContentItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemType => $composableBuilder(
      column: $table.itemType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get term => $composableBuilder(
      column: $table.term, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get reading => $composableBuilder(
      column: $table.reading, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get meaning => $composableBuilder(
      column: $table.meaning, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get example => $composableBuilder(
      column: $table.example, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$ContentItemsTableOrderingComposer
    extends Composer<_$ContentDatabase, $ContentItemsTable> {
  $$ContentItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemType => $composableBuilder(
      column: $table.itemType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get term => $composableBuilder(
      column: $table.term, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get reading => $composableBuilder(
      column: $table.reading, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get meaning => $composableBuilder(
      column: $table.meaning, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get example => $composableBuilder(
      column: $table.example, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tags => $composableBuilder(
      column: $table.tags, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ContentItemsTableAnnotationComposer
    extends Composer<_$ContentDatabase, $ContentItemsTable> {
  $$ContentItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemType =>
      $composableBuilder(column: $table.itemType, builder: (column) => column);

  GeneratedColumn<String> get term =>
      $composableBuilder(column: $table.term, builder: (column) => column);

  GeneratedColumn<String> get reading =>
      $composableBuilder(column: $table.reading, builder: (column) => column);

  GeneratedColumn<String> get meaning =>
      $composableBuilder(column: $table.meaning, builder: (column) => column);

  GeneratedColumn<String> get example =>
      $composableBuilder(column: $table.example, builder: (column) => column);

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ContentItemsTableTableManager extends RootTableManager<
    _$ContentDatabase,
    $ContentItemsTable,
    ContentItem,
    $$ContentItemsTableFilterComposer,
    $$ContentItemsTableOrderingComposer,
    $$ContentItemsTableAnnotationComposer,
    $$ContentItemsTableCreateCompanionBuilder,
    $$ContentItemsTableUpdateCompanionBuilder,
    (
      ContentItem,
      BaseReferences<_$ContentDatabase, $ContentItemsTable, ContentItem>
    ),
    ContentItem,
    PrefetchHooks Function()> {
  $$ContentItemsTableTableManager(
      _$ContentDatabase db, $ContentItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContentItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ContentItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ContentItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> itemType = const Value.absent(),
            Value<String> term = const Value.absent(),
            Value<String?> reading = const Value.absent(),
            Value<String> meaning = const Value.absent(),
            Value<String?> example = const Value.absent(),
            Value<String?> tags = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
          }) =>
              ContentItemsCompanion(
            id: id,
            itemType: itemType,
            term: term,
            reading: reading,
            meaning: meaning,
            example: example,
            tags: tags,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String itemType,
            required String term,
            Value<String?> reading = const Value.absent(),
            required String meaning,
            Value<String?> example = const Value.absent(),
            Value<String?> tags = const Value.absent(),
            required String createdAt,
          }) =>
              ContentItemsCompanion.insert(
            id: id,
            itemType: itemType,
            term: term,
            reading: reading,
            meaning: meaning,
            example: example,
            tags: tags,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ContentItemsTableProcessedTableManager = ProcessedTableManager<
    _$ContentDatabase,
    $ContentItemsTable,
    ContentItem,
    $$ContentItemsTableFilterComposer,
    $$ContentItemsTableOrderingComposer,
    $$ContentItemsTableAnnotationComposer,
    $$ContentItemsTableCreateCompanionBuilder,
    $$ContentItemsTableUpdateCompanionBuilder,
    (
      ContentItem,
      BaseReferences<_$ContentDatabase, $ContentItemsTable, ContentItem>
    ),
    ContentItem,
    PrefetchHooks Function()>;
typedef $$ContentSentencesTableCreateCompanionBuilder
    = ContentSentencesCompanion Function({
  Value<int> id,
  Value<int?> itemId,
  required String sentence,
  Value<String?> cloze,
  Value<String?> answer,
  Value<String> kind,
  required String createdAt,
});
typedef $$ContentSentencesTableUpdateCompanionBuilder
    = ContentSentencesCompanion Function({
  Value<int> id,
  Value<int?> itemId,
  Value<String> sentence,
  Value<String?> cloze,
  Value<String?> answer,
  Value<String> kind,
  Value<String> createdAt,
});

class $$ContentSentencesTableFilterComposer
    extends Composer<_$ContentDatabase, $ContentSentencesTable> {
  $$ContentSentencesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sentence => $composableBuilder(
      column: $table.sentence, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cloze => $composableBuilder(
      column: $table.cloze, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get answer => $composableBuilder(
      column: $table.answer, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get kind => $composableBuilder(
      column: $table.kind, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$ContentSentencesTableOrderingComposer
    extends Composer<_$ContentDatabase, $ContentSentencesTable> {
  $$ContentSentencesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get itemId => $composableBuilder(
      column: $table.itemId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sentence => $composableBuilder(
      column: $table.sentence, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cloze => $composableBuilder(
      column: $table.cloze, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get answer => $composableBuilder(
      column: $table.answer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get kind => $composableBuilder(
      column: $table.kind, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$ContentSentencesTableAnnotationComposer
    extends Composer<_$ContentDatabase, $ContentSentencesTable> {
  $$ContentSentencesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get sentence =>
      $composableBuilder(column: $table.sentence, builder: (column) => column);

  GeneratedColumn<String> get cloze =>
      $composableBuilder(column: $table.cloze, builder: (column) => column);

  GeneratedColumn<String> get answer =>
      $composableBuilder(column: $table.answer, builder: (column) => column);

  GeneratedColumn<String> get kind =>
      $composableBuilder(column: $table.kind, builder: (column) => column);

  GeneratedColumn<String> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$ContentSentencesTableTableManager extends RootTableManager<
    _$ContentDatabase,
    $ContentSentencesTable,
    ContentSentence,
    $$ContentSentencesTableFilterComposer,
    $$ContentSentencesTableOrderingComposer,
    $$ContentSentencesTableAnnotationComposer,
    $$ContentSentencesTableCreateCompanionBuilder,
    $$ContentSentencesTableUpdateCompanionBuilder,
    (
      ContentSentence,
      BaseReferences<_$ContentDatabase, $ContentSentencesTable, ContentSentence>
    ),
    ContentSentence,
    PrefetchHooks Function()> {
  $$ContentSentencesTableTableManager(
      _$ContentDatabase db, $ContentSentencesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContentSentencesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ContentSentencesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ContentSentencesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> itemId = const Value.absent(),
            Value<String> sentence = const Value.absent(),
            Value<String?> cloze = const Value.absent(),
            Value<String?> answer = const Value.absent(),
            Value<String> kind = const Value.absent(),
            Value<String> createdAt = const Value.absent(),
          }) =>
              ContentSentencesCompanion(
            id: id,
            itemId: itemId,
            sentence: sentence,
            cloze: cloze,
            answer: answer,
            kind: kind,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> itemId = const Value.absent(),
            required String sentence,
            Value<String?> cloze = const Value.absent(),
            Value<String?> answer = const Value.absent(),
            Value<String> kind = const Value.absent(),
            required String createdAt,
          }) =>
              ContentSentencesCompanion.insert(
            id: id,
            itemId: itemId,
            sentence: sentence,
            cloze: cloze,
            answer: answer,
            kind: kind,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ContentSentencesTableProcessedTableManager = ProcessedTableManager<
    _$ContentDatabase,
    $ContentSentencesTable,
    ContentSentence,
    $$ContentSentencesTableFilterComposer,
    $$ContentSentencesTableOrderingComposer,
    $$ContentSentencesTableAnnotationComposer,
    $$ContentSentencesTableCreateCompanionBuilder,
    $$ContentSentencesTableUpdateCompanionBuilder,
    (
      ContentSentence,
      BaseReferences<_$ContentDatabase, $ContentSentencesTable, ContentSentence>
    ),
    ContentSentence,
    PrefetchHooks Function()>;
typedef $$ContentMetaTableCreateCompanionBuilder = ContentMetaCompanion
    Function({
  required String key,
  required String value,
  Value<int> rowid,
});
typedef $$ContentMetaTableUpdateCompanionBuilder = ContentMetaCompanion
    Function({
  Value<String> key,
  Value<String> value,
  Value<int> rowid,
});

class $$ContentMetaTableFilterComposer
    extends Composer<_$ContentDatabase, $ContentMetaTable> {
  $$ContentMetaTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));
}

class $$ContentMetaTableOrderingComposer
    extends Composer<_$ContentDatabase, $ContentMetaTable> {
  $$ContentMetaTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));
}

class $$ContentMetaTableAnnotationComposer
    extends Composer<_$ContentDatabase, $ContentMetaTable> {
  $$ContentMetaTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$ContentMetaTableTableManager extends RootTableManager<
    _$ContentDatabase,
    $ContentMetaTable,
    ContentMetaData,
    $$ContentMetaTableFilterComposer,
    $$ContentMetaTableOrderingComposer,
    $$ContentMetaTableAnnotationComposer,
    $$ContentMetaTableCreateCompanionBuilder,
    $$ContentMetaTableUpdateCompanionBuilder,
    (
      ContentMetaData,
      BaseReferences<_$ContentDatabase, $ContentMetaTable, ContentMetaData>
    ),
    ContentMetaData,
    PrefetchHooks Function()> {
  $$ContentMetaTableTableManager(_$ContentDatabase db, $ContentMetaTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ContentMetaTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ContentMetaTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ContentMetaTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ContentMetaCompanion(
            key: key,
            value: value,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            required String value,
            Value<int> rowid = const Value.absent(),
          }) =>
              ContentMetaCompanion.insert(
            key: key,
            value: value,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ContentMetaTableProcessedTableManager = ProcessedTableManager<
    _$ContentDatabase,
    $ContentMetaTable,
    ContentMetaData,
    $$ContentMetaTableFilterComposer,
    $$ContentMetaTableOrderingComposer,
    $$ContentMetaTableAnnotationComposer,
    $$ContentMetaTableCreateCompanionBuilder,
    $$ContentMetaTableUpdateCompanionBuilder,
    (
      ContentMetaData,
      BaseReferences<_$ContentDatabase, $ContentMetaTable, ContentMetaData>
    ),
    ContentMetaData,
    PrefetchHooks Function()>;

class $ContentDatabaseManager {
  final _$ContentDatabase _db;
  $ContentDatabaseManager(this._db);
  $$ContentItemsTableTableManager get contentItems =>
      $$ContentItemsTableTableManager(_db, _db.contentItems);
  $$ContentSentencesTableTableManager get contentSentences =>
      $$ContentSentencesTableTableManager(_db, _db.contentSentences);
  $$ContentMetaTableTableManager get contentMeta =>
      $$ContentMetaTableTableManager(_db, _db.contentMeta);
}
