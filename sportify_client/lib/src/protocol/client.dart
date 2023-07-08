/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:sportify_client/src/protocol/sport_category.dart' as _i3;
import 'package:sportify_client/src/protocol/sport_venue.dart' as _i4;
import 'dart:io' as _i5;
import 'protocol.dart' as _i6;

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

class _EndpointSportCategory extends _i1.EndpointRef {
  _EndpointSportCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'sportCategory';

  _i2.Future<List<_i3.SportCategory>> getAllSportCategories() =>
      caller.callServerEndpoint<List<_i3.SportCategory>>(
        'sportCategory',
        'getAllSportCategories',
        {},
      );

  _i2.Future<_i3.SportCategory?> getSportCategoryById(int id) =>
      caller.callServerEndpoint<_i3.SportCategory?>(
        'sportCategory',
        'getSportCategoryById',
        {'id': id},
      );

  _i2.Future<List<_i3.SportCategory>> getSportsCategoryByName(
          {String? keyword}) =>
      caller.callServerEndpoint<List<_i3.SportCategory>>(
        'sportCategory',
        'getSportsCategoryByName',
        {'keyword': keyword},
      );

  _i2.Future<bool> addSportsCategory(_i3.SportCategory sportCategory) =>
      caller.callServerEndpoint<bool>(
        'sportCategory',
        'addSportsCategory',
        {'sportCategory': sportCategory},
      );

  _i2.Future<bool> updateSportCategory(_i3.SportCategory sportCategory) =>
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

  _i2.Future<List<_i4.SportVenue>> getAllSportVenues() =>
      caller.callServerEndpoint<List<_i4.SportVenue>>(
        'sportVenue',
        'getAllSportVenues',
        {},
      );

  _i2.Future<_i4.SportVenue?> getSportVenueById(int id) =>
      caller.callServerEndpoint<_i4.SportVenue?>(
        'sportVenue',
        'getSportVenueById',
        {'id': id},
      );

  _i2.Future<List<_i4.SportVenue>> getSportVenuesByName({String? keyword}) =>
      caller.callServerEndpoint<List<_i4.SportVenue>>(
        'sportVenue',
        'getSportVenuesByName',
        {'keyword': keyword},
      );

  _i2.Future<bool> addSportVenue(_i4.SportVenue sportVenue) =>
      caller.callServerEndpoint<bool>(
        'sportVenue',
        'addSportVenue',
        {'sportVenue': sportVenue},
      );

  _i2.Future<bool> updateSportVenue(_i4.SportVenue sportVenue) =>
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

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    _i5.SecurityContext? context,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
  }) : super(
          host,
          _i6.Protocol(),
          context: context,
          authenticationKeyManager: authenticationKeyManager,
        ) {
    example = _EndpointExample(this);
    sportCategory = _EndpointSportCategory(this);
    sportVenue = _EndpointSportVenue(this);
  }

  late final _EndpointExample example;

  late final _EndpointSportCategory sportCategory;

  late final _EndpointSportVenue sportVenue;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'example': example,
        'sportCategory': sportCategory,
        'sportVenue': sportVenue,
      };
  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
