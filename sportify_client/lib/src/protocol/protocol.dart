/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'example.dart' as _i2;
import 'player.dart' as _i3;
import 'sport_category.dart' as _i4;
import 'sport_venue.dart' as _i5;
import 'sport_venue_has_sport_category.dart' as _i6;
import 'venue_sport_has_area.dart' as _i7;
import 'package:sportify_client/src/protocol/player.dart' as _i8;
import 'package:sportify_client/src/protocol/sport_category.dart' as _i9;
import 'package:sportify_client/src/protocol/sport_venue.dart' as _i10;
import 'package:sportify_client/src/protocol/sport_venue_has_sport_category.dart'
    as _i11;
import 'package:sportify_client/src/protocol/venue_sport_has_area.dart' as _i12;
export 'example.dart';
export 'player.dart';
export 'sport_category.dart';
export 'sport_venue.dart';
export 'sport_venue_has_sport_category.dart';
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
    if (t == _i2.Example) {
      return _i2.Example.fromJson(data, this) as T;
    }
    if (t == _i3.Player) {
      return _i3.Player.fromJson(data, this) as T;
    }
    if (t == _i4.SportCategory) {
      return _i4.SportCategory.fromJson(data, this) as T;
    }
    if (t == _i5.SportVenue) {
      return _i5.SportVenue.fromJson(data, this) as T;
    }
    if (t == _i6.SportVenueHasSportCategory) {
      return _i6.SportVenueHasSportCategory.fromJson(data, this) as T;
    }
    if (t == _i7.VenueSportHasArea) {
      return _i7.VenueSportHasArea.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Example?>()) {
      return (data != null ? _i2.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Player?>()) {
      return (data != null ? _i3.Player.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.SportCategory?>()) {
      return (data != null ? _i4.SportCategory.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i5.SportVenue?>()) {
      return (data != null ? _i5.SportVenue.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.SportVenueHasSportCategory?>()) {
      return (data != null
          ? _i6.SportVenueHasSportCategory.fromJson(data, this)
          : null) as T;
    }
    if (t == _i1.getType<_i7.VenueSportHasArea?>()) {
      return (data != null ? _i7.VenueSportHasArea.fromJson(data, this) : null)
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as dynamic;
    }
    if (t == List<_i8.Player>) {
      return (data as List).map((e) => deserialize<_i8.Player>(e)).toList()
          as dynamic;
    }
    if (t == List<_i9.SportCategory>) {
      return (data as List)
          .map((e) => deserialize<_i9.SportCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i10.SportVenue>) {
      return (data as List).map((e) => deserialize<_i10.SportVenue>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.SportVenueHasSportCategory>) {
      return (data as List)
          .map((e) => deserialize<_i11.SportVenueHasSportCategory>(e))
          .toList() as dynamic;
    }
    if (t == List<_i12.VenueSportHasArea>) {
      return (data as List)
          .map((e) => deserialize<_i12.VenueSportHasArea>(e))
          .toList() as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Example) {
      return 'Example';
    }
    if (data is _i3.Player) {
      return 'Player';
    }
    if (data is _i4.SportCategory) {
      return 'SportCategory';
    }
    if (data is _i5.SportVenue) {
      return 'SportVenue';
    }
    if (data is _i6.SportVenueHasSportCategory) {
      return 'SportVenueHasSportCategory';
    }
    if (data is _i7.VenueSportHasArea) {
      return 'VenueSportHasArea';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Example') {
      return deserialize<_i2.Example>(data['data']);
    }
    if (data['className'] == 'Player') {
      return deserialize<_i3.Player>(data['data']);
    }
    if (data['className'] == 'SportCategory') {
      return deserialize<_i4.SportCategory>(data['data']);
    }
    if (data['className'] == 'SportVenue') {
      return deserialize<_i5.SportVenue>(data['data']);
    }
    if (data['className'] == 'SportVenueHasSportCategory') {
      return deserialize<_i6.SportVenueHasSportCategory>(data['data']);
    }
    if (data['className'] == 'VenueSportHasArea') {
      return deserialize<_i7.VenueSportHasArea>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
