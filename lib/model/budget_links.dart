//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class BudgetLinks {
  /// Returns a new [BudgetLinks] instance.
  BudgetLinks({
    this.self,
    this.attachments,
    this.addAttachment,
    this.staticPath,
  });

  Link self;

  Link attachments;

  Link addAttachment;

  Link staticPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BudgetLinks &&
     other.self == self &&
     other.attachments == attachments &&
     other.addAttachment == addAttachment &&
     other.staticPath == staticPath;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (addAttachment == null ? 0 : addAttachment.hashCode) +
    (staticPath == null ? 0 : staticPath.hashCode);

  @override
  String toString() => 'BudgetLinks[self=$self, attachments=$attachments, addAttachment=$addAttachment, staticPath=$staticPath]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (addAttachment != null) {
      json[r'addAttachment'] = addAttachment;
    }
    if (staticPath != null) {
      json[r'staticPath'] = staticPath;
    }
    return json;
  }

  /// Returns a new [BudgetLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BudgetLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BudgetLinks(
        self: Link.fromJson(json[r'self']),
        attachments: Link.fromJson(json[r'attachments']),
        addAttachment: Link.fromJson(json[r'addAttachment']),
        staticPath: Link.fromJson(json[r'staticPath']),
    );

  static List<BudgetLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BudgetLinks>[]
      : json.map((v) => BudgetLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, BudgetLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BudgetLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BudgetLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BudgetLinks-objects as value to a dart map
  static Map<String, List<BudgetLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BudgetLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BudgetLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

