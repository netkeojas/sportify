/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class VenueSportHasArea extends _i1.TableRow {
  VenueSportHasArea({
    int? id,
    required this.sportVenueHasSportCategoryId,
    required this.name,
  }) : super(id);

  factory VenueSportHasArea.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return VenueSportHasArea(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      sportVenueHasSportCategoryId: serializationManager
          .deserialize<int>(jsonSerialization['sportVenueHasSportCategoryId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  static final t = VenueSportHasAreaTable();

  int sportVenueHasSportCategoryId;

  String name;

  @override
  String get tableName => 'venue_sport_has_area';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sportVenueHasSportCategoryId': sportVenueHasSportCategoryId,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'sportVenueHasSportCategoryId': sportVenueHasSportCategoryId,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'sportVenueHasSportCategoryId': sportVenueHasSportCategoryId,
      'name': name,
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
      case 'sportVenueHasSportCategoryId':
        sportVenueHasSportCategoryId = value;
        return;
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<VenueSportHasArea>> find(
    _i1.Session session, {
    VenueSportHasAreaExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<VenueSportHasArea>(
      where: where != null ? where(VenueSportHasArea.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<VenueSportHasArea?> findSingleRow(
    _i1.Session session, {
    VenueSportHasAreaExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<VenueSportHasArea>(
      where: where != null ? where(VenueSportHasArea.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<VenueSportHasArea?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<VenueSportHasArea>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required VenueSportHasAreaExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<VenueSportHasArea>(
      where: where(VenueSportHasArea.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    VenueSportHasArea row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    VenueSportHasArea row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    VenueSportHasArea row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    VenueSportHasAreaExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<VenueSportHasArea>(
      where: where != null ? where(VenueSportHasArea.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef VenueSportHasAreaExpressionBuilder = _i1.Expression Function(
    VenueSportHasAreaTable);

class VenueSportHasAreaTable extends _i1.Table {
  VenueSportHasAreaTable() : super(tableName: 'venue_sport_has_area');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final sportVenueHasSportCategoryId =
      _i1.ColumnInt('sportVenueHasSportCategoryId');

  final name = _i1.ColumnString('name');

  @override
  List<_i1.Column> get columns => [
        id,
        sportVenueHasSportCategoryId,
        name,
      ];
}

@Deprecated('Use VenueSportHasAreaTable.t instead.')
VenueSportHasAreaTable tVenueSportHasArea = VenueSportHasAreaTable();