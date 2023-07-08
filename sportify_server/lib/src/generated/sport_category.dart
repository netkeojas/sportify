/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SportCategory extends _i1.TableRow {
  SportCategory({
    int? id,
    required this.name,
    required this.isTeamSport,
    required this.popularity,
  }) : super(id);

  factory SportCategory.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportCategory(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      isTeamSport: serializationManager
          .deserialize<bool>(jsonSerialization['isTeamSport']),
      popularity: serializationManager
          .deserialize<int>(jsonSerialization['popularity']),
    );
  }

  static final t = SportCategoryTable();

  String name;

  bool isTeamSport;

  int popularity;

  @override
  String get tableName => 'sport_category';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isTeamSport': isTeamSport,
      'popularity': popularity,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'isTeamSport': isTeamSport,
      'popularity': popularity,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'isTeamSport': isTeamSport,
      'popularity': popularity,
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
      case 'isTeamSport':
        isTeamSport = value;
        return;
      case 'popularity':
        popularity = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SportCategory>> find(
    _i1.Session session, {
    SportCategoryExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SportCategory>(
      where: where != null ? where(SportCategory.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportCategory?> findSingleRow(
    _i1.Session session, {
    SportCategoryExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SportCategory>(
      where: where != null ? where(SportCategory.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportCategory?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SportCategory>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SportCategoryExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SportCategory>(
      where: where(SportCategory.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SportCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SportCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SportCategory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SportCategoryExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SportCategory>(
      where: where != null ? where(SportCategory.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SportCategoryExpressionBuilder = _i1.Expression Function(
    SportCategoryTable);

class SportCategoryTable extends _i1.Table {
  SportCategoryTable() : super(tableName: 'sport_category');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final isTeamSport = _i1.ColumnBool('isTeamSport');

  final popularity = _i1.ColumnInt('popularity');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        isTeamSport,
        popularity,
      ];
}

@Deprecated('Use SportCategoryTable.t instead.')
SportCategoryTable tSportCategory = SportCategoryTable();
