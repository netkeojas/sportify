import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/* Object structure
  {
    id: int
    code: String
    name: String
  }
 */

class DayOfWeekEndpoint extends Endpoint {
  Future<List<DaysOfWeek>> getAllDaysOfWeek(Session session) async {
    return await DaysOfWeek.find(session);
  }

  Future<bool> addDaysOfWeek(Session session, DaysOfWeek daysOfWeek) async {
    await DaysOfWeek.insert(session, daysOfWeek);
    return true;
  }

  Future<DaysOfWeek?> getDayOfWeekById(Session session, int id) async {
    return await DaysOfWeek.findById(session, id);
  }
}
