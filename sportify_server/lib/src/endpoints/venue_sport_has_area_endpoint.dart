import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class VenueSportHasAreaEndpoint extends Endpoint {
  /*
  Fetches all the play areas for a given sport in a given venue
  example venue 1 -> badminton -> [court1, court2, court3...]
  @param session default
  @param venueSportId - int primaryKey Id of the table sportVenueHasSportCategory
  @return List of VenueSportHasArea objects - 
  [
    {
      id: 101,
      sportVenueHasSportCategoryId: 001,
      name: Court 1
    },
    {
      id: 102,
      sportVenueHasSportCategoryId: 001,
      name: Court 2
    },
    ...
  ]
   */
  Future<List<VenueSportHasArea>> getVenueSportHasAreaByVenueSportId(
      Session session,
      {int? venueSportId}) async {
    return await VenueSportHasArea.find(
      session,
      where: (t) => venueSportId != null
          ? t.sportVenueHasSportCategoryId.equals(venueSportId)
          : Constant(true),
    );
  }

  /*
  Add the VenueSportHasArea relationship entry to database
  */
  Future<bool> addVenueSportHasArea(
      Session session, VenueSportHasArea venueSportHasArea) async {
    await VenueSportHasArea.insert(session, venueSportHasArea);
    return true;
  }
}
