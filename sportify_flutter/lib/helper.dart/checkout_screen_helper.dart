import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/models/time_slot.dart';

// Add a check for booking status as well to fetch correct data
Future<List<TimeSlot>> fetchBookedSlotsOfDay(
    bookingClient, venueAreaId, dateOfBooking) async {
  var bookingList = await bookingClient.getAllSportVenueBookingsForDateAndArea(
      venueSportHasAreaId: venueAreaId, dateTime: dateOfBooking);
  List<TimeSlot> bookedTimeSlots = [];
  DateTime currentTime = DateTime.now();
  for (var element in bookingList) {
    if (element.startTimeOfBooking > currentTime.hour) {
      var fromTime = element.startTimeOfBooking;
      var toTime = element.startTimeOfBooking + element.numberOfHours;
      bookedTimeSlots.add(TimeSlot(fromTime: fromTime, toTime: toTime));
    }
  }
  return bookedTimeSlots;
}

bookSlot(bookingCLient, SportVenueBooking booking) async {
  var response = await bookingCLient.addSportVenueBooking(booking);
  if (response) {
    print('Booked the time slot : ' +
        booking.startTimeOfBooking.toString() +
        ' - ' +
        (booking.startTimeOfBooking + booking.numberOfHours).toString() +
        ' on ' +
        booking.dateOfBooking.toString());
  } else {
    print('Could not book the given time slot');
  }
}
