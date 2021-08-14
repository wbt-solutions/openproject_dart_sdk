//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Status {
  /// Returns a new [Status] instance.
  Status({
    this.id,
    this.name,
    this.position,
    this.isDefault,
    this.isClosed,
    this.isReadonly,
    this.defaultDoneRatio,
    this.links,
  });

  int id;

  String name;

  int position;

  bool isDefault;

  bool isClosed;

  bool isReadonly;

  int defaultDoneRatio;

  StatusLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Status &&
     other.id == id &&
     other.name == name &&
     other.position == position &&
     other.isDefault == isDefault &&
     other.isClosed == isClosed &&
     other.isReadonly == isReadonly &&
     other.defaultDoneRatio == defaultDoneRatio &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (position == null ? 0 : position.hashCode) +
    (isDefault == null ? 0 : isDefault.hashCode) +
    (isClosed == null ? 0 : isClosed.hashCode) +
    (isReadonly == null ? 0 : isReadonly.hashCode) +
    (defaultDoneRatio == null ? 0 : defaultDoneRatio.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Status[id=$id, name=$name, position=$position, isDefault=$isDefault, isClosed=$isClosed, isReadonly=$isReadonly, defaultDoneRatio=$defaultDoneRatio, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (isDefault != null) {
      json[r'isDefault'] = isDefault;
    }
    if (isClosed != null) {
      json[r'isClosed'] = isClosed;
    }
    if (isReadonly != null) {
      json[r'isReadonly'] = isReadonly;
    }
    if (defaultDoneRatio != null) {
      json[r'defaultDoneRatio'] = defaultDoneRatio;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Status] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Status fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Status(
        id: json[r'id'],
        name: json[r'name'],
        position: json[r'position'],
        isDefault: json[r'isDefault'],
        isClosed: json[r'isClosed'],
        isReadonly: json[r'isReadonly'],
        defaultDoneRatio: json[r'defaultDoneRatio'],
        links: StatusLinks.fromJson(json[r'_links']),
    );

  static List<Status> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Status>[]
      : json.map((dynamic value) => Status.fromJson(value)).toList(growable: true == growable);

  static Map<String, Status> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Status>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Status.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Status-objects as value to a dart map
  static Map<String, List<Status>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Status>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Status.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

