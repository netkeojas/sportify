/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SportVenueBooking extends _i1.SerializableEntity {
  SportVenueBooking({
    this.id,
    required this.playerId,
    required this.venueSportHasAreaId,
    required this.dateOfBooking,
    required this.dayOfWeekId,
    required this.timeSlotOfDayId,
    required this.totalAmount,
    required this.amountPaid,
    required this.bookingStatus,
  });

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
      timeSlotOfDayId: serializationManager
          .deserialize<List<int>>(jsonSerialization['timeSlotOfDayId']),
      totalAmount: serializationManager
          .deserialize<double>(jsonSerialization['totalAmount']),
      amountPaid: serializationManager
          .deserialize<double>(jsonSerialization['amountPaid']),
      bookingStatus: serializationManager
          .deserialize<String>(jsonSerialization['bookingStatus']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int playerId;

  List<int> venueSportHasAreaId;

  DateTime dateOfBooking;

  int dayOfWeekId;

  List<int> timeSlotOfDayId;

  double totalAmount;

  double amountPaid;

  String bookingStatus;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'playerId': playerId,
      'venueSportHasAreaId': venueSportHasAreaId,
      'dateOfBooking': dateOfBooking,
      'dayOfWeekId': dayOfWeekId,
      'timeSlotOfDayId': timeSlotOfDayId,
      'totalAmount': totalAmount,
      'amountPaid': amountPaid,
      'bookingStatus': bookingStatus,
    };
  }
}
