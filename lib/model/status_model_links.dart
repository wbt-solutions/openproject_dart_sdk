//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StatusModelLinks {
  /// Returns a new [StatusModelLinks] instance.
  StatusModelLinks({
    required this.self,
  });

  StatusModelLinksSelf self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusModelLinks &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode);

  @override
  String toString() => 'StatusModelLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    return json;
  }

  /// Returns a new [StatusModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatusModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatusModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatusModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatusModelLinks(
        self: StatusModelLinksSelf.fromJson(json[r'self'])!,
      );
    }
    return null;
  }

  static List<StatusModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatusModelLinks> mapFromJson(dynamic json) {
    final map = <String, StatusModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatusModelLinks-objects as value to a dart map
  static Map<String, List<StatusModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatusModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatusModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
  };
}

