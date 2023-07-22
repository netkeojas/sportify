import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/main.dart';
import 'package:sportify_flutter/models/sportVenueDetails.dart';
import '../../model/checkbox_state.dart';
import '../../model/field_order.dart';
import '../../model/sport_field.dart';
import '../../theme.dart';
import '../../utils/dummy_data.dart';
import '../main/main_screen.dart';

class CheckoutScreen extends StatefulWidget {
  // SportField field;
  SportVenueDetail field;
  int? sportCategoryIndex;

  CheckoutScreen({required this.field, this.sportCategoryIndex});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final TextEditingController _controller = TextEditingController();
  DateTime _dateTime = DateTime.now();
  final dateFormat = DateFormat("EEEE, dd MMM yyyy");
  var availableBookTime = [
    CheckBoxState(title: "00.00"),
  ];
  int _totalBill = 0;
  bool _enableCreateOrderBtn = false;
  List<String> timeList = timeToBook;
  var currentTime = "00.00";
  List<VenueSportHasArea>? _venueSportHasAreaList;
  List<SportVenueFacilityDetail>? _sportVenueFacilityDetail;

  @override
  void initState() {
    super.initState();
    print(widget.sportCategoryIndex);
    _controller.addListener(() {
      setState(() {});
    });
    fetchVenueHasSportArea(
        client.venueSportHasArea,
        widget.field.sportCategories![widget.sportCategoryIndex!.toInt()]
            .sportCategoryBelongsToVenueId);
    // for (var time in timeList) {
    //   if (time == widget.field.sportVenue!.openTiming) {
    //     currentTime = time;
    //     print("$currentTime and $time");
    //   }
    // }

    // availableBookTime.removeAt(0);
    // for (int i = timeList.indexOf(currentTime); i < 24; i++) {
    //   if (currentTime == widget.field.sportVenue!.openTiming) {
    //     break;
    //   } else {
    //     availableBookTime
    //         .add(CheckBoxState(title: "${timeList[i]} - ${timeList[i + 1]}"));
    //     currentTime = timeList[i + 1];
    //   }
    // }
  }

  fetchVenueHasSportArea(venueHasSportAreaClient, venueSportId) async {
    var sportAreaList = await venueHasSportAreaClient
        .getVenueSportHasAreaByVenueSportId(venueSportId: venueSportId);
    fetchFacilityDetails(client.sportVenueFacilityDetail, sportAreaList![0].id);
    // print(sportAreaList);
    setState(() {
      _venueSportHasAreaList = sportAreaList;
    });
  }

  fetchFacilityDetails(sportVenueFacilityDetailClient, venueHasAreaId) async {
    var facilityDetailsList = await sportVenueFacilityDetailClient
        .getAllSportVenueFacilityDetailsForGivenVenueHasAreaId(
            keyword: venueHasAreaId);
    print(facilityDetailsList);
    setState(() {
      _sportVenueFacilityDetail = facilityDetailsList;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_venueSportHasAreaList != null) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: colorWhite,
                statusBarIconBrightness: Brightness.dark,
              ),
              title: Text("Checkout"),
              backgroundColor: colorWhite,
              centerTitle: true,
              foregroundColor: primaryColor500,
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
                  right: 24, left: 24, bottom: 24, top: 8),
              sliver: SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Venue Name",
                      style: subTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor100, width: 2),
                          color: lightBlue100,
                          borderRadius:
                              BorderRadius.circular(borderRadiusSize)),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/pin.png",
                            width: 24,
                            height: 24,
                            color: primaryColor500,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(_venueSportHasAreaList![0].name,
                              style: normalTextStyle.copyWith(
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Pick a date",
                      style: subTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: () {
                        _selectDate();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: primaryColor100, width: 2),
                            color: lightBlue100,
                            borderRadius:
                                BorderRadius.circular(borderRadiusSize)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.date_range_rounded,
                              color: primaryColor500,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              _dateTime == null
                                  ? "date not selected.."
                                  : dateFormat.format(_dateTime).toString(),
                              style: normalTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Pick a Time",
                      style: subTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // ...availableBookTime.map(buildSingleCheckBox).toList(),
                  ],
                ),
              ])),
            )
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: lightBlue300,
              offset: Offset(0, 0),
              blurRadius: 10,
            )
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Total:",
                    style: descTextStyle,
                  ),
                  Text(
                    "Rp $_totalBill",
                    style: priceTextStyle,
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(borderRadiusSize))),
                    onPressed: !_enableCreateOrderBtn
                        ? null
                        : () {
                            // List<String> selectedTime = [];
                            // for (int i = 0; i < availableBookTime.length; i++) {
                            //   if (availableBookTime[i].value) {
                            //     selectedTime.add(availableBookTime[i].title);
                            //   }
                            // }
                            // dummyUserOrderList.add(FieldOrder(
                            //     field: widget.field,
                            //     user: sampleUser,
                            //     selectedDate:
                            //         dateFormat.format(_dateTime).toString(),
                            //     selectedTime: selectedTime));
                            // Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             MainScreen(currentScreen: 1)),
                            //     (route) => false);
                            // _showSnackBar(
                            //     context, "Successfully create an order");
                          },
                    child: Text(
                      "Create Order",
                      style: buttonTextStyle,
                    )),
              ),
            ],
          ),
        ),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _selectDate() async {
    await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 6))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  Widget buildSingleCheckBox(CheckBoxState checkbox) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(checkbox.title),
      value: checkbox.value,
      onChanged: (bool? value) {
        setState(() {
          checkbox.value = value!;
        });
        int totalSelectedTime = 0;
        for (int i = 0; i < availableBookTime.length; i++) {
          if (availableBookTime[i].value == true) {
            totalSelectedTime++;
          }
        }
        setState(() {
          // _totalBill = widget.field.price * totalSelectedTime;
          // if (totalSelectedTime > 0) {
          //   _enableCreateOrderBtn = true;
          // } else {
          //   _enableCreateOrderBtn = false;
          // }
        });
      },
    );
  }
}
