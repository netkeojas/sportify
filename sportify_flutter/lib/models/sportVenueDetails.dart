import 'package:sportify_client/sportify_client.dart';
import 'sportCategoryDetails.dart';

/// This class is created to use the data fetched from DB in combined and structured way
/// Structure has data from these Tables from backend and classes in client side
/// 1. SportVenue - {id, name, address, other details....}
/// 2. SportCategoryDetails - {sportVenueHasSportCategoryId, sportCategory, sportVenueHasSportCategory}

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
