import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class SportVenueEndpoint extends Endpoint {
  /* Fetches all the sports venues present in the database
   @param session - default
   @return List of type SportVenue => [{ id: 10001, name: 'tck'
  address: 'kolhapur'
  locationUrl: 'location.xyz'
  city: 'Kolhapur'
  aboutVenue: 'lorem epsum....'
  gstNumber: '1234'
  socialMediaIds: ['insta','twitter']
  contactPerson: 'Jim'
  contactNumber: '9822411323'
  imageUrl: ['abc.jpeg', 'xyz.png]
  aminities: [2,4],
  openingTime: 6,
  closingTime: 24}, 
   { ..... }, {....}]
  */
  Future<List<SportVenue>> getAllSportVenues(Session session) async {
    return await SportVenue.find(session);
  }

/* Fetches the sports venue present in the database for given id
   @param session - default
   @param id - Int Id
   @return Object/record of type SportVenue => { id: 10001, name: 'tck'
  address: 'kolhapur'
  locationUrl: 'location.xyz'
  city: 'Kolhapur'
  aboutVenue: 'lorem epsum....'
  gstNumber: '1234'
  socialMediaIds: ['insta','twitter']
  contactPerson: 'Jim'
  contactNumber: '9822411323'
  imageUrl: ['abc.jpeg', 'xyz.png]
  aminities: [2,4],
  openingTime: 6,
  closingTime: 24}
  */
  Future<SportVenue?> getSportVenueById(Session session, int id) async {
    return await SportVenue.findById(session, id);
  }

/* Fetches all the sports venues present in the database with given name
   @param session - default
   @param keyword - String name
   @return List of type SportVenue => [{ id: 10001, name: 'tck'
  address: 'kolhapur'
  locationUrl: 'location.xyz'
  city: 'Kolhapur'
  aboutVenue: 'lorem epsum....'
  gstNumber: '1234'
  socialMediaIds: ['insta','twitter']
  contactPerson: 'Jim'
  contactNumber: '9822411323'
  imageUrl: ['abc.jpeg', 'xyz.png]
  aminities: [2,4],
  openingTime: 6,
  closingTime: 24}, 
   { ..... }, {....}]
  */
  Future<List<SportVenue>> getSportVenuesByName(Session session,
      {String? keyword}) async {
    return await SportVenue.find(
      session,
      where: (t) =>
          keyword != null ? t.name.like('%$keyword%') : Constant(true),
    );
  }

/* Add the sports venue
   @param session - default
   @param sportVenue - SportVenue object
   @return bool true if record is added
  */
  Future<bool> addSportVenue(Session session, SportVenue sportVenue) async {
    await SportVenue.insert(session, sportVenue);
    return true;
  }

/* Update the sports venue
   @param session - default
   @param sportVenue - SportVenue object
   @return bool true if record is updated
  */
  Future<bool> updateSportVenue(Session session, SportVenue sportVenue) async {
    var response = await SportVenue.update(session, sportVenue);
    return response;
  }

  /* Update the sports venue
   @param session - default
   @param sportVenue - SportVenue object
   @return bool true if record is updated
  */
  Future<bool> deleteSportVenue(Session session, int id) async {
    var response =
        await SportVenue.delete(session, where: (t) => t.id.equals(id));
    return response == 1;
  }
}
