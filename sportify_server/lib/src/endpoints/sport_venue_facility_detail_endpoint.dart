import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/*
Object strcture 
{
  id: int
  venueHasSportAreaId: int
  dayOfWeekIds: List<int>
  timeSlotForDayIds: List<int>
  pricePerHour: double
  pricePerPerson: double
}
*/
class SportVenueFacilityDetailEndpoint extends Endpoint {
  // Adds SportVenueFacilityDetail object / record to database
  Future<bool> addSportVenueFacilityDetail(Session session,
      SportVenueFacilityDetail sportVenueFacilityDetail) async {
    await SportVenueFacilityDetail.insert(session, sportVenueFacilityDetail);
    return true;
  }

/*
Fetches all the sportVenueFacilityDetails
@param
@param
@return List of objects SportVenueFacilityDetail:
[
  {
  id: 1001
  venueHasSportAreaId: 101
  dayOfWeekIds: [1,2,3,4,5]
  timeSlotForDayIds: [7,8,9,10]
  pricePerHour: 800
  pricePerPerson: 0
},
{....}, {....}
]
*/
  Future<List<SportVenueFacilityDetail>> getAllSportVenueFacilityDetails(
      Session session) async {
    return await SportVenueFacilityDetail.find(session);
  }

/*
Fetches all the sportVenueFacilityDetails for given sportAreaId
@param
@param
@return List of objects SportVenueFacilityDetail:
[
  {
  id: 1001
  venueHasSportAreaId: 101
  dayOfWeekIds: [1,2,3,4,5]
  timeSlotForDayIds: [7,8,9,10]
  pricePerHour: 800
  pricePerPerson: 0
},
{.., venueHasSportAreaId: 101, ..}, { .., venueHasSportAreaId: 101, ..}
]
*/
  Future<List<SportVenueFacilityDetail>>
      getAllSportVenueFacilityDetailsForGivenVenueHasAreaId(Session session,
          {int? keyword}) async {
    return await SportVenueFacilityDetail.find(
      session,
      where: (t) => keyword != null
          ? t.venueHasSportAreaId.equals(keyword)
          : Constant(true),
    );
  }
}
