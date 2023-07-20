import 'package:sportify_flutter/models/facilityDetails.dart';

Future<List<FacilityDetail>> fetchDetailsOfFacilityToDisplay(
    sportVenueFacilityClient,
    venueSportHasAreaClient,
    sportVenueHasSportCategoryId) async {
  var venueHasAreaDetails =
      await venueSportHasAreaClient.getVenueSportHasAreaByVenueSportId(
          venueSportId: sportVenueHasSportCategoryId);
  print(venueHasAreaDetails);
  // var facilityDetailsList = [];
  List<FacilityDetail> facilityDetailsList = [];
  for (var element in venueHasAreaDetails) {
    var detailsList = await sportVenueFacilityClient
        .getAllSportVenueFacilityDetailsForGivenVenueHasAreaId(
            keyword: element.id);
    for (var element2 in detailsList) {
      var faccilityDetail = FacilityDetail(
          id: element2.id,
          sportVenueFacilityDetail: element2,
          venueSportHasArea: element,
          venueSportHasAreaId: element.id);
      facilityDetailsList.add(faccilityDetail);
    }

    // facilityDetailsList.addAll(detailsList);
  }
  return facilityDetailsList;
}
