//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ShowOrValidateFormRequest {
  /// Returns a new [ShowOrValidateFormRequest] instance.
  ShowOrValidateFormRequest({
    this.type,
    this.lockVersion,
    this.subject,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? lockVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShowOrValidateFormRequest &&
    other.type == type &&
    other.lockVersion == lockVersion &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (lockVersion == null ? 0 : lockVersion!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'ShowOrValidateFormRequest[type=$type, lockVersion=$lockVersion, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.lockVersion != null) {
      json[r'lockVersion'] = this.lockVersion;
    } else {
      json[r'lockVersion'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [ShowOrValidateFormRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShowOrValidateFormRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ShowOrValidateFormRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ShowOrValidateFormRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ShowOrValidateFormRequest(
        type: mapValueOfType<String>(json, r'_type'),
        lockVersion: num.parse('${json[r'lockVersion']}'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<ShowOrValidateFormRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShowOrValidateFormRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShowOrValidateFormRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShowOrValidateFormRequest> mapFromJson(dynamic json) {
    final map = <String, ShowOrValidateFormRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShowOrValidateFormRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShowOrValidateFormRequest-objects as value to a dart map
  static Map<String, List<ShowOrValidateFormRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShowOrValidateFormRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShowOrValidateFormRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

