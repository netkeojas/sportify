/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'days_of_week.dart' as _i3;
import 'example.dart' as _i4;
import 'player.dart' as _i5;
import 'sport_booking_details.dart' as _i6;
import 'sport_category.dart' as _i7;
import 'sport_venue.dart' as _i8;
import 'sport_venue_booking.dart' as _i9;
import 'sport_venue_facility_detail.dart' as _i10;
import 'sport_venue_has_sport_category.dart' as _i11;
import 'time_slots_of_day.dart' as _i12;
import 'venue_sport_has_area.dart' as _i13;
import 'package:sportify_server/src/generated/days_of_week.dart' as _i14;
import 'package:sportify_server/src/generated/player.dart' as _i15;
import 'package:sportify_server/src/generated/sport_booking_details.dart'
    as _i16;
import 'package:sportify_server/src/generated/sport_category.dart' as _i17;
import 'package:sportify_server/src/generated/sport_venue_booking.dart' as _i18;
import 'package:sportify_server/src/generated/sport_venue.dart' as _i19;
import 'package:sportify_server/src/generated/sport_venue_facility_detail.dart'
    as _i20;
import 'package:sportify_server/src/generated/sport_venue_has_sport_category.dart'
    as _i21;
import 'package:sportify_server/src/generated/time_slots_of_day.dart' as _i22;
import 'package:sportify_server/src/generated/venue_sport_has_area.dart'
    as _i23;
export 'days_of_week.dart';
export 'example.dart';
export 'player.dart';
export 'sport_booking_details.dart';
export 'sport_category.dart';
export 'sport_venue.dart';
export 'sport_venue_booking.dart';
export 'sport_venue_facility_detail.dart';
export 'sport_venue_has_sport_category.dart';
export 'time_slots_of_day.dart';
export 'venue_sport_has_area.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final targetDatabaseDefinition = _i2.DatabaseDefinition(tables: [
    _i2.TableDefinition(
      name: 'days_of_week',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'days_of_week_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'code',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'days_of_week_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'player',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'player_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'emailId',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'contactNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'city',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'gender',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'dateOfBirth',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'role',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'player_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sport_category',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sport_category_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isTeamSport',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'popularity',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sport_category_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sport_venue',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sport_venue_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'address',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'locationUrl',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'city',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'aboutVenue',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'gstNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'socialMediaIds',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _i2.ColumnDefinition(
          name: 'contactPerson',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'contactNumber',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'imageUrl',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _i2.ColumnDefinition(
          name: 'aminities',
          columnType: _i2.ColumnType.json,
          isNullable: false,
          dartType: 'List<int>',
        ),
        _i2.ColumnDefinition(
          name: 'openingTime',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'closingTime',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sport_venue_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sport_venue_booking',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sport_venue_booking_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'playerId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'venueSportHasAreaId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'dateOfBooking',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'dayOfWeekId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'startTimeOfBooking',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'totalAmount',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'amountPaid',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'bookingStatus',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'bookingTimeStamp',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'numberOfHours',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sport_venue_booking_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sport_venue_facility_detail',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'sport_venue_facility_detail_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'venueHasSportAreaId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'fromDay',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'toDay',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'fromTime',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'toTime',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'pricePerHour',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'pricePerPerson',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sport_venue_facility_detail_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sport_venue_has_sport_category',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'sport_venue_has_sport_category_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'sportVenueId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'sportCategoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sport_venue_has_sport_category_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'time_slots_of_day',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'time_slots_of_day_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'code',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'fromTime',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'toTime',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'time_slots_of_day_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'venue_sport_has_area',
      schema: 'public',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'venue_sport_has_area_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'sportVenueHasSportCategoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'venue_sport_has_area_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetDatabaseDefinition.tables,
  ]);

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.DaysOfWeek) {
      return _i3.DaysOfWeek.fromJson(data, this) as T;
    }
    if (t == _i4.Example) {
      return _i4.Example.fromJson(data, this) as T;
    }
    if (t == _i5.Player) {
      return _i5.Player.fromJson(data, this) as T;
    }
    if (t == _i6.SportBookingDetails) {
      return _i6.SportBookingDetails.fromJson(data, this) as T;
    }
    if (t == _i7.SportCategory) {
      return _i7.SportCategory.fromJson(data, this) as T;
    }
    if (t == _i8.SportVenue) {
      return _i8.SportVenue.fromJson(data, this) as T;
    }
    if (t == _i9.SportVenueBooking) {
      return _i9.SportVenueBooking.fromJson(data, this) as T;
    }
    if (t == _i10.SportVenueFacilityDetail) {
      return _i10.SportVenueFacilityDetail.fromJson(data, this) as T;
    }
    if (t == _i11.SportVenueHasSportCategory) {
      return _i11.SportVenueHasSportCategory.fromJson(data, this) as T;
    }
    if (t == _i12.TimeSlotsOfDay) {
      return _i12.TimeSlotsOfDay.fromJson(data, this) as T;
    }
    if (t == _i13.VenueSportHasArea) {
      return _i13.VenueSportHasArea.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.DaysOfWeek?>()) {
      return (data != null ? _i3.DaysOfWeek.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Example?>()) {
      return (data != null ? _i4.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Player?>()) {
      return (data != null ? _i5.Player.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.SportBookingDetails?>()) {
      return (data != null
          ? _i6.SportBookingDetails.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i7.SportCategory?>()) {
      return (data != null ? _i7.SportCategory.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.SportVenue?>()) {
      return (data != null ? _i8.SportVenue.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.SportVenueBooking?>()) {
      return (data != null ? _i9.SportVenueBooking.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i10.SportVenueFacilityDetail?>()) {
      return (data != null
          ? _i10.SportVenueFacilityDetail.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i11.SportVenueHasSportCategory?>()) {
      return (data != null
          ? _i11.SportVenueHasSportCategory.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i12.TimeSlotsOfDay?>()) {
      return (data != null ? _i12.TimeSlotsOfDay.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.VenueSportHasArea?>()) {
      return (data != null ? _i13.VenueSportHasArea.fromJson(data, this) : null)
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == List<_i14.DaysOfWeek>) {
      return (data as List).map((e) => deserialize<_i14.DaysOfWeek>(e)).toList()
          as dynamic;
    }
    if (t == List<_i15.Player>) {
      return (data as List).map((e) => deserialize<_i15.Player>(e)).toList()
          as dynamic;
    }
    if (t == List<_i16.SportBookingDetails>) {
      return (data as List)
          .map((e) => deserialize<_i16.SportBookingDetails>(e))
          .toList() as dynamic;
    }
    if (t == List<_i17.SportCategory>) {
      return (data as List)
          .map((e) => deserialize<_i17.SportCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i18.SportVenueBooking>) {
      return (data as List)
          .map((e) => deserialize<_i18.SportVenueBooking>(e))
          .toList() as dynamic;
    }
    if (t == List<_i19.SportVenue>) {
      return (data as List).map((e) => deserialize<_i19.SportVenue>(e)).toList()
          as dynamic;
    }
    if (t == List<_i20.SportVenueFacilityDetail>) {
      return (data as List)
          .map((e) => deserialize<_i20.SportVenueFacilityDetail>(e))
          .toList() as dynamic;
    }
    if (t == List<_i21.SportVenueHasSportCategory>) {
      return (data as List)
          .map((e) => deserialize<_i21.SportVenueHasSportCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i22.TimeSlotsOfDay>) {
      return (data as List)
          .map((e) => deserialize<_i22.TimeSlotsOfDay>(e))
          .toList() as dynamic;
    }
    if (t == List<_i23.VenueSportHasArea>) {
      return (data as List)
          .map((e) => deserialize<_i23.VenueSportHasArea>(e))
          .toList() as dynamic;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.DaysOfWeek) {
      return 'DaysOfWeek';
    }
    if (data is _i4.Example) {
      return 'Example';
    }
    if (data is _i5.Player) {
      return 'Player';
    }
    if (data is _i6.SportBookingDetails) {
      return 'SportBookingDetails';
    }
    if (data is _i7.SportCategory) {
      return 'SportCategory';
    }
    if (data is _i8.SportVenue) {
      return 'SportVenue';
    }
    if (data is _i9.SportVenueBooking) {
      return 'SportVenueBooking';
    }
    if (data is _i10.SportVenueFacilityDetail) {
      return 'SportVenueFacilityDetail';
    }
    if (data is _i11.SportVenueHasSportCategory) {
      return 'SportVenueHasSportCategory';
    }
    if (data is _i12.TimeSlotsOfDay) {
      return 'TimeSlotsOfDay';
    }
    if (data is _i13.VenueSportHasArea) {
      return 'VenueSportHasArea';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'DaysOfWeek') {
      return deserialize<_i3.DaysOfWeek>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i4.Example>(data['data']);
    }
    if (data['className'] == 'Player') {
      return deserialize<_i5.Player>(data['data']);
    }
    if (data['className'] == 'SportBookingDetails') {
      return deserialize<_i6.SportBookingDetails>(data['data']);
    }
    if (data['className'] == 'SportCategory') {
      return deserialize<_i7.SportCategory>(data['data']);
    }
    if (data['className'] == 'SportVenue') {
      return deserialize<_i8.SportVenue>(data['data']);
    }
    if (data['className'] == 'SportVenueBooking') {
      return deserialize<_i9.SportVenueBooking>(data['data']);
    }
    if (data['className'] == 'SportVenueFacilityDetail') {
      return deserialize<_i10.SportVenueFacilityDetail>(data['data']);
    }
    if (data['className'] == 'SportVenueHasSportCategory') {
      return deserialize<_i11.SportVenueHasSportCategory>(data['data']);
    }
    if (data['className'] == 'TimeSlotsOfDay') {
      return deserialize<_i12.TimeSlotsOfDay>(data['data']);
    }
    if (data['className'] == 'VenueSportHasArea') {
      return deserialize<_i13.VenueSportHasArea>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i3.DaysOfWeek:
        return _i3.DaysOfWeek.t;
      case _i5.Player:
        return _i5.Player.t;
      case _i7.SportCategory:
        return _i7.SportCategory.t;
      case _i8.SportVenue:
        return _i8.SportVenue.t;
      case _i9.SportVenueBooking:
        return _i9.SportVenueBooking.t;
      case _i10.SportVenueFacilityDetail:
        return _i10.SportVenueFacilityDetail.t;
      case _i11.SportVenueHasSportCategory:
        return _i11.SportVenueHasSportCategory.t;
      case _i12.TimeSlotsOfDay:
        return _i12.TimeSlotsOfDay.t;
      case _i13.VenueSportHasArea:
        return _i13.VenueSportHasArea.t;
    }
    return null;
  }

  @override
  _i2.DatabaseDefinition getTargetDatabaseDefinition() =>
      targetDatabaseDefinition;
}
