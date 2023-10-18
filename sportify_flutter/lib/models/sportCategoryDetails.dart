import 'package:sportify_client/sportify_client.dart';

/**
 * This calss is created to used combined datat from backend DB tables
 * Structure has data from these Tables from backend and classes in client side
 * 1. SportCategory { id, name, isGroupSport, popularity }
 * 2. SportVenueHasSportCategory { id, sportVenueId, sportCategoryId}
 */

class SportCategoryDetails {
  int? sportCategoryBelongsToVenueId;
  SportCategory? sportCategory;
  SportVenueHasSportCategory? sportVenueHasSportCategory;
  SportCategoryDetails(
      {this.sportCategoryBelongsToVenueId,
      this.sportCategory,
      this.sportVenueHasSportCategory});
}
