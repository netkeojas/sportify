/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SportCategory extends _i1.SerializableEntity {
  SportCategory({
    this.id,
    required this.name,
    required this.isTeamSport,
    required this.popularity,
  });

  factory SportCategory.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportCategory(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      isTeamSport: serializationManager
          .deserialize<bool>(jsonSerialization['isTeamSport']),
      popularity: serializationManager
          .deserialize<int>(jsonSerialization['popularity']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  bool isTeamSport;

  int popularity;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'isTeamSport': isTeamSport,
      'popularity': popularity,
    };
  }
}
