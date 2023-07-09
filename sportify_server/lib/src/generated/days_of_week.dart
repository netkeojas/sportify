/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class DaysOfWeek extends _i1.TableRow {
  DaysOfWeek({
    int? id,
    required this.name,
    required this.code,
  }) : super(id);

  factory DaysOfWeek.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return DaysOfWeek(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      code: serializationManager.deserialize<String>(jsonSerialization['code']),
    );
  }

  static final t = DaysOfWeekTable();

  String name;

  String code;

  @override
  String get tableName => 'days_of_week';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'code': code,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'code':
        code = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<DaysOfWeek>> find(
    _i1.Session session, {
    DaysOfWeekExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DaysOfWeek>(
      where: where != null ? where(DaysOfWeek.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DaysOfWeek?> findSingleRow(
    _i1.Session session, {
    DaysOfWeekExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<DaysOfWeek>(
      where: where != null ? where(DaysOfWeek.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<DaysOfWeek?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<DaysOfWeek>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required DaysOfWeekExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DaysOfWeek>(
      where: where(DaysOfWeek.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    DaysOfWeek row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    DaysOfWeek row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    DaysOfWeek row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    DaysOfWeekExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DaysOfWeek>(
      where: where != null ? where(DaysOfWeek.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef DaysOfWeekExpressionBuilder = _i1.Expression Function(DaysOfWeekTable);

class DaysOfWeekTable extends _i1.Table {
  DaysOfWeekTable() : super(tableName: 'days_of_week');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final code = _i1.ColumnString('code');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        code,
      ];
}

@Deprecated('Use DaysOfWeekTable.t instead.')
DaysOfWeekTable tDaysOfWeek = DaysOfWeekTable();
