/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Player extends _i1.TableRow {
  Player({
    int? id,
    required this.name,
    required this.emailId,
    required this.contactNumber,
    required this.city,
    required this.gender,
    required this.dateOfBirth,
    required this.role,
  }) : super(id);

  factory Player.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Player(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      emailId: serializationManager
          .deserialize<String>(jsonSerialization['emailId']),
      contactNumber: serializationManager
          .deserialize<String>(jsonSerialization['contactNumber']),
      city: serializationManager.deserialize<String>(jsonSerialization['city']),
      gender:
          serializationManager.deserialize<String>(jsonSerialization['gender']),
      dateOfBirth: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfBirth']),
      role: serializationManager.deserialize<String>(jsonSerialization['role']),
    );
  }

  static final t = PlayerTable();

  String name;

  String emailId;

  String contactNumber;

  String city;

  String gender;

  DateTime dateOfBirth;

  String role;

  @override
  String get tableName => 'player';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'emailId': emailId,
      'contactNumber': contactNumber,
      'city': city,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'role': role,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'emailId': emailId,
      'contactNumber': contactNumber,
      'city': city,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'role': role,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'emailId': emailId,
      'contactNumber': contactNumber,
      'city': city,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'role': role,
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
      case 'emailId':
        emailId = value;
        return;
      case 'contactNumber':
        contactNumber = value;
        return;
      case 'city':
        city = value;
        return;
      case 'gender':
        gender = value;
        return;
      case 'dateOfBirth':
        dateOfBirth = value;
        return;
      case 'role':
        role = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Player>> find(
    _i1.Session session, {
    PlayerExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Player>(
      where: where != null ? where(Player.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Player?> findSingleRow(
    _i1.Session session, {
    PlayerExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Player>(
      where: where != null ? where(Player.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Player?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Player>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required PlayerExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Player>(
      where: where(Player.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Player row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Player row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Player row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    PlayerExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Player>(
      where: where != null ? where(Player.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef PlayerExpressionBuilder = _i1.Expression Function(PlayerTable);

class PlayerTable extends _i1.Table {
  PlayerTable() : super(tableName: 'player');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final emailId = _i1.ColumnString('emailId');

  final contactNumber = _i1.ColumnString('contactNumber');

  final city = _i1.ColumnString('city');

  final gender = _i1.ColumnString('gender');

  final dateOfBirth = _i1.ColumnDateTime('dateOfBirth');

  final role = _i1.ColumnString('role');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        emailId,
        contactNumber,
        city,
        gender,
        dateOfBirth,
        role,
      ];
}

@Deprecated('Use PlayerTable.t instead.')
PlayerTable tPlayer = PlayerTable();
