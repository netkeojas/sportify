/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SportVenueFacilityDetail extends _i1.SerializableEntity {
  SportVenueFacilityDetail({
    this.id,
    required this.venueHasSportAreaId,
    required this.fromDay,
    required this.toDay,
    required this.fromTime,
    required this.toTime,
    required this.pricePerHour,
    required this.pricePerPerson,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int venueHasSportAreaId;

  int fromDay;

  int toDay;

  int fromTime;

  int toTime;

  double pricePerHour;

  double pricePerPerson;

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
}
