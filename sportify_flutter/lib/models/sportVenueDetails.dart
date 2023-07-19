import 'package:sportify_client/sportify_client.dart';
import 'sportCategoryDetails.dart';

class SportVenueDetail {
  String? name;
  String? address;
  int? sportVenueId;
  List<SportCategoryDetails>? sportCategories;
  SportVenue? sportVenue;
  SportVenueDetail(
      {this.sportVenueId,
      this.name,
      this.address,
      this.sportCategories,
      this.sportVenue});
}
