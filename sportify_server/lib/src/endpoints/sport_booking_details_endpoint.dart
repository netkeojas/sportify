import 'package:serverpod/database.dart';
import 'package:serverpod/server.dart';
import 'package:sportify_server/src/generated/protocol.dart';

class SportBookingDetailsEndpoint extends Endpoint {
  Future<List<SportBookingDetails>> getSportVenueBookingDetailsForPlayer(
      Session session, int playerId) async {
    Player? player = await Player.findById(session, playerId);
    List<SportVenueBooking> sportVenueBooking = await SportVenueBooking.find(
      session,
      where: (t) =>
          playerId != null ? t.playerId.equals(playerId) : Constant(true),
    );
    List<SportBookingDetails> sportBookingDetailsList = [];

    for (var i = 0; i < sportVenueBooking.length; i++) {
      int venueAreaId = sportVenueBooking[i].venueSportHasAreaId;
      VenueSportHasArea? venueSportHasArea =
          await VenueSportHasArea.findById(session, venueAreaId);
      int soprtVenueHasSportCategoryId =
          venueSportHasArea!.sportVenueHasSportCategoryId;
      SportVenueHasSportCategory? sportVenueHasSportCategory =
          await SportVenueHasSportCategory.findById(
              session, soprtVenueHasSportCategoryId);
      SportCategory? sportCategory = await SportCategory.findById(
          session, sportVenueHasSportCategory!.sportCategoryId);
      SportVenue? sportVenue = await SportVenue.findById(
          session, sportVenueHasSportCategory.sportVenueId);
      int endTime = sportVenueBooking[i].startTimeOfBooking +
          sportVenueBooking[i].numberOfHours;
      double balance =
          sportVenueBooking[i].totalAmount - sportVenueBooking[i].amountPaid;
      SportBookingDetails sportBookingDetails = SportBookingDetails(
          player: player,
          venueArea: venueSportHasArea,
          sportCategory: sportCategory,
          venue: sportVenue,
          dateOfBooking: sportVenueBooking[i].dateOfBooking,
          startTime: sportVenueBooking[i].startTimeOfBooking,
          endTime: endTime,
          totalAmount: sportVenueBooking[i].totalAmount,
          amountPaid: sportVenueBooking[i].amountPaid,
          balance: balance,
          bookingStatus: sportVenueBooking[i].bookingStatus);
      sportBookingDetailsList.add(sportBookingDetails);
    }

    return sportBookingDetailsList;
  }
}
