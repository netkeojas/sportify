import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:sportify_client/sportify_client.dart';
import 'package:sportify_flutter/main.dart';
import 'package:sportify_flutter/models/sportCategoryDetails.dart';
import 'package:sportify_flutter/models/sportVenueDetails.dart';

void listAllSportVenues(sportVenueClient, sportCategoryClient) async {
  var sportVenues = await sportVenueClient.getAllSportVenues();
}

void addSCategory(sportCategoryClient) async {
  var sportCategory =
      SportCategory(name: 'Badminton', isTeamSport: true, popularity: 0);
  var response = await sportCategoryClient.addSportsCategory(sportCategory);
  print('added sport category');
  print(response);
}

void addVenueAndSportRelation(sportVenueHasSportCategoryClient) async {
  var sportVenueHasSportCategory =
      SportVenueHasSportCategory(sportVenueId: 1, sportCategoryId: 3);
  var sportVenueHasSportCategory2 =
      SportVenueHasSportCategory(sportVenueId: 1, sportCategoryId: 4);
  var sportVenueHasSportCategory3 =
      SportVenueHasSportCategory(sportVenueId: 3, sportCategoryId: 6);
  var sportVenueHasSportCategory4 =
      SportVenueHasSportCategory(sportVenueId: 2, sportCategoryId: 3);
  var sportVenueHasSportCategory5 =
      SportVenueHasSportCategory(sportVenueId: 2, sportCategoryId: 4);
  var sportVenueHasSportCategory6 =
      SportVenueHasSportCategory(sportVenueId: 2, sportCategoryId: 5);
  var sportVenueHasSportCategory7 =
      SportVenueHasSportCategory(sportVenueId: 2, sportCategoryId: 6);
  var response = await sportVenueHasSportCategoryClient
      .addSportVenueHasSportCategory(sportVenueHasSportCategory);
  var response2 = await sportVenueHasSportCategoryClient
      .addSportVenueHasSportCategory(sportVenueHasSportCategory2);
  var response3 = await sportVenueHasSportCategoryClient
      .addSportVenueHasSportCategory(sportVenueHasSportCategory3);
  var response4 = await sportVenueHasSportCategoryClient
      .addSportVenueHasSportCategory(sportVenueHasSportCategory4);
  var response5 = await sportVenueHasSportCategoryClient
      .addSportVenueHasSportCategory(sportVenueHasSportCategory5);
  var response6 = await sportVenueHasSportCategoryClient
      .addSportVenueHasSportCategory(sportVenueHasSportCategory6);
  var response7 = await sportVenueHasSportCategoryClient
      .addSportVenueHasSportCategory(sportVenueHasSportCategory7);
  print(response7);
}

void addVenueHasArea(venueSportHasAreaClient) async {
  var venueHasArea =
      VenueSportHasArea(sportVenueHasSportCategoryId: 2, name: 'Turf-1');
  var venueHasArea2 =
      VenueSportHasArea(sportVenueHasSportCategoryId: 2, name: 'Turf-2');
  var venueHasArea3 =
      VenueSportHasArea(sportVenueHasSportCategoryId: 3, name: '5v5');
  var venueHasArea4 =
      VenueSportHasArea(sportVenueHasSportCategoryId: 3, name: '8v8');
  var venueHasArea5 =
      VenueSportHasArea(sportVenueHasSportCategoryId: 4, name: 'court-1');
  var venueHasArea6 =
      VenueSportHasArea(sportVenueHasSportCategoryId: 4, name: 'court-2');
  var venueHasArea7 =
      VenueSportHasArea(sportVenueHasSportCategoryId: 5, name: 'Cricket turf');
  var venueHasArea8 =
      VenueSportHasArea(sportVenueHasSportCategoryId: 6, name: 'Football- 5v5');
  var venueHasArea9 = VenueSportHasArea(
      sportVenueHasSportCategoryId: 7, name: '25m Swimmingpool');
  var venueHasArea10 = VenueSportHasArea(
      sportVenueHasSportCategoryId: 8, name: 'Badminton court-1');

  var res = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea10);
  var res2 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea9);
  var res3 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea8);
  var res4 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea7);
  var res5 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea6);
  var res6 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea5);
  var res7 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea4);
  var res8 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea3);
  var res9 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea2);
  var res10 = await venueSportHasAreaClient.addVenueSportHasArea(venueHasArea);
  print(res10);
}

Future<List<SportVenueDetail>>
    fetchAllSportVenuesAndPopulateTheObjectArrayThatWillBeUsedToDisplay(
        sportVenueClient,
        sportCategoryClient,
        sportVenueHasSportCategoryClient) async {
  var sportCategoryMap = await makeSportCategoryMap(sportCategoryClient);
  // print(sportCategoryMap);
  var allSportVenueList = await sportVenueClient.getAllSportVenues();
  List<SportVenueDetail> listOfAllSportVenuesToDisplay = [];
  for (var element in allSportVenueList) {
    var sportVenueHasSports = await sportVenueHasSportCategoryClient
        .getSportVenueHasSportCategoryByVenueId(venueId: element.id);
    var listItem = SportVenueDetail(
        sportVenueId: element.id,
        name: element.name,
        address: element.address,
        sportCategories: [],
        sportVenue: element);
    for (var element2 in sportVenueHasSports) {
      var sportCategoryDetail = SportCategoryDetails(
          sportCategoryBelongsToVenueId: element2.id,
          sportCategory: sportCategoryMap[element2.sportCategoryId]!,
          sportVenueHasSportCategory: element2);
      listItem.sportCategories?.add(sportCategoryDetail);
    }
    listOfAllSportVenuesToDisplay.add(listItem);
  }
  return listOfAllSportVenuesToDisplay;
}

makeSportCategoryMap(sportCategoryClient) async {
  var sportCategoryMap = <int, SportCategory>{};
  var sportsCatList = await sportCategoryClient.getAllSportCategories();
  for (var element in sportsCatList) {
    sportCategoryMap[element.id] = element;
  }
  return sportCategoryMap;
}

void addDaysOfWeekData(daysOfWeeKCLient) async {
  var daysOfWeek = DaysOfWeek(name: 'Monday', code: '001');
  var daysOfWeek2 = DaysOfWeek(name: 'Tuesday', code: '002');
  var daysOfWeek3 = DaysOfWeek(name: 'Wednesday', code: '003');
  var daysOfWeek4 = DaysOfWeek(name: 'Thursday', code: '004');
  var daysOfWeek5 = DaysOfWeek(name: 'Friday', code: '005');
  var daysOfWeek6 = DaysOfWeek(name: 'Saturday', code: '006');
  var daysOfWeek7 = DaysOfWeek(name: 'Sunday', code: '007');
  await daysOfWeeKCLient.addDaysOfWeek(daysOfWeek);
  await daysOfWeeKCLient.addDaysOfWeek(daysOfWeek2);
  await daysOfWeeKCLient.addDaysOfWeek(daysOfWeek3);
  await daysOfWeeKCLient.addDaysOfWeek(daysOfWeek4);
  await daysOfWeeKCLient.addDaysOfWeek(daysOfWeek5);
  await daysOfWeeKCLient.addDaysOfWeek(daysOfWeek6);
  await daysOfWeeKCLient.addDaysOfWeek(daysOfWeek7);
}

void addTimeSlotData(timeSLotOfDayClient) async {
  var code = 123;
  var fromTime = 23;
  var toTime = 24;
  var timslotofDay = TimeSlotsOfDay(
      code: code.toString(),
      fromTime: fromTime.toString(),
      toTime: toTime.toString());
  await timeSLotOfDayClient.addTimeSlotOfDay(timslotofDay);
  print('success');
  // var timslotofDay = TimeSlotsOfDay(code: , fromTime: fromTime, toTime: toTime)
}

void addSportFacilityDetailData(sportFacilityDetailsClient) async {
  var sportFacilityDetail = SportVenueFacilityDetail(
      venueHasSportAreaId: 11,
      dayOfWeekIds: [1, 2, 3, 4, 5],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 800,
      pricePerPerson: 0);
  var sportFacilityDetail2 = SportVenueFacilityDetail(
      venueHasSportAreaId: 11,
      dayOfWeekIds: [6, 7],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 1000,
      pricePerPerson: 0);
  var sportFacilityDetail3 = SportVenueFacilityDetail(
      venueHasSportAreaId: 10,
      dayOfWeekIds: [6, 7],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 1000,
      pricePerPerson: 0);
  var sportFacilityDetail4 = SportVenueFacilityDetail(
      venueHasSportAreaId: 10,
      dayOfWeekIds: [1, 2, 3, 4, 5],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 800,
      pricePerPerson: 0);
  var sportFacilityDetail5 = SportVenueFacilityDetail(
      venueHasSportAreaId: 6,
      dayOfWeekIds: [1, 2, 3, 4, 5],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 200,
      pricePerPerson: 0);
  var sportFacilityDetail6 = SportVenueFacilityDetail(
      venueHasSportAreaId: 6,
      dayOfWeekIds: [6, 7],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 400,
      pricePerPerson: 0);
  var sportFacilityDetail7 = SportVenueFacilityDetail(
      venueHasSportAreaId: 7,
      dayOfWeekIds: [6, 7],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 400,
      pricePerPerson: 0);
  var sportFacilityDetail8 = SportVenueFacilityDetail(
      venueHasSportAreaId: 7,
      dayOfWeekIds: [1, 2, 3, 4, 5],
      timeSlotForDayIds: [
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24
      ],
      pricePerHour: 200,
      pricePerPerson: 0);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail8);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail7);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail6);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail5);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail4);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail3);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail2);
  await sportFacilityDetailsClient
      .addSportVenueFacilityDetail(sportFacilityDetail);
  print('added data');
}
