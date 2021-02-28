//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Version {
  /// Returns a new [Version] instance.
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

  int id;

  String name;

  Description description;

  DateTime startDate;

  DateTime endDate;

  VersionStatusEnum status;

  DateTime createdAt;

  DateTime updatedAt;

  VersionLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Version &&
     other.id == id &&
     other.name == name &&
     other.description == description &&
     other.startDate == startDate &&
     other.endDate == endDate &&
     other.status == status &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (endDate == null ? 0 : endDate.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Version[id=$id, name=$name, description=$description, startDate=$startDate, endDate=$endDate, status=$status, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (startDate != null) {
      json[r'startDate'] = _dateFormatter.format(startDate.toUtc());
    }
    if (endDate != null) {
      json[r'endDate'] = _dateFormatter.format(endDate.toUtc());
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Version] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Version fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Version(
        id: json[r'id'],
        name: json[r'name'],
        description: Description.fromJson(json[r'description']),
        startDate: json[r'startDate'] == null
          ? null
          : DateTime.parse(json[r'startDate']),
        endDate: json[r'endDate'] == null
          ? null
          : DateTime.parse(json[r'endDate']),
        status: VersionStatusEnum.fromJson(json[r'status']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        links: VersionLinks.fromJson(json[r'_links']),
    );

  static List<Version> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Version>[]
      : json.map((v) => Version.fromJson(v)).toList(growable: true == growable);

  static Map<String, Version> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Version>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Version.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Version-objects as value to a dart map
  static Map<String, List<Version>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Version>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Version.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class VersionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const VersionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const open = VersionStatusEnum._(r'open');

  /// List of all possible values in this [enum][VersionStatusEnum].
  static const values = <VersionStatusEnum>[
    open,
  ];

  static VersionStatusEnum fromJson(dynamic value) =>
    VersionStatusEnumTypeTransformer().decode(value);

  static List<VersionStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <VersionStatusEnum>[]
      : json
          .map((value) => VersionStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [VersionStatusEnum] to String,
/// and [decode] dynamic data back to [VersionStatusEnum].
class VersionStatusEnumTypeTransformer {
  const VersionStatusEnumTypeTransformer._();

  factory VersionStatusEnumTypeTransformer() => _instance ??= VersionStatusEnumTypeTransformer._();

  String encode(VersionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VersionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VersionStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'open': return VersionStatusEnum.open;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [VersionStatusEnumTypeTransformer] instance.
  static VersionStatusEnumTypeTransformer _instance;
}

