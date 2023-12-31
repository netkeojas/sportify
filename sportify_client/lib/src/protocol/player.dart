/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Player extends _i1.SerializableEntity {
  Player({
    this.id,
    required this.name,
    required this.emailId,
    required this.contactNumber,
    required this.city,
    required this.gender,
    required this.dateOfBirth,
    required this.role,
  });

  factory Player.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Player(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      emailId: serializationManager
          .deserialize<String>(jsonSerialization['emailId']),
      contactNumber: serializationManager
          .deserialize<String>(jsonSerialization['contactNumber']),
      city: serializationManager.deserialize<String>(jsonSerialization['city']),
      gender:
          serializationManager.deserialize<String>(jsonSerialization['gender']),
      dateOfBirth: serializationManager
          .deserialize<DateTime>(jsonSerialization['dateOfBirth']),
      role: serializationManager.deserialize<String>(jsonSerialization['role']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String emailId;

  String contactNumber;

  String city;

  String gender;

  DateTime dateOfBirth;

  String role;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'emailId': emailId,
      'contactNumber': contactNumber,
      'city': city,
      'gender': gender,
      'dateOfBirth': dateOfBirth,
      'role': role,
    };
  }
}
