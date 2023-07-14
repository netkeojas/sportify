import 'package:sportify_client/sportify_client.dart';

class SportVenueDetail {
  String? name;
  String? address;
  int? sportVenueId;
  List<SportCategory>? sportCategories;
  SportVenueDetail(
      {this.sportVenueId, this.name, this.address, this.sportCategories});
  // SportVenueDetail()
}
