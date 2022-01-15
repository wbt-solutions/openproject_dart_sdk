//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StatusesEmbedded {
  /// Returns a new [StatusesEmbedded] instance.
  StatusesEmbedded({
    this.elements = const [],
  });

  List<Status> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusesEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elements.hashCode);

  @override
  String toString() => 'StatusesEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'elements'] = elements;
    return json;
  }

  /// Returns a new [StatusesEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatusesEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatusesEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatusesEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatusesEmbedded(
        elements: Status.listFromJson(json[r'elements']) ?? const [],
      );
    }
    return null;
  }

  static List<StatusesEmbedded>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusesEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusesEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatusesEmbedded> mapFromJson(dynamic json) {
    final map = <String, StatusesEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusesEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatusesEmbedded-objects as value to a dart map
  static Map<String, List<StatusesEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatusesEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusesEmbedded.listFromJson(entry.value, growable: growable,);
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

