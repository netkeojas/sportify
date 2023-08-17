import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sportify_client/src/protocol/sport_venue_booking.dart';

import '../../helper.dart/checkout_screen_helper.dart';
import '../../main.dart';
import '../main/main_screen.dart';

/**
 * This page displays the details of booking and 1 proceed to pay/chekout button
 * On click of that button, we will land on the invoice page
 */
class ConfirmCheckoutScreen extends StatelessWidget {
  final SportVenueBooking booking;
  const ConfirmCheckoutScreen({required this.booking});

  void _showSnackBar(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      content: Text(message),
      margin: const EdgeInsets.all(16),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Static Text Fields Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Booking details: ' +
                  booking.dateOfBooking.toString() +
                  'Start time: ' +
                  booking.startTimeOfBooking.toString() +
                  'End time: ' +
                  '${booking.startTimeOfBooking + booking.numberOfHours}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Amount to be paid: ' + booking.totalAmount.toString(),
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // Handle button press
                  await bookSlot(client.sportVenueBooking, booking);

                  // dummyUserOrderList.add(FieldOrder(
                  //     field: widget.field,
                  //     user: sampleUser,
                  //     selectedDate:
                  //         dateFormat.format(_dateTime).toString(),
                  //     selectedTime: selectedTime));
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainScreen(currentScreen: 1)),
                      (route) => false);
                  _showSnackBar(
                      context,
                      'Booked the time slot : ' +
                          booking.startTimeOfBooking.toString() +
                          ' - ' +
                          (booking.startTimeOfBooking + booking.numberOfHours)
                              .toString() +
                          ' on ' +
                          booking.dateOfBooking.toString());
                },
                child: Text('Confirm booking'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
