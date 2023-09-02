import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:sportify_client/src/protocol/sport_venue_booking.dart';

import '../../helper.dart/checkout_screen_helper.dart';
import '../../main.dart';
import '../../utils/dummy_data.dart';
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
        title: const Text('Confirm booking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Booking date: '),
                const SizedBox(
                  width: 2,
                ),
                Text(DateFormat('yyyy-MM-dd').format(
                  booking.dateOfBooking.toLocal(),
                ))
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                const Text('Start time: '),
                const SizedBox(
                  width: 2,
                ),
                Text(timeMap[booking.startTimeOfBooking]!)
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                const Text('End time: '),
                const SizedBox(
                  width: 2,
                ),
                Text(timeMap[
                    booking.startTimeOfBooking + booking.numberOfHours]!)
              ],
            ),
            const SizedBox(height: 16),
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
                          timeMap[booking.startTimeOfBooking]! +
                          ' - ' +
                          timeMap[booking.startTimeOfBooking +
                              booking.numberOfHours]! +
                          ' on ' +
                          DateFormat('yyyy-MM-dd').format(
                            booking.dateOfBooking.toLocal(),
                          ));
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
