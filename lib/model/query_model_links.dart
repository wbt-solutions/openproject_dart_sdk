//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class QueryModelLinks {
  /// Returns a new [QueryModelLinks] instance.
  QueryModelLinks({
    this.star,
    this.unstar,
    this.update,
    this.updateImmediately,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QueryModelLinksStar? star;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QueryModelLinksUnstar? unstar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QueryModelLinksUpdate? update;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QueryModelLinksUpdateImmediately? updateImmediately;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryModelLinks &&
    other.star == star &&
    other.unstar == unstar &&
    other.update == update &&
    other.updateImmediately == updateImmediately;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (star == null ? 0 : star!.hashCode) +
    (unstar == null ? 0 : unstar!.hashCode) +
    (update == null ? 0 : update!.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode);

  @override
  String toString() => 'QueryModelLinks[star=$star, unstar=$unstar, update=$update, updateImmediately=$updateImmediately]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.star != null) {
      json[r'star'] = this.star;
    } else {
      json[r'star'] = null;
    }
    if (this.unstar != null) {
      json[r'unstar'] = this.unstar;
    } else {
      json[r'unstar'] = null;
    }
    if (this.update != null) {
      json[r'update'] = this.update;
    } else {
      json[r'update'] = null;
    }
    if (this.updateImmediately != null) {
      json[r'updateImmediately'] = this.updateImmediately;
    } else {
      json[r'updateImmediately'] = null;
    }
    return json;
  }

  /// Returns a new [QueryModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryModelLinks(
        star: QueryModelLinksStar.fromJson(json[r'star']),
        unstar: QueryModelLinksUnstar.fromJson(json[r'unstar']),
        update: QueryModelLinksUpdate.fromJson(json[r'update']),
        updateImmediately: QueryModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
      );
    }
    return null;
  }

  static List<QueryModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryModelLinks> mapFromJson(dynamic json) {
    final map = <String, QueryModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryModelLinks-objects as value to a dart map
  static Map<String, List<QueryModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

