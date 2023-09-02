import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/helper.dart/date_time_helper.dart';
import 'package:sportify_flutter/models/time_slot.dart';
import 'dart:math';

import '../models/sport_venue_booking_flutter.dart';

// Add a check for booking status as well to fetch correct data
// TODO - data is incorrect for more than 1 hour time slots
Future<List<TimeSlot>> fetchBookedSlotsOfDay(
    bookingClient, venueAreaId, dateOfBooking) async {
  print("date-time: $dateOfBooking");
  var bookingList = await bookingClient.getAllSportVenueBookingsForDateAndArea(
      venueSportHasAreaId: venueAreaId, dateTime: dateOfBooking);
  List<TimeSlot> bookedTimeSlots = [];
  DateTime currentTime = DateTime.now();
  if (compareDates(
          date1: convertToDateOnlyFormat(dateTime: currentTime),
          date2: dateOfBooking) ==
      1) {
    for (var element in bookingList) {
      var fromTime = element.startTimeOfBooking;
      var toTime = element.startTimeOfBooking + element.numberOfHours;
      bookedTimeSlots.add(TimeSlot(fromTime: fromTime, toTime: toTime));
    }
  } else if (compareDates(
          date1: convertToDateOnlyFormat(dateTime: currentTime),
          date2: dateOfBooking) ==
      0) {
    for (var element in bookingList) {
      if (element.startTimeOfBooking > currentTime.hour) {
        var fromTime = element.startTimeOfBooking;
        var toTime = element.startTimeOfBooking + element.numberOfHours;
        bookedTimeSlots.add(TimeSlot(fromTime: fromTime, toTime: toTime));
      }
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

Future<SportVenueBooking> createBooking(
    playerId,
    venueSportHasAreaId,
    dateOfBooking,
    startTimeOfBooking,
    numberOfhours,
    sportVenueFacilityDetail) async {
  var totalAmount = await calculateTotalAmountToBePaid(
      sportVenueFacilityDetail,
      venueSportHasAreaId,
      startTimeOfBooking,
      numberOfhours,
      dateOfBooking.weekday);
  print("createBooking - dateOfBooking: $dateOfBooking");
  return SportVenueBookingFlutter(
      playerId: playerId,
      venueSportHasAreaId: venueSportHasAreaId,
      dateOfBooking: convertToDateOnlyFormat(dateTime: dateOfBooking),
      dayOfWeekId: dateOfBooking.weekday,
      startTimeOfBooking: startTimeOfBooking,
      totalAmount: totalAmount,
      amountPaid: 0,
      bookingStatus: 'PENDING_PAYMENT',
      bookingTimeStamp: DateTime.now().toLocal(),
      numberOfHours: numberOfhours);
}

calculateTotalAmountToBePaid(
    List<SportVenueFacilityDetail> sportVenueFacilityDetail,
    int venueSportHasAreaId,
    int startTimeOfBooking,
    int numberOfHours,
    int day) async {
  int startTime = startTimeOfBooking;
  int dayOfBooking = day;
  List<SportVenueFacilityDetail> filteredDayWiseList = [];
  for (var element in sportVenueFacilityDetail) {
    if (dayOfBooking >= element.fromDay && dayOfBooking <= element.toDay) {
      filteredDayWiseList.add(element);
    }
  }
  double basePrice = 0;
  for (var element in filteredDayWiseList) {
    if (startTime >= element.fromTime && startTime < element.toTime) {
      if (element.pricePerPerson == 0) {
        basePrice = element.pricePerHour;
        break;
      }
    }
  }
  double additionalHoursPrice = 0;
  for (var i = (startTime + 1); i < (startTime + numberOfHours); i++) {
    for (var element in filteredDayWiseList) {
      if (i >= element.fromTime && i < element.toTime) {
        if (element.pricePerPerson == 0) {
          additionalHoursPrice = element.pricePerHour + additionalHoursPrice;
          break;
        }
      }
    }
  }
  double totalPrice = additionalHoursPrice + basePrice;
  print("totalPrice: $totalPrice");
  return totalPrice;
}
