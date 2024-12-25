// To parse this JSON data, do
//
//     final regions = regionsFromJson(jsonString);

import 'dart:convert';

List<Region> regionFromJson(String str) =>
    List<Region>.from(json.decode(str).map((x) => Region.fromJson(x)));

String regionToJson(List<Region> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Region {
  String? uuid;
  DateTime? createdAt;
  String? id;
  String? name;
  DateTime? updatedAt;
  dynamic partnerUuid;
  dynamic responsibleUuid;
  String? arName;

  Region({
    this.uuid,
    this.createdAt,
    this.id,
    this.name,
    this.updatedAt,
    this.partnerUuid,
    this.responsibleUuid,
    this.arName,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        uuid: json["uuid"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        id: json["id"],
        name: json["name"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        partnerUuid: json["partner_uuid"],
        responsibleUuid: json["responsible_uuid"],
        arName: json["ar_name"],
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "name": name,
        "updated_at": updatedAt?.toIso8601String(),
        "partner_uuid": partnerUuid,
        "responsible_uuid": responsibleUuid,
        "ar_name": arName,
      };
}
