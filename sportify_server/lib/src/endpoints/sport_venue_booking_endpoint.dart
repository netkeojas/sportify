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
  timeSlotOfDayId: List<int>
  totalAmount: double
  amountPaid: double
  bookingStatus: String
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
  timeSlotOfDayId: [8]
  totalAmount: 450
  amountPaid: 0
  bookingStatus: Unpaid
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
  timeSlotOfDayId: [8]
  totalAmount: 450
  amountPaid: 0
  bookingStatus: Unpaid
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
}
