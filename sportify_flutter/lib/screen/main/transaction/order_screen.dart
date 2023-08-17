import 'package:flutter/material.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/main.dart';

import '../../../model/field_order.dart';
import '../../../theme.dart';
import '../../../utils/dummy_data.dart';
import '../../../widget/no_transaction_message.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<FieldOrder> fieldOrderList = dummyUserOrderList;

  List<SportVenueBooking> _sportVenueBookings = [];

  @override
  void initState() {
    super.initState();
    fetchSportBookings();
  }

  fetchSportBookings() async {
    var sportBookings =
        await client.sportVenueBooking.getAllSportVenueBookings();
    if (sportBookings != null) {
      setState(() {
        _sportVenueBookings = sportBookings;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_sportVenueBookings != null) {
      return Scaffold(
          backgroundColor: backgroundColor,
          body: _sportVenueBookings.isEmpty
              ? Center(
                  child: SingleChildScrollView(
                      child: NoTranscationMessage(
                  messageTitle: "No Transactions, yet.",
                  messageDesc:
                      "You have never placed an order. Let's explore the sport venue near you.",
                )))
              : ListView.builder(
                  itemCount: _sportVenueBookings.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      splashColor: primaryColor100,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            // Container(
                            //   width: 50,
                            //   height: 50,
                            //   decoration: BoxDecoration(
                            //       shape: BoxShape.circle,
                            //       image: DecorationImage(
                            //           fit: BoxFit.cover,
                            //           image: AssetImage(fieldOrderList[index]
                            //               .field
                            //               .imageAsset))),
                            // ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _sportVenueBookings[index]
                                      .venueSportHasAreaId
                                      .toString(),
                                  style: normalTextStyle,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                    _sportVenueBookings[index]
                                        .dateOfBooking
                                        .toIso8601String(),
                                    style: normalTextStyle),
                              ],
                            ),
                            const Spacer(),
                            Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.red.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(color: Colors.red)),
                                child: Text(
                                  _sportVenueBookings[index].bookingStatus,
                                  style: normalTextStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red),
                                ))
                          ],
                        ),
                      ),
                    );
                  }));
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
