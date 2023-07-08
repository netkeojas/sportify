/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class SportVenue extends _i1.SerializableEntity {
  SportVenue({
    this.id,
    required this.name,
    required this.address,
    required this.locationUrl,
    required this.openTiming,
    required this.aboutVenue,
    required this.gstNumber,
    required this.socialMediaIds,
    required this.contactPerson,
    required this.contactNumber,
    required this.imageUrl,
    required this.aminities,
  });

  factory SportVenue.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SportVenue(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      address: serializationManager
          .deserialize<String>(jsonSerialization['address']),
      locationUrl: serializationManager
          .deserialize<String>(jsonSerialization['locationUrl']),
      openTiming: serializationManager
          .deserialize<String>(jsonSerialization['openTiming']),
      aboutVenue: serializationManager
          .deserialize<String>(jsonSerialization['aboutVenue']),
      gstNumber: serializationManager
          .deserialize<String>(jsonSerialization['gstNumber']),
      socialMediaIds: serializationManager
          .deserialize<List<String>>(jsonSerialization['socialMediaIds']),
      contactPerson: serializationManager
          .deserialize<String>(jsonSerialization['contactPerson']),
      contactNumber: serializationManager
          .deserialize<String>(jsonSerialization['contactNumber']),
      imageUrl: serializationManager
          .deserialize<List<String>>(jsonSerialization['imageUrl']),
      aminities: serializationManager
          .deserialize<List<int>>(jsonSerialization['aminities']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String address;

  String locationUrl;

  String openTiming;

  String aboutVenue;

  String gstNumber;

  List<String> socialMediaIds;

  String contactPerson;

  String contactNumber;

  List<String> imageUrl;

  List<int> aminities;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'locationUrl': locationUrl,
      'openTiming': openTiming,
      'aboutVenue': aboutVenue,
      'gstNumber': gstNumber,
      'socialMediaIds': socialMediaIds,
      'contactPerson': contactPerson,
      'contactNumber': contactNumber,
      'imageUrl': imageUrl,
      'aminities': aminities,
    };
  }
}
