part of openproject_dart_sdk.api;

class Version {
  
  int id;
  
  String name;
  
  Description description;
  
  DateTime startDate;
  
  DateTime endDate;
  
  VersionStatusEnum status;
  
  DateTime createdAt;
  
  DateTime updatedAt;
  
  VersionLinks links;

  Version({
    this.id,
    this.name,
    this.description,
    this.startDate,
    this.endDate,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  @override
  String toString() {
    return 'Version[id=$id, name=$name, description=$description, startDate=$startDate, endDate=$endDate, status=$status, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, ]';
  }

  Version.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = (json['description'] == null) ?
      null :
      Description.fromJson(json['description']);
    startDate = (json['startDate'] == null) ?
      null :
      DateTime.parse(json['startDate']);
    endDate = (json['endDate'] == null) ?
      null :
      DateTime.parse(json['endDate']);
    status = VersionStatusEnum.fromJson(json['status']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    links = (json['_links'] == null) ?
      null :
      VersionLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (description != null)
      json['description'] = description;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : _dateFormatter.format(startDate.toUtc());
    if (endDate != null)
      json['endDate'] = endDate == null ? null : _dateFormatter.format(endDate.toUtc());
    if (status != null)
      json['status'] = status.value;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<Version> listFromJson(List<dynamic> json) {
    return json == null ? List<Version>() : json.map((value) => Version.fromJson(value)).toList();
  }

  static Map<String, Version> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Version>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Version.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Version-objects as value to a dart map
  static Map<String, List<Version>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Version>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Version.listFromJson(value);
      });
    }
    return map;
  }
}
class VersionStatusEnum {
  /// The underlying value of this enum member.
  final String value;

  const VersionStatusEnum._internal(this.value);

  static const VersionStatusEnum open_ = VersionStatusEnum._internal("open");

  static List<VersionStatusEnum> get values => const [
        open_,
      ];

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static VersionStatusEnum fromJson(String value) {
    return VersionStatusEnumTypeTransformer().decode(value);
  }

  static List<VersionStatusEnum> listFromJson(List<dynamic> json) {
    return json == null
      ? List<VersionStatusEnum>()
      : json.map((value) => VersionStatusEnum.fromJson(value)).toList();
  }
}

class VersionStatusEnumTypeTransformer {

  dynamic encode(VersionStatusEnum data) {
    return data.value;
  }

  VersionStatusEnum decode(dynamic data) {
    switch (data) {
      case "open": return VersionStatusEnum.open_;
      default: return null;
    }
  }
}


