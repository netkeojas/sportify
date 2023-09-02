/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

class SportBookingDetails extends _i1.SerializableEntity {
  SportBookingDetails({
    this.player,
    this.venueArea,
    this.sportCategory,
    this.venue,
    required this.dateOfBooking,
    required this.startTime,
    required this.endTime,
    required this.totalAmount,
    required this.amountPaid,
    required this.balance,
    required this.bookingStatus,
  });

  factory SportBookingDetails.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportBookingDetails(
      player: serializationManager
          .deserialize<_i2.Player?>(jsonSerialization['player']),
      venueArea: serializationManager
          .deserialize<_i2.VenueSportHasArea?>(jsonSerialization['venueArea']),
      sportCategory: serializationManager
          .deserialize<_i2.SportCategory?>(jsonSerialization['sportCategory']),
      venue: serializationManager
          .deserialize<_i2.SportVenue?>(jsonSerialization['venue']),
      dateOfBooking: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfBooking']),
      startTime:
          serializationManager.deserialize<int>(jsonSerialization['startTime']),
      endTime:
          serializationManager.deserialize<int>(jsonSerialization['endTime']),
      totalAmount: serializationManager
          .deserialize<double>(jsonSerialization['totalAmount']),
      amountPaid: serializationManager
          .deserialize<double>(jsonSerialization['amountPaid']),
      balance: serializationManager
          .deserialize<double>(jsonSerialization['balance']),
      bookingStatus: serializationManager
          .deserialize<String>(jsonSerialization['bookingStatus']),
    );
  }

  _i2.Player? player;

  _i2.VenueSportHasArea? venueArea;

  _i2.SportCategory? sportCategory;

  _i2.SportVenue? venue;

  DateTime dateOfBooking;

  int startTime;

  int endTime;

  double totalAmount;

  double amountPaid;

  double balance;

  String bookingStatus;

  @override
  Map<String, dynamic> toJson() {
    return {
      'player': player,
      'venueArea': venueArea,
      'sportCategory': sportCategory,
      'venue': venue,
      'dateOfBooking': dateOfBooking,
      'startTime': startTime,
      'endTime': endTime,
      'totalAmount': totalAmount,
      'amountPaid': amountPaid,
      'balance': balance,
      'bookingStatus': bookingStatus,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'player': player,
      'venueArea': venueArea,
      'sportCategory': sportCategory,
      'venue': venue,
      'dateOfBooking': dateOfBooking,
      'startTime': startTime,
      'endTime': endTime,
      'totalAmount': totalAmount,
      'amountPaid': amountPaid,
      'balance': balance,
      'bookingStatus': bookingStatus,
    };
  }
}
