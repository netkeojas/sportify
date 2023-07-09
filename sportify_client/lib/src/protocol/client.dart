/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:sportify_client/src/protocol/days_of_week.dart' as _i3;
import 'package:sportify_client/src/protocol/player.dart' as _i4;
import 'package:sportify_client/src/protocol/sport_category.dart' as _i5;
import 'package:sportify_client/src/protocol/sport_venue.dart' as _i6;
import 'package:sportify_client/src/protocol/sport_venue_facility_detail.dart'
    as _i7;
import 'package:sportify_client/src/protocol/sport_venue_has_sport_category.dart'
    as _i8;
import 'package:sportify_client/src/protocol/time_slots_of_day.dart' as _i9;
import 'package:sportify_client/src/protocol/venue_sport_has_area.dart' as _i10;
import 'dart:io' as _i11;
import 'protocol.dart' as _i12;

class _EndpointDayOfWeek extends _i1.EndpointRef {
  _EndpointDayOfWeek(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dayOfWeek';

  _i2.Future<List<_i3.DaysOfWeek>> getAllDaysOfWeek() =>
      caller.callServerEndpoint<List<_i3.DaysOfWeek>>(
        'dayOfWeek',
        'getAllDaysOfWeek',
        {},
      );

  _i2.Future<bool> addDaysOfWeek(_i3.DaysOfWeek daysOfWeek) =>
      caller.callServerEndpoint<bool>(
        'dayOfWeek',
        'addDaysOfWeek',
        {'daysOfWeek': daysOfWeek},
      );

  _i2.Future<_i3.DaysOfWeek?> getDayOfWeekById(int id) =>
      caller.callServerEndpoint<_i3.DaysOfWeek?>(
        'dayOfWeek',
        'getDayOfWeekById',
        {'id': id},
      );
}

class _EndpointExample extends _i1.EndpointRef {
  _EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

class _EndpointPlayer extends _i1.EndpointRef {
  _EndpointPlayer(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'player';

  _i2.Future<List<_i4.Player>> getAllPlayers() =>
      caller.callServerEndpoint<List<_i4.Player>>(
        'player',
        'getAllPlayers',
        {},
      );

  _i2.Future<_i4.Player?> getPlayerById(int id) =>
      caller.callServerEndpoint<_i4.Player?>(
        'player',
        'getPlayerById',
        {'id': id},
      );
/**
 * Adds a player record to database
 * @param Session default
 * @param player - Player object
 * @return bool value true of record added
 */
  _i2.Future<bool> addPlayer(_i4.Player player) =>
      caller.callServerEndpoint<bool>(
        'player',
        'addPlayer',
        {'player': player},
      );
/**
 * Updates a player record to database
 * @param Session default
 * @param player - Player object
 * @return bool value true of record updated
 */
  _i2.Future<bool> updatePlayer(_i4.Player player) =>
      caller.callServerEndpoint<bool>(
        'player',
        'updatePlayer',
        {'player': player},
      );
/**
 * Adds a player record to database
 * @param Session default
 * @param id - Int id
 * @return bool value true if record deleted
 */
  _i2.Future<bool> delete(int id) => caller.callServerEndpoint<bool>(
        'player',
        'delete',
        {'id': id},
      );
}

class _EndpointSportCategory extends _i1.EndpointRef {
  _EndpointSportCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'sportCategory';

  _i2.Future<List<_i5.SportCategory>> getAllSportCategories() =>
      caller.callServerEndpoint<List<_i5.SportCategory>>(
        'sportCategory',
        'getAllSportCategories',
        {},
      );

  _i2.Future<_i5.SportCategory?> getSportCategoryById(int id) =>
      caller.callServerEndpoint<_i5.SportCategory?>(
        'sportCategory',
        'getSportCategoryById',
        {'id': id},
      );

  _i2.Future<List<_i5.SportCategory>> getSportsCategoryByName(
          {String? keyword}) =>
      caller.callServerEndpoint<List<_i5.SportCategory>>(
        'sportCategory',
        'getSportsCategoryByName',
        {'keyword': keyword},
      );

  _i2.Future<bool> addSportsCategory(_i5.SportCategory sportCategory) =>
      caller.callServerEndpoint<bool>(
        'sportCategory',
        'addSportsCategory',
        {'sportCategory': sportCategory},
      );

  _i2.Future<bool> updateSportCategory(_i5.SportCategory sportCategory) =>
      caller.callServerEndpoint<bool>(
        'sportCategory',
        'updateSportCategory',
        {'sportCategory': sportCategory},
      );

  _i2.Future<bool> deleteSportCategory(int id) =>
      caller.callServerEndpoint<bool>(
        'sportCategory',
        'deleteSportCategory',
        {'id': id},
      );
}

class _EndpointSportVenue extends _i1.EndpointRef {
  _EndpointSportVenue(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'sportVenue';

  _i2.Future<List<_i6.SportVenue>> getAllSportVenues() =>
      caller.callServerEndpoint<List<_i6.SportVenue>>(
        'sportVenue',
        'getAllSportVenues',
        {},
      );

  _i2.Future<_i6.SportVenue?> getSportVenueById(int id) =>
      caller.callServerEndpoint<_i6.SportVenue?>(
        'sportVenue',
        'getSportVenueById',
        {'id': id},
      );

  _i2.Future<List<_i6.SportVenue>> getSportVenuesByName({String? keyword}) =>
      caller.callServerEndpoint<List<_i6.SportVenue>>(
        'sportVenue',
        'getSportVenuesByName',
        {'keyword': keyword},
      );

  _i2.Future<bool> addSportVenue(_i6.SportVenue sportVenue) =>
      caller.callServerEndpoint<bool>(
        'sportVenue',
        'addSportVenue',
        {'sportVenue': sportVenue},
      );

  _i2.Future<bool> updateSportVenue(_i6.SportVenue sportVenue) =>
      caller.callServerEndpoint<bool>(
        'sportVenue',
        'updateSportVenue',
        {'sportVenue': sportVenue},
      );

  _i2.Future<bool> deleteSportVenue(int id) => caller.callServerEndpoint<bool>(
        'sportVenue',
        'deleteSportVenue',
        {'id': id},
      );
}

class _EndpointSportVenueFacilityDetail extends _i1.EndpointRef {
  _EndpointSportVenueFacilityDetail(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'sportVenueFacilityDetail';

  _i2.Future<bool> addSportVenueFacilityDetail(
          _i7.SportVenueFacilityDetail sportVenueFacilityDetail) =>
      caller.callServerEndpoint<bool>(
        'sportVenueFacilityDetail',
        'addSportVenueFacilityDetail',
        {'sportVenueFacilityDetail': sportVenueFacilityDetail},
      );

  _i2.Future<List<_i7.SportVenueFacilityDetail>>
      getAllSportVenueFacilityDetails() =>
          caller.callServerEndpoint<List<_i7.SportVenueFacilityDetail>>(
            'sportVenueFacilityDetail',
            'getAllSportVenueFacilityDetails',
            {},
          );

  _i2.Future<List<_i7.SportVenueFacilityDetail>>
      getAllSportVenueFacilityDetailsForGivenVenueHasAreaId({int? keyword}) =>
          caller.callServerEndpoint<List<_i7.SportVenueFacilityDetail>>(
            'sportVenueFacilityDetail',
            'getAllSportVenueFacilityDetailsForGivenVenueHasAreaId',
            {'keyword': keyword},
          );
}

class _EndpointSportVenueHasSportCategory extends _i1.EndpointRef {
  _EndpointSportVenueHasSportCategory(_i1.EndpointCaller caller)
      : super(caller);

  @override
  String get name => 'sportVenueHasSportCategory';

  _i2.Future<List<_i8.SportVenueHasSportCategory>>
      getAllSportVenueHasSportCategory() =>
          caller.callServerEndpoint<List<_i8.SportVenueHasSportCategory>>(
            'sportVenueHasSportCategory',
            'getAllSportVenueHasSportCategory',
            {},
          );

  _i2.Future<List<_i8.SportVenueHasSportCategory>>
      getSportVenueHasSportCategoryByVenueId({int? venueId}) =>
          caller.callServerEndpoint<List<_i8.SportVenueHasSportCategory>>(
            'sportVenueHasSportCategory',
            'getSportVenueHasSportCategoryByVenueId',
            {'venueId': venueId},
          );

  _i2.Future<bool> addSportVenueHasSportCategory(
          _i8.SportVenueHasSportCategory sportVenueHasSportCategory) =>
      caller.callServerEndpoint<bool>(
        'sportVenueHasSportCategory',
        'addSportVenueHasSportCategory',
        {'sportVenueHasSportCategory': sportVenueHasSportCategory},
      );
}

class _EndpointTimeSlotOfDay extends _i1.EndpointRef {
  _EndpointTimeSlotOfDay(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'timeSlotOfDay';

  _i2.Future<List<_i9.TimeSlotsOfDay>> getAllTimeSlotsOfDay() =>
      caller.callServerEndpoint<List<_i9.TimeSlotsOfDay>>(
        'timeSlotOfDay',
        'getAllTimeSlotsOfDay',
        {},
      );

  _i2.Future<bool> addTimeSlotOfDay(_i9.TimeSlotsOfDay timeSlotsOfDay) =>
      caller.callServerEndpoint<bool>(
        'timeSlotOfDay',
        'addTimeSlotOfDay',
        {'timeSlotsOfDay': timeSlotsOfDay},
      );

  _i2.Future<_i9.TimeSlotsOfDay?> getTimeSlotOfDayById(int id) =>
      caller.callServerEndpoint<_i9.TimeSlotsOfDay?>(
        'timeSlotOfDay',
        'getTimeSlotOfDayById',
        {'id': id},
      );
}

class _EndpointVenueSportHasArea extends _i1.EndpointRef {
  _EndpointVenueSportHasArea(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'venueSportHasArea';

  _i2.Future<List<_i10.VenueSportHasArea>> getVenueSportHasAreaByVenueSportId(
          {int? venueSportId}) =>
      caller.callServerEndpoint<List<_i10.VenueSportHasArea>>(
        'venueSportHasArea',
        'getVenueSportHasAreaByVenueSportId',
        {'venueSportId': venueSportId},
      );

  _i2.Future<bool> addVenueSportHasArea(
          _i10.VenueSportHasArea venueSportHasArea) =>
      caller.callServerEndpoint<bool>(
        'venueSportHasArea',
        'addVenueSportHasArea',
        {'venueSportHasArea': venueSportHasArea},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i11.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i12.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    dayOfWeek = _EndpointDayOfWeek(this);
    example = _EndpointExample(this);
    player = _EndpointPlayer(this);
    sportCategory = _EndpointSportCategory(this);
    sportVenue = _EndpointSportVenue(this);
    sportVenueFacilityDetail = _EndpointSportVenueFacilityDetail(this);
    sportVenueHasSportCategory = _EndpointSportVenueHasSportCategory(this);
    timeSlotOfDay = _EndpointTimeSlotOfDay(this);
    venueSportHasArea = _EndpointVenueSportHasArea(this);
  }

  late final _EndpointDayOfWeek dayOfWeek;

  late final _EndpointExample example;

  late final _EndpointPlayer player;

  late final _EndpointSportCategory sportCategory;

  late final _EndpointSportVenue sportVenue;

  late final _EndpointSportVenueFacilityDetail sportVenueFacilityDetail;

  late final _EndpointSportVenueHasSportCategory sportVenueHasSportCategory;

  late final _EndpointTimeSlotOfDay timeSlotOfDay;

  late final _EndpointVenueSportHasArea venueSportHasArea;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'dayOfWeek': dayOfWeek,
        'example': example,
        'player': player,
        'sportCategory': sportCategory,
        'sportVenue': sportVenue,
        'sportVenueFacilityDetail': sportVenueFacilityDetail,
        'sportVenueHasSportCategory': sportVenueHasSportCategory,
        'timeSlotOfDay': timeSlotOfDay,
        'venueSportHasArea': venueSportHasArea,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
