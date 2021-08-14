//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class InlineObject1 {
  /// Returns a new [InlineObject1] instance.
  InlineObject1({
    this.lockVersion,
    this.type,
    this.subject,
  });

  num lockVersion;

  String type;

  String subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject1 &&
     other.lockVersion == lockVersion &&
     other.type == type &&
     other.subject == subject;

  @override
  int get hashCode =>
    (lockVersion == null ? 0 : lockVersion.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (subject == null ? 0 : subject.hashCode);

  @override
  String toString() => 'InlineObject1[lockVersion=$lockVersion, type=$type, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lockVersion != null) {
      json[r'lockVersion'] = lockVersion;
    }
    if (type != null) {
      json[r'_type'] = type;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    return json;
  }

  /// Returns a new [InlineObject1] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject1 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject1(
        lockVersion: json[r'lockVersion'] == null ?
          null :
          json[r'lockVersion'].toDouble(),
        type: json[r'_type'],
        subject: json[r'subject'],
    );

  static List<InlineObject1> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject1>[]
      : json.map((dynamic value) => InlineObject1.fromJson(value)).toList(growable: true == growable);

  static Map<String, InlineObject1> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject1>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = InlineObject1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject1-objects as value to a dart map
  static Map<String, List<InlineObject1>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject1>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = InlineObject1.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

