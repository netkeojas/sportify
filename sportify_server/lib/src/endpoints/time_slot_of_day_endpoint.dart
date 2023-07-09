import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

/*
  {
    id: int
    code: String
    fromTime: String
    toTime: String
  }
 */
class TimeSlotOfDayEndpoint extends Endpoint {
  Future<List<TimeSlotsOfDay>> getAllTimeSlotsOfDay(Session session) async {
    return await TimeSlotsOfDay.find(session);
  }

  Future<bool> addTimeSlotOfDay(
      Session session, TimeSlotsOfDay timeSlotsOfDay) async {
    await TimeSlotsOfDay.insert(session, timeSlotsOfDay);
    return true;
  }

  Future<TimeSlotsOfDay?> getTimeSlotOfDayById(Session session, int id) async {
    return await TimeSlotsOfDay.findById(session, id);
  }
}
