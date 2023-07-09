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
    required this.dayOfWeekIds,
    required this.timeSlotForDayIds,
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
      dayOfWeekIds: serializationManager
          .deserialize<List<int>>(jsonSerialization['dayOfWeekIds']),
      timeSlotForDayIds: serializationManager
          .deserialize<List<int>>(jsonSerialization['timeSlotForDayIds']),
      pricePerHour: serializationManager
          .deserialize<double>(jsonSerialization['pricePerHour']),
      pricePerPerson: serializationManager
          .deserialize<double>(jsonSerialization['pricePerPerson']),
    );
  }

  static final t = SportVenueFacilityDetailTable();

  int venueHasSportAreaId;

  List<int> dayOfWeekIds;

  List<int> timeSlotForDayIds;

  double pricePerHour;

  double pricePerPerson;

  @override
  String get tableName => 'sport_venue_facility_detail';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'venueHasSportAreaId': venueHasSportAreaId,
      'dayOfWeekIds': dayOfWeekIds,
      'timeSlotForDayIds': timeSlotForDayIds,
      'pricePerHour': pricePerHour,
      'pricePerPerson': pricePerPerson,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'venueHasSportAreaId': venueHasSportAreaId,
      'dayOfWeekIds': dayOfWeekIds,
      'timeSlotForDayIds': timeSlotForDayIds,
      'pricePerHour': pricePerHour,
      'pricePerPerson': pricePerPerson,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'venueHasSportAreaId': venueHasSportAreaId,
      'dayOfWeekIds': dayOfWeekIds,
      'timeSlotForDayIds': timeSlotForDayIds,
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
      case 'dayOfWeekIds':
        dayOfWeekIds = value;
        return;
      case 'timeSlotForDayIds':
        timeSlotForDayIds = value;
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

  final dayOfWeekIds = _i1.ColumnSerializable('dayOfWeekIds');

  final timeSlotForDayIds = _i1.ColumnSerializable('timeSlotForDayIds');

  final pricePerHour = _i1.ColumnDouble('pricePerHour');

  final pricePerPerson = _i1.ColumnDouble('pricePerPerson');

  @override
  List<_i1.Column> get columns => [
        id,
        venueHasSportAreaId,
        dayOfWeekIds,
        timeSlotForDayIds,
        pricePerHour,
        pricePerPerson,
      ];
}

@Deprecated('Use SportVenueFacilityDetailTable.t instead.')
SportVenueFacilityDetailTable tSportVenueFacilityDetail =
    SportVenueFacilityDetailTable();
