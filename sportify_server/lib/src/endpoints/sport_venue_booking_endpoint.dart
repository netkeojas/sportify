import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/*
Object structure
{
  id: int
  playerId: int
  venueSportHasAreaId: List<int>
  dateOfBooking: DateTime
  dayOfWeekId: int
  startTimeOfBooking: int
  totalAmount: double
  amountPaid: double
  bookingStatus: String
  bookingTimeStamp: DateTime
  numberOfHours: int
}
*/
class SportVenueBookingEndpoint extends Endpoint {
  // Adds an object/record for SportVenueBooking
  Future<bool> addSportVenueBooking(
      Session session, SportVenueBooking sportVenueBooking) async {
    await SportVenueBooking.insert(session, sportVenueBooking);
    return true;
  }

/*
Fetches all the sports bookings in database
@param Session - default
@return - List of objects SportVenueBooking
[
  {
  id: 1
  playerId: 2
  venueSportHasAreaId: [101]
  dateOfBooking: 21-12-23
  dayOfWeekId: 2
  startTimeOfBooking: 7
  totalAmount: 450
  amountPaid: 0
  bookingStatus: Unpaid
  bookingTimeStamp: 12-12-23
  numberOfHours: 1
}, {...}, {....}
]
*/
  Future<List<SportVenueBooking>> getAllSportVenueBookings(
      Session session) async {
    return await SportVenueBooking.find(session);
  }

/*
Fetches all the sports bookings in database for given player
@param Session - default
@param playerId - int fk Id of Player
@return - List of objects SportVenueBooking
[
  {
  id: 1
  playerId: 2
  venueSportHasAreaId: [101]
  dateOfBooking: 21-12-23
  dayOfWeekId: 2
  startTimeOfBooking: 7
  totalAmount: 450
  amountPaid: 0
  bookingStatus: Unpaid
  bookingTimeStamp: 12-12-23
  numberOfHours: 1
}, { .., playerId: 2, ....}, { .., playerId: 2, ...}
]
*/
  Future<List<SportVenueBooking>> getAllSportVenueBookingsForPlayer(
      Session session,
      {int? playerId}) async {
    return await SportVenueBooking.find(
      session,
      where: (t) =>
          playerId != null ? t.playerId.equals(playerId) : Constant(true),
    );
  }

  Future<List<SportVenueBooking>> getAllSportVenueBookingsForDateAndArea(
      Session session,
      {int? venueSportHasAreaId,
      DateTime? dateTime}) async {
    return await SportVenueBooking.find(
      session,
      where: (t) =>
          (venueSportHasAreaId != null
              ? t.venueSportHasAreaId.equals(venueSportHasAreaId)
              : Constant(true)) &
          (dateTime != null
              ? t.dateOfBooking.equals(dateTime)
              : Constant(true)),
    );
  }
}
