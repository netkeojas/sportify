import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class SportVenueHasSportCategoryEndpoint extends Endpoint {
  /*
  Fetches all the sports venue facilities present in the database
   @param session - default
   @return List of type SportVenueHasSportCategory => [{
    venueId: 1,
    sportCategoryId: 3
    }, 
   { venueId: 2,
    sportCategoryId: 3 }, {venueId: 2,
    sportCategoryId: 5}]
  */
  Future<List<SportVenueHasSportCategory>> getAllSportVenueHasSportCategory(
      Session session) async {
    return await SportVenueHasSportCategory.find(session);
  }

/*
Fetches all the sports venue facilities present in the database for given venueId
   @param session - default
   @return List of type SportVenueHasSportCategory => [{
    venueId: 1,
    sportCategoryId: 3
    }, 
   { venueId: 1,
    sportCategoryId: 2 }, 
    {venueId: 1,
    sportCategoryId: 5}]
*/
  Future<List<SportVenueHasSportCategory>>
      getSportVenueHasSportCategoryByVenueId(Session session,
          {int? venueId}) async {
    return await SportVenueHasSportCategory.find(
      session,
      where: (t) =>
          venueId != null ? t.sportVenueId.equals(venueId) : Constant(true),
    );
  }

/*
Adds a relationship entry in the table sportVenueHasSportCategory
*/
  Future<bool> addSportVenueHasSportCategory(Session session,
      SportVenueHasSportCategory sportVenueHasSportCategory) async {
    await SportVenueHasSportCategory.insert(
        session, sportVenueHasSportCategory);
    return true;
  }
}
