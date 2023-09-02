import 'package:sportify_client/sportify_client.dart';
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SportVenueBookingFlutter extends SportVenueBooking {
  SportVenueBookingFlutter(
      {super.id,
      required super.playerId,
      required super.venueSportHasAreaId,
      required super.dateOfBooking,
      required super.dayOfWeekId,
      required super.startTimeOfBooking,
      required super.totalAmount,
      required super.amountPaid,
      required super.bookingStatus,
      required super.bookingTimeStamp,
      required super.numberOfHours});

  @override
  factory SportVenueBookingFlutter.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportVenueBookingFlutter(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      playerId:
          serializationManager.deserialize<int>(jsonSerialization['playerId']),
      venueSportHasAreaId: serializationManager
          .deserialize<int>(jsonSerialization['venueSportHasAreaId']),
      dateOfBooking:
          _customDeserializeDate(jsonSerialization['dateOfBooking'] as String),
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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'playerId': playerId,
      'venueSportHasAreaId': venueSportHasAreaId,
      'dateOfBooking': _customSerializeDate(dateOfBooking),
      'dayOfWeekId': dayOfWeekId,
      'startTimeOfBooking': startTimeOfBooking,
      'totalAmount': totalAmount,
      'amountPaid': amountPaid,
      'bookingStatus': bookingStatus,
      'bookingTimeStamp': bookingTimeStamp,
      'numberOfHours': numberOfHours,
    };
  }

  static String _customSerializeDate(DateTime dateTime) {
    print("ojas 1");
    print(dateTime.toLocal().toIso8601String());
    return dateTime.toLocal().toIso8601String();
  }

  static DateTime _customDeserializeDate(String dateTimeStr) {
    print("ojas 2");
    print(DateTime.parse(dateTimeStr).toLocal());
    return DateTime.parse(dateTimeStr).toLocal();
  }
}
