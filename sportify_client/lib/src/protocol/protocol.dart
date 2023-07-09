/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'days_of_week.dart' as _i2;
import 'example.dart' as _i3;
import 'player.dart' as _i4;
import 'sport_category.dart' as _i5;
import 'sport_venue.dart' as _i6;
import 'sport_venue_booking.dart' as _i7;
import 'sport_venue_facility_detail.dart' as _i8;
import 'sport_venue_has_sport_category.dart' as _i9;
import 'time_slots_of_day.dart' as _i10;
import 'venue_sport_has_area.dart' as _i11;
import 'package:sportify_client/src/protocol/days_of_week.dart' as _i12;
import 'package:sportify_client/src/protocol/player.dart' as _i13;
import 'package:sportify_client/src/protocol/sport_category.dart' as _i14;
import 'package:sportify_client/src/protocol/sport_venue_booking.dart' as _i15;
import 'package:sportify_client/src/protocol/sport_venue.dart' as _i16;
import 'package:sportify_client/src/protocol/sport_venue_facility_detail.dart'
    as _i17;
import 'package:sportify_client/src/protocol/sport_venue_has_sport_category.dart'
    as _i18;
import 'package:sportify_client/src/protocol/time_slots_of_day.dart' as _i19;
import 'package:sportify_client/src/protocol/venue_sport_has_area.dart' as _i20;
export 'days_of_week.dart';
export 'example.dart';
export 'player.dart';
export 'sport_category.dart';
export 'sport_venue.dart';
export 'sport_venue_booking.dart';
export 'sport_venue_facility_detail.dart';
export 'sport_venue_has_sport_category.dart';
export 'time_slots_of_day.dart';
export 'venue_sport_has_area.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.DaysOfWeek) {
      return _i2.DaysOfWeek.fromJson(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Player) {
      return _i4.Player.fromJson(data, this) as T;
    }
    if (t == _i5.SportCategory) {
      return _i5.SportCategory.fromJson(data, this) as T;
    }
    if (t == _i6.SportVenue) {
      return _i6.SportVenue.fromJson(data, this) as T;
    }
    if (t == _i7.SportVenueBooking) {
      return _i7.SportVenueBooking.fromJson(data, this) as T;
    }
    if (t == _i8.SportVenueFacilityDetail) {
      return _i8.SportVenueFacilityDetail.fromJson(data, this) as T;
    }
    if (t == _i9.SportVenueHasSportCategory) {
      return _i9.SportVenueHasSportCategory.fromJson(data, this) as T;
    }
    if (t == _i10.TimeSlotsOfDay) {
      return _i10.TimeSlotsOfDay.fromJson(data, this) as T;
    }
    if (t == _i11.VenueSportHasArea) {
      return _i11.VenueSportHasArea.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.DaysOfWeek?>()) {
      return (data != null ? _i2.DaysOfWeek.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Player?>()) {
      return (data != null ? _i4.Player.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.SportCategory?>()) {
      return (data != null ? _i5.SportCategory.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.SportVenue?>()) {
      return (data != null ? _i6.SportVenue.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.SportVenueBooking?>()) {
      return (data != null ? _i7.SportVenueBooking.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i8.SportVenueFacilityDetail?>()) {
      return (data != null
          ? _i8.SportVenueFacilityDetail.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i9.SportVenueHasSportCategory?>()) {
      return (data != null
          ? _i9.SportVenueHasSportCategory.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i10.TimeSlotsOfDay?>()) {
      return (data != null ? _i10.TimeSlotsOfDay.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i11.VenueSportHasArea?>()) {
      return (data != null ? _i11.VenueSportHasArea.fromJson(data, this) : null)
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == List<_i12.DaysOfWeek>) {
      return (data as List).map((e) => deserialize<_i12.DaysOfWeek>(e)).toList()
          as dynamic;
    }
    if (t == List<_i13.Player>) {
      return (data as List).map((e) => deserialize<_i13.Player>(e)).toList()
          as dynamic;
    }
    if (t == List<_i14.SportCategory>) {
      return (data as List)
          .map((e) => deserialize<_i14.SportCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i15.SportVenueBooking>) {
      return (data as List)
          .map((e) => deserialize<_i15.SportVenueBooking>(e))
          .toList() as dynamic;
    }
    if (t == List<_i16.SportVenue>) {
      return (data as List).map((e) => deserialize<_i16.SportVenue>(e)).toList()
          as dynamic;
    }
    if (t == List<_i17.SportVenueFacilityDetail>) {
      return (data as List)
          .map((e) => deserialize<_i17.SportVenueFacilityDetail>(e))
          .toList() as dynamic;
    }
    if (t == List<_i18.SportVenueHasSportCategory>) {
      return (data as List)
          .map((e) => deserialize<_i18.SportVenueHasSportCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i19.TimeSlotsOfDay>) {
      return (data as List)
          .map((e) => deserialize<_i19.TimeSlotsOfDay>(e))
          .toList() as dynamic;
    }
    if (t == List<_i20.VenueSportHasArea>) {
      return (data as List)
          .map((e) => deserialize<_i20.VenueSportHasArea>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.DaysOfWeek) {
      return 'DaysOfWeek';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Player) {
      return 'Player';
    }
    if (data is _i5.SportCategory) {
      return 'SportCategory';
    }
    if (data is _i6.SportVenue) {
      return 'SportVenue';
    }
    if (data is _i7.SportVenueBooking) {
      return 'SportVenueBooking';
    }
    if (data is _i8.SportVenueFacilityDetail) {
      return 'SportVenueFacilityDetail';
    }
    if (data is _i9.SportVenueHasSportCategory) {
      return 'SportVenueHasSportCategory';
    }
    if (data is _i10.TimeSlotsOfDay) {
      return 'TimeSlotsOfDay';
    }
    if (data is _i11.VenueSportHasArea) {
      return 'VenueSportHasArea';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'DaysOfWeek') {
      return deserialize<_i2.DaysOfWeek>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Player') {
      return deserialize<_i4.Player>(data['data']);
    }
    if (data['className'] == 'SportCategory') {
      return deserialize<_i5.SportCategory>(data['data']);
    }
    if (data['className'] == 'SportVenue') {
      return deserialize<_i6.SportVenue>(data['data']);
    }
    if (data['className'] == 'SportVenueBooking') {
      return deserialize<_i7.SportVenueBooking>(data['data']);
    }
    if (data['className'] == 'SportVenueFacilityDetail') {
      return deserialize<_i8.SportVenueFacilityDetail>(data['data']);
    }
    if (data['className'] == 'SportVenueHasSportCategory') {
      return deserialize<_i9.SportVenueHasSportCategory>(data['data']);
    }
    if (data['className'] == 'TimeSlotsOfDay') {
      return deserialize<_i10.TimeSlotsOfDay>(data['data']);
    }
    if (data['className'] == 'VenueSportHasArea') {
      return deserialize<_i11.VenueSportHasArea>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
