/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/player_endpoint.dart' as _i3;
import '../endpoints/sport_category_endpoint.dart' as _i4;
import '../endpoints/sport_venue_endpoint.dart' as _i5;
import '../endpoints/sport_venue_has_sport_category_endpoint.dart' as _i6;
import '../endpoints/venue_sport_has_area_endpoint.dart' as _i7;
import 'package:sportify_server/src/generated/player.dart' as _i8;
import 'package:sportify_server/src/generated/sport_category.dart' as _i9;
import 'package:sportify_server/src/generated/sport_venue.dart' as _i10;
import 'package:sportify_server/src/generated/sport_venue_has_sport_category.dart'
    as _i11;
import 'package:sportify_server/src/generated/venue_sport_has_area.dart'
    as _i12;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'player': _i3.PlayerEndpoint()
        ..initialize(
          server,
          'player',
          null,
        ),
      'sportCategory': _i4.SportCategoryEndpoint()
        ..initialize(
          server,
          'sportCategory',
          null,
        ),
      'sportVenue': _i5.SportVenueEndpoint()
        ..initialize(
          server,
          'sportVenue',
          null,
        ),
      'sportVenueHasSportCategory': _i6.SportVenueHasSportCategoryEndpoint()
        ..initialize(
          server,
          'sportVenueHasSportCategory',
          null,
        ),
      'venueSportHasArea': _i7.VenueSportHasAreaEndpoint()
        ..initialize(
          server,
          'venueSportHasArea',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['player'] = _i1.EndpointConnector(
      name: 'player',
      endpoint: endpoints['player']!,
      methodConnectors: {
        'getAllPlayers': _i1.MethodConnector(
          name: 'getAllPlayers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i3.PlayerEndpoint)
                  .getAllPlayers(session),
        ),
        'getPlayerById': _i1.MethodConnector(
          name: 'getPlayerById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i3.PlayerEndpoint).getPlayerById(
            session,
            params['id'],
          ),
        ),
        'addPlayer': _i1.MethodConnector(
          name: 'addPlayer',
          params: {
            'player': _i1.ParameterDescription(
              name: 'player',
              type: _i1.getType<_i8.Player>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i3.PlayerEndpoint).addPlayer(
            session,
            params['player'],
          ),
        ),
        'updatePlayer': _i1.MethodConnector(
          name: 'updatePlayer',
          params: {
            'player': _i1.ParameterDescription(
              name: 'player',
              type: _i1.getType<_i8.Player>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i3.PlayerEndpoint).updatePlayer(
            session,
            params['player'],
          ),
        ),
        'delete': _i1.MethodConnector(
          name: 'delete',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i3.PlayerEndpoint).delete(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['sportCategory'] = _i1.EndpointConnector(
      name: 'sportCategory',
      endpoint: endpoints['sportCategory']!,
      methodConnectors: {
        'getAllSportCategories': _i1.MethodConnector(
          name: 'getAllSportCategories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i4.SportCategoryEndpoint)
                  .getAllSportCategories(session),
        ),
        'getSportCategoryById': _i1.MethodConnector(
          name: 'getSportCategoryById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i4.SportCategoryEndpoint)
                  .getSportCategoryById(
            session,
            params['id'],
          ),
        ),
        'getSportsCategoryByName': _i1.MethodConnector(
          name: 'getSportsCategoryByName',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i4.SportCategoryEndpoint)
                  .getSportsCategoryByName(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addSportsCategory': _i1.MethodConnector(
          name: 'addSportsCategory',
          params: {
            'sportCategory': _i1.ParameterDescription(
              name: 'sportCategory',
              type: _i1.getType<_i9.SportCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i4.SportCategoryEndpoint)
                  .addSportsCategory(
            session,
            params['sportCategory'],
          ),
        ),
        'updateSportCategory': _i1.MethodConnector(
          name: 'updateSportCategory',
          params: {
            'sportCategory': _i1.ParameterDescription(
              name: 'sportCategory',
              type: _i1.getType<_i9.SportCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i4.SportCategoryEndpoint)
                  .updateSportCategory(
            session,
            params['sportCategory'],
          ),
        ),
        'deleteSportCategory': _i1.MethodConnector(
          name: 'deleteSportCategory',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i4.SportCategoryEndpoint)
                  .deleteSportCategory(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['sportVenue'] = _i1.EndpointConnector(
      name: 'sportVenue',
      endpoint: endpoints['sportVenue']!,
      methodConnectors: {
        'getAllSportVenues': _i1.MethodConnector(
          name: 'getAllSportVenues',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i5.SportVenueEndpoint)
                  .getAllSportVenues(session),
        ),
        'getSportVenueById': _i1.MethodConnector(
          name: 'getSportVenueById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i5.SportVenueEndpoint)
                  .getSportVenueById(
            session,
            params['id'],
          ),
        ),
        'getSportVenuesByName': _i1.MethodConnector(
          name: 'getSportVenuesByName',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<String?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i5.SportVenueEndpoint)
                  .getSportVenuesByName(
            session,
            keyword: params['keyword'],
          ),
        ),
        'addSportVenue': _i1.MethodConnector(
          name: 'addSportVenue',
          params: {
            'sportVenue': _i1.ParameterDescription(
              name: 'sportVenue',
              type: _i1.getType<_i10.SportVenue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i5.SportVenueEndpoint).addSportVenue(
            session,
            params['sportVenue'],
          ),
        ),
        'updateSportVenue': _i1.MethodConnector(
          name: 'updateSportVenue',
          params: {
            'sportVenue': _i1.ParameterDescription(
              name: 'sportVenue',
              type: _i1.getType<_i10.SportVenue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i5.SportVenueEndpoint)
                  .updateSportVenue(
            session,
            params['sportVenue'],
          ),
        ),
        'deleteSportVenue': _i1.MethodConnector(
          name: 'deleteSportVenue',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i5.SportVenueEndpoint)
                  .deleteSportVenue(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['sportVenueHasSportCategory'] = _i1.EndpointConnector(
      name: 'sportVenueHasSportCategory',
      endpoint: endpoints['sportVenueHasSportCategory']!,
      methodConnectors: {
        'getAllSportVenueHasSportCategory': _i1.MethodConnector(
          name: 'getAllSportVenueHasSportCategory',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueHasSportCategory']
                      as _i6.SportVenueHasSportCategoryEndpoint)
                  .getAllSportVenueHasSportCategory(session),
        ),
        'getSportVenueHasSportCategoryByVenueId': _i1.MethodConnector(
          name: 'getSportVenueHasSportCategoryByVenueId',
          params: {
            'venueId': _i1.ParameterDescription(
              name: 'venueId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueHasSportCategory']
                      as _i6.SportVenueHasSportCategoryEndpoint)
                  .getSportVenueHasSportCategoryByVenueId(
            session,
            venueId: params['venueId'],
          ),
        ),
        'addSportVenueHasSportCategory': _i1.MethodConnector(
          name: 'addSportVenueHasSportCategory',
          params: {
            'sportVenueHasSportCategory': _i1.ParameterDescription(
              name: 'sportVenueHasSportCategory',
              type: _i1.getType<_i11.SportVenueHasSportCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueHasSportCategory']
                      as _i6.SportVenueHasSportCategoryEndpoint)
                  .addSportVenueHasSportCategory(
            session,
            params['sportVenueHasSportCategory'],
          ),
        ),
      },
    );
    connectors['venueSportHasArea'] = _i1.EndpointConnector(
      name: 'venueSportHasArea',
      endpoint: endpoints['venueSportHasArea']!,
      methodConnectors: {
        'getVenueSportHasAreaByVenueSportId': _i1.MethodConnector(
          name: 'getVenueSportHasAreaByVenueSportId',
          params: {
            'venueSportId': _i1.ParameterDescription(
              name: 'venueSportId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['venueSportHasArea'] as _i7.VenueSportHasAreaEndpoint)
                  .getVenueSportHasAreaByVenueSportId(
            session,
            venueSportId: params['venueSportId'],
          ),
        ),
        'addVenueSportHasArea': _i1.MethodConnector(
          name: 'addVenueSportHasArea',
          params: {
            'venueSportHasArea': _i1.ParameterDescription(
              name: 'venueSportHasArea',
              type: _i1.getType<_i12.VenueSportHasArea>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['venueSportHasArea'] as _i7.VenueSportHasAreaEndpoint)
                  .addVenueSportHasArea(
            session,
            params['venueSportHasArea'],
          ),
        ),
      },
    );
  }
}
