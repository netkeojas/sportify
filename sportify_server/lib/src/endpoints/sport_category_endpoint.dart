import 'package:serverpod/serverpod.dart';
import 'package:sportify_server/src/generated/sport_category.dart';

class SportCategoryEndpoint extends Endpoint {
  /* Fetches all the sports categories present in the database
   @param session - default
   @return List of type SportCategory => [{ id: 001, name: 'xyz', isTeamSport: true, popularity: 7}, 
   { id: 002, name: 'abc', isTeamSport: false, popularity: 9}]
  */
  Future<List<SportCategory>> getAllSportCategories(Session session) async {
    return await SportCategory.find(session);
  }

  /* Fetches the sports category for given Id
   @param session - default
   @param id - int Id
   @return Object/record of type SportCategory => { id: 003, name: 'pqr', isTeamSport: true, popularity: 8}
  */
  Future<SportCategory?> getSportCategoryById(Session session, int id) async {
    return await SportCategory.findById(session, id);
  }

/* Fetches the sports categories for given name
   @param session - default
   @param keyword - String name
   @return List of Object/record of type SportCategory => [{ id: 003, name: 'pqr', isTeamSport: true, popularity: 8}, 
   { id: 001, name: 'xyz', isTeamSport: true, popularity: 7}]
  */
  Future<List<SportCategory>> getSportsCategoryByName(Session session,
      {String? keyword}) async {
    return await SportCategory.find(
      session,
      where: (t) =>
          keyword != null ? t.name.like('%$keyword%') : Constant(true),
    );
  }

/* Add the sports category
   @param session - default
   @param sportCategory - SportCategory object
   @return bool true if record is added
  */
  Future<bool> addSportsCategory(
      Session session, SportCategory sportCategory) async {
    await SportCategory.insert(session, sportCategory);
    return true;
  }

/* Update the sports category
   @param session - default
   @param sportCategory - SportCategory object
   @return bool true if record is updated/added
  */
  Future<bool> updateSportCategory(
      Session session, SportCategory sportCategory) async {
    var response = SportCategory.update(session, sportCategory);
    return response;
  }

/* Delete the sports category with Id
   @param session - default
   @param id - int Id
   @return bool true if record is deleted
  */
  Future<bool> deleteSportCategory(Session session, int id) async {
    var response =
        await SportCategory.delete(session, where: (t) => t.id.equals(id));
    return response == 1;
  }
}
