import 'package:sportify_client/sportify_client.dart';

class SportCategoryDetails {
  int? sportCategoryBelongsToVenueId;
  SportCategory? sportCategory;
  SportVenueHasSportCategory? sportVenueHasSportCategory;
  SportCategoryDetails(
      {this.sportCategoryBelongsToVenueId,
      this.sportCategory,
      this.sportVenueHasSportCategory});
}
