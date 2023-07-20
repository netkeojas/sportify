/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SportVenueBooking extends _i1.TableRow {
  SportVenueBooking({
    int? id,
    required this.playerId,
    required this.venueSportHasAreaId,
    required this.dateOfBooking,
    required this.dayOfWeekId,
    required this.startTimeOfBooking,
    required this.totalAmount,
    required this.amountPaid,
    required this.bookingStatus,
    required this.bookingTimeStamp,
    required this.numberOfHours,
  }) : super(id);

  factory SportVenueBooking.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportVenueBooking(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      playerId:
          serializationManager.deserialize<int>(jsonSerialization['playerId']),
      venueSportHasAreaId: serializationManager
          .deserialize<List<int>>(jsonSerialization['venueSportHasAreaId']),
      dateOfBooking: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfBooking']),
      dayOfWeekId: serializationManager
          .deserialize<int>(jsonSerialization['dayOfWeekId']),
      startTimeOfBooking: serializationManager
          .deserialize<int>(jsonSerialization['startTimeOfBooking']),
      totalAmount: serializationManager
          .deserialize<double>(jsonSerialization['totalAmount']),
      amountPaid: serializationManager
          .deserialize<double>(jsonSerialization['amountPaid']),
      bookingStatus: serializationManager
          .deserialize<String>(jsonSerialization['bookingStatus']),
      bookingTimeStamp: serializationManager
          .deserialize<DateTime>(jsonSerialization['bookingTimeStamp']),
      numberOfHours: serializationManager
          .deserialize<int>(jsonSerialization['numberOfHours']),
    );
  }

  static final t = SportVenueBookingTable();

  int playerId;

  List<int> venueSportHasAreaId;

  DateTime dateOfBooking;

  int dayOfWeekId;

  int startTimeOfBooking;

  double totalAmount;

  double amountPaid;

  String bookingStatus;

  DateTime bookingTimeStamp;

  int numberOfHours;

  @override
  String get tableName => 'sport_venue_booking';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'playerId': playerId,
      'venueSportHasAreaId': venueSportHasAreaId,
      'dateOfBooking': dateOfBooking,
      'dayOfWeekId': dayOfWeekId,
      'startTimeOfBooking': startTimeOfBooking,
      'totalAmount': totalAmount,
      'amountPaid': amountPaid,
      'bookingStatus': bookingStatus,
      'bookingTimeStamp': bookingTimeStamp,
      'numberOfHours': numberOfHours,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'playerId': playerId,
      'venueSportHasAreaId': venueSportHasAreaId,
      'dateOfBooking': dateOfBooking,
      'dayOfWeekId': dayOfWeekId,
      'startTimeOfBooking': startTimeOfBooking,
      'totalAmount': totalAmount,
      'amountPaid': amountPaid,
      'bookingStatus': bookingStatus,
      'bookingTimeStamp': bookingTimeStamp,
      'numberOfHours': numberOfHours,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'playerId': playerId,
      'venueSportHasAreaId': venueSportHasAreaId,
      'dateOfBooking': dateOfBooking,
      'dayOfWeekId': dayOfWeekId,
      'startTimeOfBooking': startTimeOfBooking,
      'totalAmount': totalAmount,
      'amountPaid': amountPaid,
      'bookingStatus': bookingStatus,
      'bookingTimeStamp': bookingTimeStamp,
      'numberOfHours': numberOfHours,
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
      case 'playerId':
        playerId = value;
        return;
      case 'venueSportHasAreaId':
        venueSportHasAreaId = value;
        return;
      case 'dateOfBooking':
        dateOfBooking = value;
        return;
      case 'dayOfWeekId':
        dayOfWeekId = value;
        return;
      case 'startTimeOfBooking':
        startTimeOfBooking = value;
        return;
      case 'totalAmount':
        totalAmount = value;
        return;
      case 'amountPaid':
        amountPaid = value;
        return;
      case 'bookingStatus':
        bookingStatus = value;
        return;
      case 'bookingTimeStamp':
        bookingTimeStamp = value;
        return;
      case 'numberOfHours':
        numberOfHours = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SportVenueBooking>> find(
    _i1.Session session, {
    SportVenueBookingExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SportVenueBooking>(
      where: where != null ? where(SportVenueBooking.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenueBooking?> findSingleRow(
    _i1.Session session, {
    SportVenueBookingExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SportVenueBooking>(
      where: where != null ? where(SportVenueBooking.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenueBooking?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SportVenueBooking>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SportVenueBookingExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SportVenueBooking>(
      where: where(SportVenueBooking.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SportVenueBooking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SportVenueBooking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SportVenueBooking row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SportVenueBookingExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SportVenueBooking>(
      where: where != null ? where(SportVenueBooking.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SportVenueBookingExpressionBuilder = _i1.Expression Function(
    SportVenueBookingTable);

class SportVenueBookingTable extends _i1.Table {
  SportVenueBookingTable() : super(tableName: 'sport_venue_booking');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final playerId = _i1.ColumnInt('playerId');

  final venueSportHasAreaId = _i1.ColumnSerializable('venueSportHasAreaId');

  final dateOfBooking = _i1.ColumnDateTime('dateOfBooking');

  final dayOfWeekId = _i1.ColumnInt('dayOfWeekId');

  final startTimeOfBooking = _i1.ColumnInt('startTimeOfBooking');

  final totalAmount = _i1.ColumnDouble('totalAmount');

  final amountPaid = _i1.ColumnDouble('amountPaid');

  final bookingStatus = _i1.ColumnString('bookingStatus');

  final bookingTimeStamp = _i1.ColumnDateTime('bookingTimeStamp');

  final numberOfHours = _i1.ColumnInt('numberOfHours');

  @override
  List<_i1.Column> get columns => [
        id,
        playerId,
        venueSportHasAreaId,
        dateOfBooking,
        dayOfWeekId,
        startTimeOfBooking,
        totalAmount,
        amountPaid,
        bookingStatus,
        bookingTimeStamp,
        numberOfHours,
      ];
}

@Deprecated('Use SportVenueBookingTable.t instead.')
SportVenueBookingTable tSportVenueBooking = SportVenueBookingTable();
