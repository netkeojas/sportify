/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class SportVenue extends _i1.TableRow {
  SportVenue({
    int? id,
    required this.name,
    required this.address,
    required this.locationUrl,
    required this.openTiming,
    required this.aboutVenue,
    required this.gstNumber,
    required this.socialMediaIds,
    required this.contactPerson,
    required this.contactNumber,
    required this.imageUrl,
    required this.aminities,
  }) : super(id);

  factory SportVenue.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportVenue(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      address: serializationManager
          .deserialize<String>(jsonSerialization['address']),
      locationUrl: serializationManager
          .deserialize<String>(jsonSerialization['locationUrl']),
      openTiming: serializationManager
          .deserialize<String>(jsonSerialization['openTiming']),
      aboutVenue: serializationManager
          .deserialize<String>(jsonSerialization['aboutVenue']),
      gstNumber: serializationManager
          .deserialize<String>(jsonSerialization['gstNumber']),
      socialMediaIds: serializationManager
          .deserialize<List<String>>(jsonSerialization['socialMediaIds']),
      contactPerson: serializationManager
          .deserialize<String>(jsonSerialization['contactPerson']),
      contactNumber: serializationManager
          .deserialize<String>(jsonSerialization['contactNumber']),
      imageUrl: serializationManager
          .deserialize<List<String>>(jsonSerialization['imageUrl']),
      aminities: serializationManager
          .deserialize<List<int>>(jsonSerialization['aminities']),
    );
  }

  static final t = SportVenueTable();

  String name;

  String address;

  String locationUrl;

  String openTiming;

  String aboutVenue;

  String gstNumber;

  List<String> socialMediaIds;

  String contactPerson;

  String contactNumber;

  List<String> imageUrl;

  List<int> aminities;

  @override
  String get tableName => 'sport_venue';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'locationUrl': locationUrl,
      'openTiming': openTiming,
      'aboutVenue': aboutVenue,
      'gstNumber': gstNumber,
      'socialMediaIds': socialMediaIds,
      'contactPerson': contactPerson,
      'contactNumber': contactNumber,
      'imageUrl': imageUrl,
      'aminities': aminities,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'locationUrl': locationUrl,
      'openTiming': openTiming,
      'aboutVenue': aboutVenue,
      'gstNumber': gstNumber,
      'socialMediaIds': socialMediaIds,
      'contactPerson': contactPerson,
      'contactNumber': contactNumber,
      'imageUrl': imageUrl,
      'aminities': aminities,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'locationUrl': locationUrl,
      'openTiming': openTiming,
      'aboutVenue': aboutVenue,
      'gstNumber': gstNumber,
      'socialMediaIds': socialMediaIds,
      'contactPerson': contactPerson,
      'contactNumber': contactNumber,
      'imageUrl': imageUrl,
      'aminities': aminities,
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
      case 'address':
        address = value;
        return;
      case 'locationUrl':
        locationUrl = value;
        return;
      case 'openTiming':
        openTiming = value;
        return;
      case 'aboutVenue':
        aboutVenue = value;
        return;
      case 'gstNumber':
        gstNumber = value;
        return;
      case 'socialMediaIds':
        socialMediaIds = value;
        return;
      case 'contactPerson':
        contactPerson = value;
        return;
      case 'contactNumber':
        contactNumber = value;
        return;
      case 'imageUrl':
        imageUrl = value;
        return;
      case 'aminities':
        aminities = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<SportVenue>> find(
    _i1.Session session, {
    SportVenueExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SportVenue>(
      where: where != null ? where(SportVenue.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenue?> findSingleRow(
    _i1.Session session, {
    SportVenueExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SportVenue>(
      where: where != null ? where(SportVenue.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<SportVenue?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SportVenue>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required SportVenueExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SportVenue>(
      where: where(SportVenue.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    SportVenue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    SportVenue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    SportVenue row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    SportVenueExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SportVenue>(
      where: where != null ? where(SportVenue.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef SportVenueExpressionBuilder = _i1.Expression Function(SportVenueTable);

class SportVenueTable extends _i1.Table {
  SportVenueTable() : super(tableName: 'sport_venue');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final address = _i1.ColumnString('address');

  final locationUrl = _i1.ColumnString('locationUrl');

  final openTiming = _i1.ColumnString('openTiming');

  final aboutVenue = _i1.ColumnString('aboutVenue');

  final gstNumber = _i1.ColumnString('gstNumber');

  final socialMediaIds = _i1.ColumnSerializable('socialMediaIds');

  final contactPerson = _i1.ColumnString('contactPerson');

  final contactNumber = _i1.ColumnString('contactNumber');

  final imageUrl = _i1.ColumnSerializable('imageUrl');

  final aminities = _i1.ColumnSerializable('aminities');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        address,
        locationUrl,
        openTiming,
        aboutVenue,
        gstNumber,
        socialMediaIds,
        contactPerson,
        contactNumber,
        imageUrl,
        aminities,
      ];
}

@Deprecated('Use SportVenueTable.t instead.')
SportVenueTable tSportVenue = SportVenueTable();
