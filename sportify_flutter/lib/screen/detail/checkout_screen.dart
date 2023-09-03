import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/helper.dart/checkout_screen_helper.dart';
import 'package:sportify_flutter/helper.dart/date_time_helper.dart';
import 'package:sportify_flutter/main.dart';
import 'package:sportify_flutter/models/sportVenueDetails.dart';
import 'package:sportify_flutter/models/time_slot.dart';
import 'package:sportify_flutter/screen/booking/confirm_checkout_screen.dart';
import '../../model/checkbox_state.dart';
import '../../theme.dart';
import '../../utils/dummy_data.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

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
    CheckBoxState(title: "00.00", isBooked: true),
  ];
  int _totalBill = 0;
  bool _enableCreateOrderBtn = false;
  List<int> timeList = timeToBook;
  int currentTime = 0;
  List<VenueSportHasArea>? _venueSportHasAreaList;
  List<SportVenueFacilityDetail>? _sportVenueFacilityDetail;
  List<TimeSlot>? _timeSlot;
  VenueSportHasArea? _venueSportHasAreaDropDownItem;
  int startTimeOfPlay = 0;
  CheckBoxState selectedValue = CheckBoxState(title: "00.00", isBooked: true);
  bool _nextHourIsBooked = false;
  bool _isTimeIncrementerVisible = false;
  int _numberOfHoursToPlay = 1;

  @override
  void initState() {
    super.initState();
    print(widget.sportCategoryIndex);
    _controller.addListener(() {
      setState(() {});
    });

    // for (var time in timeList) {
    //   if (time == widget.field.sportVenue!.openingTime) {
    //     currentTime = time;
    //     print("$currentTime and $time");
    //   }
    // }

    // availableBookTime.removeAt(0);
    // for (int i = timeList.indexOf(currentTime); i < 24; i++) {
    //   if (currentTime == widget.field.sportVenue!.closingTime) {
    //     break;
    //   } else {
    //     availableBookTime
    //         .add(CheckBoxState(title: "${timeList[i]}", isBooked: false));
    //     currentTime = timeList[i + 1];
    //   }
    // }

    fetchVenueHasSportArea(
        client.venueSportHasArea,
        widget.field.sportCategories![widget.sportCategoryIndex!.toInt()]
            .sportCategoryBelongsToVenueId);
  }

  fetchVenueHasSportArea(venueHasSportAreaClient, venueSportId) async {
    var sportAreaList = await venueHasSportAreaClient
        .getVenueSportHasAreaByVenueSportId(venueSportId: venueSportId);
    fetchFacilityDetails(client.sportVenueFacilityDetail, sportAreaList![0].id);
    setTimeSlots(sportAreaList![0].id, sportAreaList, _dateTime);
    // print(sportAreaList);
    setState(() {
      _venueSportHasAreaList = sportAreaList;
      _venueSportHasAreaDropDownItem = sportAreaList.first;
    });
  }

  fetchFacilityDetails(sportVenueFacilityDetailClient, venueHasAreaId) async {
    var facilityDetailsList = await sportVenueFacilityDetailClient
        .getAllSportVenueFacilityDetailsForGivenVenueHasAreaId(
            keyword: venueHasAreaId);
    print('facilityDetailsList');
    print(facilityDetailsList);
    setState(() {
      _sportVenueFacilityDetail = facilityDetailsList;
    });
  }

  setTimeSlots(venueHasAreaId, sportAreaList, dateTime) async {
    if (sportAreaList != null) {
      print("INside setTimeSlote");
      print(venueHasAreaId);
      print(dateTime);
      var timeSlot = await fetchBookedSlotsOfDay(
          client.sportVenueBooking,
          venueHasAreaId,
          DateTime(dateTime.year, dateTime.month, dateTime.day));
      print("Next step timeSlot: $timeSlot");
      for (var time in timeList) {
        if (time == widget.field.sportVenue!.openingTime) {
          currentTime = time;
          print("$currentTime and $time");
        }
      }
      var startTimesOfBookedTimeSlots = [];
      for (var element in timeSlot) {
        if ((element.toTime!.toInt() - element.fromTime!.toInt()) == 1) {
          startTimesOfBookedTimeSlots.add(element.fromTime);
        } else {
          for (var c = 0;
              c < (element.toTime!.toInt() - element.fromTime!.toInt());
              c++) {
            startTimesOfBookedTimeSlots.add((element.fromTime)! + c);
          }
        }
      }

      setState(() {
        availableBookTime.removeAt(0);
        for (int i = timeList.indexOf(currentTime); i < 24; i++) {
          if (currentTime == widget.field.sportVenue!.closingTime) {
            break;
          } else {
            if (((convertToDateOnlyFormat(dateTime: dateTime) ==
                        convertToDateOnlyFormat(dateTime: DateTime.now())) &&
                    (DateTime.now().hour >= i)) ||
                (timeSlot.isNotEmpty &&
                    startTimesOfBookedTimeSlots.contains(i))) {
              availableBookTime
                  .add(CheckBoxState(title: "${timeMap[i]}", isBooked: true));
            } else {
              availableBookTime
                  .add(CheckBoxState(title: "${timeMap[i]}", isBooked: false));
            }
            currentTime = timeList[i + 1];
          }
        }
        _timeSlot = timeSlot;
      });
    }
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
                          // Text(_venueSportHasAreaList![0].name,
                          // style: normalTextStyle.copyWith(
                          //     fontWeight: FontWeight.w600)),
                          // DropdownButtonExample(
                          //   venueSportHasAreaDropDownList:
                          //       _venueSportHasAreaList,
                          // ),
                          buildDropDownButton(),
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
                    Visibility(
                      visible: _isTimeIncrementerVisible,
                      child: Text(
                        "Pick number of hours",
                        style: subTitleTextStyle,
                      ),
                    ),
                    Visibility(
                      visible: _isTimeIncrementerVisible,
                      child: const SizedBox(
                        height: 8,
                      ),
                    ),
                    Visibility(
                      visible: _isTimeIncrementerVisible,
                      child: NumberInputPrefabbed.roundedButtons(
                        controller: TextEditingController(),
                        incDecBgColor: primaryColor500,
                        buttonArrangement: ButtonArrangement.incRightDecLeft,
                        min: 1,
                        enabled: !_nextHourIsBooked,
                        initialValue: _numberOfHoursToPlay,
                        max: availableBookTime.length,
                        onIncrement: (newValue) async {
                          _numberOfHoursToPlay = newValue as int;
                        },
                        onDecrement: (newValue) {
                          _numberOfHoursToPlay = newValue as int;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Pick a Start Time",
                      style: subTitleTextStyle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    buildRadioButtonList()
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
              // Column(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     Text(
              //       "Total:",
              //       style: descTextStyle,
              //     ),
              //     Text(
              //       "Rp $_totalBill",
              //       style: priceTextStyle,
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   width: 16,
              // ),
              Expanded(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(100, 45),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(borderRadiusSize))),
                    onPressed: !_enableCreateOrderBtn
                        ? null
                        : () async {
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

                            /**
                             * create the booking object 
                             */
                            print("_dateTime: $_dateTime");
                            print(
                                "DateTime: ${DateTime(_dateTime.year, _dateTime.month, _dateTime.day)}");
                            SportVenueBooking sportVenueBooking =
                                await createBooking(
                                    1,
                                    _venueSportHasAreaDropDownItem!.id,
                                    DateTime(_dateTime.year, _dateTime.month,
                                        _dateTime.day),
                                    startTimeOfPlay,
                                    _numberOfHoursToPlay,
                                    _sportVenueFacilityDetail);
                            print(sportVenueBooking);
                            // pass this object to the confirm_checkout_screen which will be a pop up screen showing details of booking
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ConfirmCheckoutScreen(
                                  booking: sportVenueBooking);
                            }));
                            // await bookSlot(
                            //     client.sportVenueBooking, sportVenueBooking);
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
                DateTime.now().day + 30))
        .then((value) {
      if (value == null) return;
      availableBookTime = [
        CheckBoxState(title: "00.00", isBooked: true),
      ];
      setState(() {
        _dateTime = value.toLocal();
        setTimeSlots(_venueSportHasAreaDropDownItem!.id, _venueSportHasAreaList,
            value.toLocal());
      });
    });
  }

  Widget buildSingleCheckBox(CheckBoxState checkbox) {
    if (checkbox.isBooked) {
      return CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(checkbox.title),
        value: checkbox.value,
        onChanged: null,
      );
    }
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(checkbox.title),
      value: checkbox.value,
      onChanged: (bool? value) async {
        print("in checkbox");
        setState(() {
          checkbox.value = value!;
          _enableCreateOrderBtn = value;
          if (value == true) startTimeOfPlay = reversedTimeMap[checkbox.title]!;
        });
      },
    );
  }

  Widget buildRadioButtonList() {
    List<Widget> widgetList = [];
    for (var i = 0; i < availableBookTime.length; i++) {
      if (availableBookTime[i].isBooked) {
        widgetList.add(RadioListTile(
            title: Text(availableBookTime[i].title),
            value: availableBookTime[i],
            groupValue: selectedValue,
            onChanged: null));
      } else {
        widgetList.add(RadioListTile(
          title: Text(availableBookTime[i].title),
          value: availableBookTime[i],
          groupValue: selectedValue,
          onChanged: (newValue) {
            setState(() {
              _numberOfHoursToPlay = 1;
              selectedValue = newValue as CheckBoxState;
              _enableCreateOrderBtn = true;
              startTimeOfPlay = reversedTimeMap[newValue.title]!;
              if (i < availableBookTime.length - 1) {
                _isTimeIncrementerVisible = true;
                if (availableBookTime[i + 1].isBooked) {
                  _isTimeIncrementerVisible = false;
                  _nextHourIsBooked = true;
                } else {
                  _nextHourIsBooked = false;
                }
              } else {
                _isTimeIncrementerVisible = false;
                _nextHourIsBooked = true;
              }
            });
          },
        ));
      }
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgetList,
    );
  }

  Widget buildDropDownButton() {
    return DropdownButton<VenueSportHasArea>(
      value: _venueSportHasAreaDropDownItem,
      // icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: normalTextStyle.copyWith(fontWeight: FontWeight.w600),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (VenueSportHasArea? value) async {
        // This is called when the user selects an item.
        print("value: $value");
        // _timeSlot = await fetchBookedSlotsOfDay(client.sportVenueBooking,
        //     _venueSportHasAreaDropDownItem!.id, _dateTime);
        print("_timeSlot: $_timeSlot");
        availableBookTime = [
          CheckBoxState(title: "00.00", isBooked: true),
        ];
        setState(() {
          _venueSportHasAreaDropDownItem = value!;
          setTimeSlots(value.id, _venueSportHasAreaList, _dateTime);
        });
        print("after set state: $_venueSportHasAreaDropDownItem");
        await fetchFacilityDetails(client.sportVenueFacilityDetail,
            _venueSportHasAreaDropDownItem!.id);
      },
      items: _venueSportHasAreaList!.map((VenueSportHasArea venueSportHasArea) {
        return DropdownMenuItem<VenueSportHasArea>(
          value: venueSportHasArea,
          child: Text(
            venueSportHasArea.name,
            style: const TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
    );
  }
}
