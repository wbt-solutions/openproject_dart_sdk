//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Budget {
  /// Returns a new [Budget] instance.
  Budget({
    this.id,
    this.subject,
    this.links,
  });

  int id;

  String subject;

  BudgetLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Budget &&
     other.id == id &&
     other.subject == subject &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Budget[id=$id, subject=$subject, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Budget] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Budget fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Budget(
        id: json[r'id'],
        subject: json[r'subject'],
        links: BudgetLinks.fromJson(json[r'_links']),
    );

  static List<Budget> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Budget>[]
      : json.map((v) => Budget.fromJson(v)).toList(growable: true == growable);

  static Map<String, Budget> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Budget>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Budget.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Budget-objects as value to a dart map
  static Map<String, List<Budget>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Budget>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Budget.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

