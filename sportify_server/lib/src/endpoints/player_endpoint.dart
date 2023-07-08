import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PlayerEndpoint extends Endpoint {
  /* Fetches all the  players present in the database
   @param session - default
   @return List of type Player => [{ id: 1001,
   name: 'tck'
  emailId: 'email.com', 
  contactNumber: '12345678', 
  city: 'Kolhapur', 
  gender: 'Male', 
  dateOfBirth: '01/01/1998'}, 
   { ..... }, {....}]
  */
  Future<List<Player>> getAllPlayers(Session session) async {
    return await Player.find(session);
  }

/* Fetches  the  player present in the database by id
   @param session - default
   @return  Player object/record => {id: 1001, name: 'tck'
  emailId: 'email.com', 
  contactNumber: '12345678', 
  city: 'Kolhapur', 
  gender: 'Male', 
  dateOfBirth: '01/01/1998'}
  */
  Future<Player?> getPlayerById(Session session, int id) async {
    return await Player.findById(session, id);
  }

/**
 * Adds a player record to database
 * @param Session default
 * @param player - Player object
 * @return bool value true of record added
 */
  Future<bool> addPlayer(Session session, Player player) async {
    await Player.insert(session, player);
    return true;
  }

  /**
 * Updates a player record to database
 * @param Session default
 * @param player - Player object
 * @return bool value true of record updated
 */
  Future<bool> updatePlayer(Session session, Player player) async {
    var response = await Player.update(session, player);
    return response;
  }

  /**
 * Adds a player record to database
 * @param Session default
 * @param id - Int id
 * @return bool value true if record deleted
 */
  Future<bool> delete(Session session, int id) async {
    var response = await Player.delete(session, where: (t) => t.id.equals(id));
    return response == 1;
  }
}
