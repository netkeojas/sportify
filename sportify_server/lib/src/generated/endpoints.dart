/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/day_of_week_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/player_endpoint.dart' as _i4;
import '../endpoints/sport_category_endpoint.dart' as _i5;
import '../endpoints/sport_venue_booking_endpoint.dart' as _i6;
import '../endpoints/sport_venue_endpoint.dart' as _i7;
import '../endpoints/sport_venue_facility_detail_endpoint.dart' as _i8;
import '../endpoints/sport_venue_has_sport_category_endpoint.dart' as _i9;
import '../endpoints/time_slot_of_day_endpoint.dart' as _i10;
import '../endpoints/venue_sport_has_area_endpoint.dart' as _i11;
import 'package:sportify_server/src/generated/days_of_week.dart' as _i12;
import 'package:sportify_server/src/generated/player.dart' as _i13;
import 'package:sportify_server/src/generated/sport_category.dart' as _i14;
import 'package:sportify_server/src/generated/sport_venue_booking.dart' as _i15;
import 'package:sportify_server/src/generated/sport_venue.dart' as _i16;
import 'package:sportify_server/src/generated/sport_venue_facility_detail.dart'
    as _i17;
import 'package:sportify_server/src/generated/sport_venue_has_sport_category.dart'
    as _i18;
import 'package:sportify_server/src/generated/time_slots_of_day.dart' as _i19;
import 'package:sportify_server/src/generated/venue_sport_has_area.dart'
    as _i20;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'dayOfWeek': _i2.DayOfWeekEndpoint()
        ..initialize(
          server,
          'dayOfWeek',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'player': _i4.PlayerEndpoint()
        ..initialize(
          server,
          'player',
          null,
        ),
      'sportCategory': _i5.SportCategoryEndpoint()
        ..initialize(
          server,
          'sportCategory',
          null,
        ),
      'sportVenueBooking': _i6.SportVenueBookingEndpoint()
        ..initialize(
          server,
          'sportVenueBooking',
          null,
        ),
      'sportVenue': _i7.SportVenueEndpoint()
        ..initialize(
          server,
          'sportVenue',
          null,
        ),
      'sportVenueFacilityDetail': _i8.SportVenueFacilityDetailEndpoint()
        ..initialize(
          server,
          'sportVenueFacilityDetail',
          null,
        ),
      'sportVenueHasSportCategory': _i9.SportVenueHasSportCategoryEndpoint()
        ..initialize(
          server,
          'sportVenueHasSportCategory',
          null,
        ),
      'timeSlotOfDay': _i10.TimeSlotOfDayEndpoint()
        ..initialize(
          server,
          'timeSlotOfDay',
          null,
        ),
      'venueSportHasArea': _i11.VenueSportHasAreaEndpoint()
        ..initialize(
          server,
          'venueSportHasArea',
          null,
        ),
    };
    connectors['dayOfWeek'] = _i1.EndpointConnector(
      name: 'dayOfWeek',
      endpoint: endpoints['dayOfWeek']!,
      methodConnectors: {
        'getAllDaysOfWeek': _i1.MethodConnector(
          name: 'getAllDaysOfWeek',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dayOfWeek'] as _i2.DayOfWeekEndpoint)
                  .getAllDaysOfWeek(session),
        ),
        'addDaysOfWeek': _i1.MethodConnector(
          name: 'addDaysOfWeek',
          params: {
            'daysOfWeek': _i1.ParameterDescription(
              name: 'daysOfWeek',
              type: _i1.getType<_i12.DaysOfWeek>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dayOfWeek'] as _i2.DayOfWeekEndpoint).addDaysOfWeek(
            session,
            params['daysOfWeek'],
          ),
        ),
        'getDayOfWeekById': _i1.MethodConnector(
          name: 'getDayOfWeekById',
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
              (endpoints['dayOfWeek'] as _i2.DayOfWeekEndpoint)
                  .getDayOfWeekById(
            session,
            params['id'],
          ),
        ),
      },
    );
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
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
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
              (endpoints['player'] as _i4.PlayerEndpoint)
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
              (endpoints['player'] as _i4.PlayerEndpoint).getPlayerById(
            session,
            params['id'],
          ),
        ),
        'addPlayer': _i1.MethodConnector(
          name: 'addPlayer',
          params: {
            'player': _i1.ParameterDescription(
              name: 'player',
              type: _i1.getType<_i13.Player>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i4.PlayerEndpoint).addPlayer(
            session,
            params['player'],
          ),
        ),
        'updatePlayer': _i1.MethodConnector(
          name: 'updatePlayer',
          params: {
            'player': _i1.ParameterDescription(
              name: 'player',
              type: _i1.getType<_i13.Player>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['player'] as _i4.PlayerEndpoint).updatePlayer(
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
              (endpoints['player'] as _i4.PlayerEndpoint).delete(
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
              (endpoints['sportCategory'] as _i5.SportCategoryEndpoint)
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
              (endpoints['sportCategory'] as _i5.SportCategoryEndpoint)
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
              (endpoints['sportCategory'] as _i5.SportCategoryEndpoint)
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
              type: _i1.getType<_i14.SportCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i5.SportCategoryEndpoint)
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
              type: _i1.getType<_i14.SportCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportCategory'] as _i5.SportCategoryEndpoint)
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
              (endpoints['sportCategory'] as _i5.SportCategoryEndpoint)
                  .deleteSportCategory(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['sportVenueBooking'] = _i1.EndpointConnector(
      name: 'sportVenueBooking',
      endpoint: endpoints['sportVenueBooking']!,
      methodConnectors: {
        'addSportVenueBooking': _i1.MethodConnector(
          name: 'addSportVenueBooking',
          params: {
            'sportVenueBooking': _i1.ParameterDescription(
              name: 'sportVenueBooking',
              type: _i1.getType<_i15.SportVenueBooking>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueBooking'] as _i6.SportVenueBookingEndpoint)
                  .addSportVenueBooking(
            session,
            params['sportVenueBooking'],
          ),
        ),
        'getAllSportVenueBookings': _i1.MethodConnector(
          name: 'getAllSportVenueBookings',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueBooking'] as _i6.SportVenueBookingEndpoint)
                  .getAllSportVenueBookings(session),
        ),
        'getAllSportVenueBookingsForPlayer': _i1.MethodConnector(
          name: 'getAllSportVenueBookingsForPlayer',
          params: {
            'playerId': _i1.ParameterDescription(
              name: 'playerId',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueBooking'] as _i6.SportVenueBookingEndpoint)
                  .getAllSportVenueBookingsForPlayer(
            session,
            playerId: params['playerId'],
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
              (endpoints['sportVenue'] as _i7.SportVenueEndpoint)
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
              (endpoints['sportVenue'] as _i7.SportVenueEndpoint)
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
              (endpoints['sportVenue'] as _i7.SportVenueEndpoint)
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
              type: _i1.getType<_i16.SportVenue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i7.SportVenueEndpoint).addSportVenue(
            session,
            params['sportVenue'],
          ),
        ),
        'updateSportVenue': _i1.MethodConnector(
          name: 'updateSportVenue',
          params: {
            'sportVenue': _i1.ParameterDescription(
              name: 'sportVenue',
              type: _i1.getType<_i16.SportVenue>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenue'] as _i7.SportVenueEndpoint)
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
              (endpoints['sportVenue'] as _i7.SportVenueEndpoint)
                  .deleteSportVenue(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['sportVenueFacilityDetail'] = _i1.EndpointConnector(
      name: 'sportVenueFacilityDetail',
      endpoint: endpoints['sportVenueFacilityDetail']!,
      methodConnectors: {
        'addSportVenueFacilityDetail': _i1.MethodConnector(
          name: 'addSportVenueFacilityDetail',
          params: {
            'sportVenueFacilityDetail': _i1.ParameterDescription(
              name: 'sportVenueFacilityDetail',
              type: _i1.getType<_i17.SportVenueFacilityDetail>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueFacilityDetail']
                      as _i8.SportVenueFacilityDetailEndpoint)
                  .addSportVenueFacilityDetail(
            session,
            params['sportVenueFacilityDetail'],
          ),
        ),
        'getAllSportVenueFacilityDetails': _i1.MethodConnector(
          name: 'getAllSportVenueFacilityDetails',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueFacilityDetail']
                      as _i8.SportVenueFacilityDetailEndpoint)
                  .getAllSportVenueFacilityDetails(session),
        ),
        'getAllSportVenueFacilityDetailsForGivenVenueHasAreaId':
            _i1.MethodConnector(
          name: 'getAllSportVenueFacilityDetailsForGivenVenueHasAreaId',
          params: {
            'keyword': _i1.ParameterDescription(
              name: 'keyword',
              type: _i1.getType<int?>(),
              nullable: true,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueFacilityDetail']
                      as _i8.SportVenueFacilityDetailEndpoint)
                  .getAllSportVenueFacilityDetailsForGivenVenueHasAreaId(
            session,
            keyword: params['keyword'],
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
                      as _i9.SportVenueHasSportCategoryEndpoint)
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
                      as _i9.SportVenueHasSportCategoryEndpoint)
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
              type: _i1.getType<_i18.SportVenueHasSportCategory>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['sportVenueHasSportCategory']
                      as _i9.SportVenueHasSportCategoryEndpoint)
                  .addSportVenueHasSportCategory(
            session,
            params['sportVenueHasSportCategory'],
          ),
        ),
      },
    );
    connectors['timeSlotOfDay'] = _i1.EndpointConnector(
      name: 'timeSlotOfDay',
      endpoint: endpoints['timeSlotOfDay']!,
      methodConnectors: {
        'getAllTimeSlotsOfDay': _i1.MethodConnector(
          name: 'getAllTimeSlotsOfDay',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['timeSlotOfDay'] as _i10.TimeSlotOfDayEndpoint)
                  .getAllTimeSlotsOfDay(session),
        ),
        'addTimeSlotOfDay': _i1.MethodConnector(
          name: 'addTimeSlotOfDay',
          params: {
            'timeSlotsOfDay': _i1.ParameterDescription(
              name: 'timeSlotsOfDay',
              type: _i1.getType<_i19.TimeSlotsOfDay>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['timeSlotOfDay'] as _i10.TimeSlotOfDayEndpoint)
                  .addTimeSlotOfDay(
            session,
            params['timeSlotsOfDay'],
          ),
        ),
        'getTimeSlotOfDayById': _i1.MethodConnector(
          name: 'getTimeSlotOfDayById',
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
              (endpoints['timeSlotOfDay'] as _i10.TimeSlotOfDayEndpoint)
                  .getTimeSlotOfDayById(
            session,
            params['id'],
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
              (endpoints['venueSportHasArea'] as _i11.VenueSportHasAreaEndpoint)
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
              type: _i1.getType<_i20.VenueSportHasArea>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['venueSportHasArea'] as _i11.VenueSportHasAreaEndpoint)
                  .addVenueSportHasArea(
            session,
            params['venueSportHasArea'],
          ),
        ),
      },
    );
  }
}
