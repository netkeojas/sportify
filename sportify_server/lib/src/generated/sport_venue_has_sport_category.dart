/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SportVenueHasSportCategory extends _i1.TableRow {
  SportVenueHasSportCategory({
    int? id,
    required this.sportVenueId,
    required this.sportCategoryId,
  }) : super(id);

  factory SportVenueHasSportCategory.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportVenueHasSportCategory(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      sportVenueId: serializationManager
          .deserialize<int>(jsonSerialization['sportVenueId']),
      sportCategoryId: serializationManager
          .deserialize<int>(jsonSerialization['sportCategoryId']),
    );
  }

  static final t = SportVenueHasSportCategoryTable();

  int sportVenueId;

  int sportCategoryId;

  @override
  String get tableName => 'sport_venue_has_sport_category';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sportVenueId': sportVenueId,
      'sportCategoryId': sportCategoryId,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'sportVenueId': sportVenueId,
      'sportCategoryId': sportCategoryId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'sportVenueId': sportVenueId,
      'sportCategoryId': sportCategoryId,
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
      case 'sportVenueId':
        sportVenueId = value;
        return;
      case 'sportCategoryId':
        sportCategoryId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SportVenueHasSportCategory>> find(
    _i1.Session session, {
    SportVenueHasSportCategoryExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SportVenueHasSportCategory>(
      where: where != null ? where(SportVenueHasSportCategory.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenueHasSportCategory?> findSingleRow(
    _i1.Session session, {
    SportVenueHasSportCategoryExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SportVenueHasSportCategory>(
      where: where != null ? where(SportVenueHasSportCategory.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenueHasSportCategory?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SportVenueHasSportCategory>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SportVenueHasSportCategoryExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SportVenueHasSportCategory>(
      where: where(SportVenueHasSportCategory.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SportVenueHasSportCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SportVenueHasSportCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SportVenueHasSportCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SportVenueHasSportCategoryExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SportVenueHasSportCategory>(
      where: where != null ? where(SportVenueHasSportCategory.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SportVenueHasSportCategoryExpressionBuilder = _i1.Expression Function(
    SportVenueHasSportCategoryTable);

class SportVenueHasSportCategoryTable extends _i1.Table {
  SportVenueHasSportCategoryTable()
      : super(tableName: 'sport_venue_has_sport_category');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final sportVenueId = _i1.ColumnInt('sportVenueId');

  final sportCategoryId = _i1.ColumnInt('sportCategoryId');

  @override
  List<_i1.Column> get columns => [
        id,
        sportVenueId,
        sportCategoryId,
      ];
}

@Deprecated('Use SportVenueHasSportCategoryTable.t instead.')
SportVenueHasSportCategoryTable tSportVenueHasSportCategory =
    SportVenueHasSportCategoryTable();
