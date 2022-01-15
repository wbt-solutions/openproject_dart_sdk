//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? attachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? addAttachment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? staticPath;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BudgetLinks &&
     other.self == self &&
     other.attachments == attachments &&
     other.addAttachment == addAttachment &&
     other.staticPath == staticPath;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (addAttachment == null ? 0 : addAttachment!.hashCode) +
    (staticPath == null ? 0 : staticPath!.hashCode);

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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BudgetLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BudgetLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BudgetLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BudgetLinks(
        self: Link.fromJson(json[r'self']),
        attachments: Link.fromJson(json[r'attachments']),
        addAttachment: Link.fromJson(json[r'addAttachment']),
        staticPath: Link.fromJson(json[r'staticPath']),
      );
    }
    return null;
  }

  static List<BudgetLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BudgetLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BudgetLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BudgetLinks> mapFromJson(dynamic json) {
    final map = <String, BudgetLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BudgetLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BudgetLinks-objects as value to a dart map
  static Map<String, List<BudgetLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BudgetLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BudgetLinks.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

