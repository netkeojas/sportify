import 'package:sportify_client/sportify_client.dart';

class FacilityDetail {
  int? id;
  SportVenueFacilityDetail? sportVenueFacilityDetail;
  VenueSportHasArea? venueSportHasArea;
  int? venueSportHasAreaId;
  FacilityDetail(
      {this.id,
      this.sportVenueFacilityDetail,
      this.venueSportHasArea,
      this.venueSportHasAreaId});
}
