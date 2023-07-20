import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sportify_flutter/models/facilityDetails.dart';

/*
FacilityDetail is a custom object created to display the details.
This screen will be called from facility details screen in the onPressed function from where the facilityDetailList will be passed
The param facilityDetailList will look like this - 
[
  id: id_of_SportVenueFacilityDetails_table_entry
  sportVenueFacilityDetail: {"id":1,"venueHasSportAreaId":10,"fromDay":1,"toDay":5,"fromTime":6,"toTime":12,
  "pricePerHour":800,"pricePerPerson":0}
  venueSportHasArea: {"id":10,"sportVenueHasSportCategoryId":2,"name":"Turf-2"}
  venueSportHasAreaId: id_of_venueSportHasArea_table_entry
]
Use this list to display the details for each playArea.
Display fields: {
  1. Name of playArea -> Turf-5v5
  2. fromDay - toDay -> Mon - Fri
  3. fromTime - toTime -> 6 am - 12 pm
  4. pricePerHOur -> 800 $
}
*/
class FacilityDetailScreen extends StatelessWidget {
  List<FacilityDetail> facilityDetailList;
  FacilityDetailScreen({required this.facilityDetailList});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
