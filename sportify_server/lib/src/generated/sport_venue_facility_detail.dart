/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SportVenueFacilityDetail extends _i1.TableRow {
  SportVenueFacilityDetail({
    int? id,
    required this.venueHasSportAreaId,
    required this.fromDay,
    required this.toDay,
    required this.fromTime,
    required this.toTime,
    required this.pricePerHour,
    required this.pricePerPerson,
  }) : super(id);

  factory SportVenueFacilityDetail.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportVenueFacilityDetail(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      venueHasSportAreaId: serializationManager
          .deserialize<int>(jsonSerialization['venueHasSportAreaId']),
      fromDay:
          serializationManager.deserialize<int>(jsonSerialization['fromDay']),
      toDay: serializationManager.deserialize<int>(jsonSerialization['toDay']),
      fromTime:
          serializationManager.deserialize<int>(jsonSerialization['fromTime']),
      toTime:
          serializationManager.deserialize<int>(jsonSerialization['toTime']),
      pricePerHour: serializationManager
          .deserialize<double>(jsonSerialization['pricePerHour']),
      pricePerPerson: serializationManager
          .deserialize<double>(jsonSerialization['pricePerPerson']),
    );
  }

  static final t = SportVenueFacilityDetailTable();

  int venueHasSportAreaId;

  int fromDay;

  int toDay;

  int fromTime;

  int toTime;

  double pricePerHour;

  double pricePerPerson;

  @override
  String get tableName => 'sport_venue_facility_detail';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'venueHasSportAreaId': venueHasSportAreaId,
      'fromDay': fromDay,
      'toDay': toDay,
      'fromTime': fromTime,
      'toTime': toTime,
      'pricePerHour': pricePerHour,
      'pricePerPerson': pricePerPerson,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'venueHasSportAreaId': venueHasSportAreaId,
      'fromDay': fromDay,
      'toDay': toDay,
      'fromTime': fromTime,
      'toTime': toTime,
      'pricePerHour': pricePerHour,
      'pricePerPerson': pricePerPerson,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'venueHasSportAreaId': venueHasSportAreaId,
      'fromDay': fromDay,
      'toDay': toDay,
      'fromTime': fromTime,
      'toTime': toTime,
      'pricePerHour': pricePerHour,
      'pricePerPerson': pricePerPerson,
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
      case 'venueHasSportAreaId':
        venueHasSportAreaId = value;
        return;
      case 'fromDay':
        fromDay = value;
        return;
      case 'toDay':
        toDay = value;
        return;
      case 'fromTime':
        fromTime = value;
        return;
      case 'toTime':
        toTime = value;
        return;
      case 'pricePerHour':
        pricePerHour = value;
        return;
      case 'pricePerPerson':
        pricePerPerson = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SportVenueFacilityDetail>> find(
    _i1.Session session, {
    SportVenueFacilityDetailExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SportVenueFacilityDetail>(
      where: where != null ? where(SportVenueFacilityDetail.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenueFacilityDetail?> findSingleRow(
    _i1.Session session, {
    SportVenueFacilityDetailExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SportVenueFacilityDetail>(
      where: where != null ? where(SportVenueFacilityDetail.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenueFacilityDetail?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SportVenueFacilityDetail>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SportVenueFacilityDetailExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SportVenueFacilityDetail>(
      where: where(SportVenueFacilityDetail.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SportVenueFacilityDetail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SportVenueFacilityDetail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SportVenueFacilityDetail row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SportVenueFacilityDetailExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SportVenueFacilityDetail>(
      where: where != null ? where(SportVenueFacilityDetail.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SportVenueFacilityDetailExpressionBuilder = _i1.Expression Function(
    SportVenueFacilityDetailTable);

class SportVenueFacilityDetailTable extends _i1.Table {
  SportVenueFacilityDetailTable()
      : super(tableName: 'sport_venue_facility_detail');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final venueHasSportAreaId = _i1.ColumnInt('venueHasSportAreaId');

  final fromDay = _i1.ColumnInt('fromDay');

  final toDay = _i1.ColumnInt('toDay');

  final fromTime = _i1.ColumnInt('fromTime');

  final toTime = _i1.ColumnInt('toTime');

  final pricePerHour = _i1.ColumnDouble('pricePerHour');

  final pricePerPerson = _i1.ColumnDouble('pricePerPerson');

  @override
  List<_i1.Column> get columns => [
        id,
        venueHasSportAreaId,
        fromDay,
        toDay,
        fromTime,
        toTime,
        pricePerHour,
        pricePerPerson,
      ];
}

@Deprecated('Use SportVenueFacilityDetailTable.t instead.')
SportVenueFacilityDetailTable tSportVenueFacilityDetail =
    SportVenueFacilityDetailTable();
