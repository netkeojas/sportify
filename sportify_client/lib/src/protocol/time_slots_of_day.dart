/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class TimeSlotsOfDay extends _i1.SerializableEntity {
  TimeSlotsOfDay({
    this.id,
    required this.code,
    required this.fromTime,
    required this.toTime,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String code;

  String fromTime;

  String toTime;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'fromTime': fromTime,
      'toTime': toTime,
    };
  }
}
