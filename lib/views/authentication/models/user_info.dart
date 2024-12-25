class UserInfo {
    String? uuid;
    String? name;
    String? username;
    String? role;
    String? countryUuid;
    String? regionUuid;

    UserInfo({
        this.uuid,
        this.name,
        this.username,
        this.role,
        this.countryUuid,
        this.regionUuid,
    });

    factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        uuid: json["uuid"],
        name: json["name"],
        username: json["username"],
        role: json["role"],
        countryUuid: json["country_uuid"],
        regionUuid: json["region_uuid"],
    );

    Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "name": name,
        "username": username,
        "role": role,
        "country_uuid": countryUuid,
        "region_uuid": regionUuid,
    };
}
