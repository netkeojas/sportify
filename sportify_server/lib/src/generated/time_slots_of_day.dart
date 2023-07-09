/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class TimeSlotsOfDay extends _i1.TableRow {
  TimeSlotsOfDay({
    int? id,
    required this.code,
    required this.fromTime,
    required this.toTime,
  }) : super(id);

  factory TimeSlotsOfDay.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TimeSlotsOfDay(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      code: serializationManager.deserialize<String>(jsonSerialization['code']),
      fromTime: serializationManager
          .deserialize<String>(jsonSerialization['fromTime']),
      toTime:
          serializationManager.deserialize<String>(jsonSerialization['toTime']),
    );
  }

  static final t = TimeSlotsOfDayTable();

  String code;

  String fromTime;

  String toTime;

  @override
  String get tableName => 'time_slots_of_day';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'fromTime': fromTime,
      'toTime': toTime,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'code': code,
      'fromTime': fromTime,
      'toTime': toTime,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'code': code,
      'fromTime': fromTime,
      'toTime': toTime,
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
      case 'code':
        code = value;
        return;
      case 'fromTime':
        fromTime = value;
        return;
      case 'toTime':
        toTime = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<TimeSlotsOfDay>> find(
    _i1.Session session, {
    TimeSlotsOfDayExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TimeSlotsOfDay>(
      where: where != null ? where(TimeSlotsOfDay.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TimeSlotsOfDay?> findSingleRow(
    _i1.Session session, {
    TimeSlotsOfDayExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TimeSlotsOfDay>(
      where: where != null ? where(TimeSlotsOfDay.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<TimeSlotsOfDay?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TimeSlotsOfDay>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required TimeSlotsOfDayExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TimeSlotsOfDay>(
      where: where(TimeSlotsOfDay.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    TimeSlotsOfDay row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    TimeSlotsOfDay row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    TimeSlotsOfDay row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    TimeSlotsOfDayExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TimeSlotsOfDay>(
      where: where != null ? where(TimeSlotsOfDay.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TimeSlotsOfDayExpressionBuilder = _i1.Expression Function(
    TimeSlotsOfDayTable);

class TimeSlotsOfDayTable extends _i1.Table {
  TimeSlotsOfDayTable() : super(tableName: 'time_slots_of_day');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final code = _i1.ColumnString('code');

  final fromTime = _i1.ColumnString('fromTime');

  final toTime = _i1.ColumnString('toTime');

  @override
  List<_i1.Column> get columns => [
        id,
        code,
        fromTime,
        toTime,
      ];
}

@Deprecated('Use TimeSlotsOfDayTable.t instead.')
TimeSlotsOfDayTable tTimeSlotsOfDay = TimeSlotsOfDayTable();
