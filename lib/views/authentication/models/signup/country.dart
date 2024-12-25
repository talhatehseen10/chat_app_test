// To parse this JSON data, do
//
//     final country = countryFromJson(jsonString);

import 'dart:convert';

List<Country> countryFromJson(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

String countryToJson(List<Country> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Country {
  String? uuid;
  DateTime? createdAt;
  String? id;
  String? name;
  DateTime? updatedAt;
  String? regionUuid;
  String? shareRegionUuid;

  Country({
    this.uuid,
    this.createdAt,
    this.id,
    this.name,
    this.updatedAt,
    this.regionUuid,
    this.shareRegionUuid,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        uuid: json["uuid"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        name: json["name"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        regionUuid: json["region_uuid"],
        shareRegionUuid: json["share_region_uuid"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "name": name,
        "updated_at": updatedAt?.toIso8601String(),
        "region_uuid": regionUuid,
        "share_region_uuid": shareRegionUuid,
      };
}
