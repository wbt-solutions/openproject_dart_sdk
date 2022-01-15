//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Priority {
  /// Returns a new [Priority] instance.
  Priority({
    this.id,
    this.name,
    this.position,
    this.isDefault,
    this.isActive,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PriorityLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Priority &&
     other.id == id &&
     other.name == name &&
     other.position == position &&
     other.isDefault == isDefault &&
     other.isActive == isActive &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'Priority[id=$id, name=$name, position=$position, isDefault=$isDefault, isActive=$isActive, links=$links]';

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
    if (isActive != null) {
      json[r'isActive'] = isActive;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Priority] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Priority? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Priority[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Priority[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Priority(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        position: mapValueOfType<int>(json, r'position'),
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
        isActive: mapValueOfType<bool>(json, r'isActive'),
        links: PriorityLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<Priority>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Priority>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Priority.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Priority> mapFromJson(dynamic json) {
    final map = <String, Priority>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Priority.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Priority-objects as value to a dart map
  static Map<String, List<Priority>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Priority>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Priority.listFromJson(entry.value, growable: growable,);
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

