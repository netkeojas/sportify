/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:sportify_client/src/protocol/player.dart' as _i3;
import 'package:sportify_client/src/protocol/sport_category.dart' as _i4;
import 'package:sportify_client/src/protocol/sport_venue.dart' as _i5;
import 'package:sportify_client/src/protocol/sport_venue_has_sport_category.dart'
    as _i6;
import 'package:sportify_client/src/protocol/venue_sport_has_area.dart' as _i7;
import 'dart:io' as _i8;
import 'protocol.dart' as _i9;

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

  _i2.Future<List<_i3.Player>> getAllPlayers() =>
      caller.callServerEndpoint<List<_i3.Player>>(
        'player',
        'getAllPlayers',
        {},
      );

  _i2.Future<_i3.Player?> getPlayerById(int id) =>
      caller.callServerEndpoint<_i3.Player?>(
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
  _i2.Future<bool> addPlayer(_i3.Player player) =>
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
  _i2.Future<bool> updatePlayer(_i3.Player player) =>
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

  _i2.Future<List<_i4.SportCategory>> getAllSportCategories() =>
      caller.callServerEndpoint<List<_i4.SportCategory>>(
        'sportCategory',
        'getAllSportCategories',
        {},
      );

  _i2.Future<_i4.SportCategory?> getSportCategoryById(int id) =>
      caller.callServerEndpoint<_i4.SportCategory?>(
        'sportCategory',
        'getSportCategoryById',
        {'id': id},
      );

  _i2.Future<List<_i4.SportCategory>> getSportsCategoryByName(
          {String? keyword}) =>
      caller.callServerEndpoint<List<_i4.SportCategory>>(
        'sportCategory',
        'getSportsCategoryByName',
        {'keyword': keyword},
      );

  _i2.Future<bool> addSportsCategory(_i4.SportCategory sportCategory) =>
      caller.callServerEndpoint<bool>(
        'sportCategory',
        'addSportsCategory',
        {'sportCategory': sportCategory},
      );

  _i2.Future<bool> updateSportCategory(_i4.SportCategory sportCategory) =>
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

  _i2.Future<List<_i5.SportVenue>> getAllSportVenues() =>
      caller.callServerEndpoint<List<_i5.SportVenue>>(
        'sportVenue',
        'getAllSportVenues',
        {},
      );

  _i2.Future<_i5.SportVenue?> getSportVenueById(int id) =>
      caller.callServerEndpoint<_i5.SportVenue?>(
        'sportVenue',
        'getSportVenueById',
        {'id': id},
      );

  _i2.Future<List<_i5.SportVenue>> getSportVenuesByName({String? keyword}) =>
      caller.callServerEndpoint<List<_i5.SportVenue>>(
        'sportVenue',
        'getSportVenuesByName',
        {'keyword': keyword},
      );

  _i2.Future<bool> addSportVenue(_i5.SportVenue sportVenue) =>
      caller.callServerEndpoint<bool>(
        'sportVenue',
        'addSportVenue',
        {'sportVenue': sportVenue},
      );

  _i2.Future<bool> updateSportVenue(_i5.SportVenue sportVenue) =>
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

class _EndpointSportVenueHasSportCategory extends _i1.EndpointRef {
  _EndpointSportVenueHasSportCategory(_i1.EndpointCaller caller)
      : super(caller);

  @override
  String get name => 'sportVenueHasSportCategory';

  _i2.Future<List<_i6.SportVenueHasSportCategory>>
      getAllSportVenueHasSportCategory() =>
          caller.callServerEndpoint<List<_i6.SportVenueHasSportCategory>>(
            'sportVenueHasSportCategory',
            'getAllSportVenueHasSportCategory',
            {},
          );

  _i2.Future<List<_i6.SportVenueHasSportCategory>>
      getSportVenueHasSportCategoryByVenueId({int? venueId}) =>
          caller.callServerEndpoint<List<_i6.SportVenueHasSportCategory>>(
            'sportVenueHasSportCategory',
            'getSportVenueHasSportCategoryByVenueId',
            {'venueId': venueId},
          );

  _i2.Future<bool> addSportVenueHasSportCategory(
          _i6.SportVenueHasSportCategory sportVenueHasSportCategory) =>
      caller.callServerEndpoint<bool>(
        'sportVenueHasSportCategory',
        'addSportVenueHasSportCategory',
        {'sportVenueHasSportCategory': sportVenueHasSportCategory},
      );
}

class _EndpointVenueSportHasArea extends _i1.EndpointRef {
  _EndpointVenueSportHasArea(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'venueSportHasArea';

  _i2.Future<List<_i7.VenueSportHasArea>> getVenueSportHasAreaByVenueSportId(
          {int? venueSportId}) =>
      caller.callServerEndpoint<List<_i7.VenueSportHasArea>>(
        'venueSportHasArea',
        'getVenueSportHasAreaByVenueSportId',
        {'venueSportId': venueSportId},
      );

  _i2.Future<bool> addVenueSportHasArea(
          _i7.VenueSportHasArea venueSportHasArea) =>
      caller.callServerEndpoint<bool>(
        'venueSportHasArea',
        'addVenueSportHasArea',
        {'venueSportHasArea': venueSportHasArea},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i8.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i9.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    player = _EndpointPlayer(this);
    sportCategory = _EndpointSportCategory(this);
    sportVenue = _EndpointSportVenue(this);
    sportVenueHasSportCategory = _EndpointSportVenueHasSportCategory(this);
    venueSportHasArea = _EndpointVenueSportHasArea(this);
  }

  late final _EndpointExample example;

  late final _EndpointPlayer player;

  late final _EndpointSportCategory sportCategory;

  late final _EndpointSportVenue sportVenue;

  late final _EndpointSportVenueHasSportCategory sportVenueHasSportCategory;

  late final _EndpointVenueSportHasArea venueSportHasArea;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'player': player,
        'sportCategory': sportCategory,
        'sportVenue': sportVenue,
        'sportVenueHasSportCategory': sportVenueHasSportCategory,
        'venueSportHasArea': venueSportHasArea,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
