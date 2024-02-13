//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RelationModelLinks {
  /// Returns a new [RelationModelLinks] instance.
  RelationModelLinks({
    this.update,
    this.updateImmediately,
    this.delete,
    required this.self,
    required this.schema,
    required this.from,
    required this.to,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RelationModelLinksUpdate? update;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RelationModelLinksUpdateImmediately? updateImmediately;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RelationModelLinksDelete? delete;

  RelationModelLinksSelf self;

  RelationModelLinksSchema schema;

  RelationModelLinksFrom from;

  RelationModelLinksTo to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RelationModelLinks &&
    other.update == update &&
    other.updateImmediately == updateImmediately &&
    other.delete == delete &&
    other.self == self &&
    other.schema == schema &&
    other.from == from &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (update == null ? 0 : update!.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (self.hashCode) +
    (schema.hashCode) +
    (from.hashCode) +
    (to.hashCode);

  @override
  String toString() => 'RelationModelLinks[update=$update, updateImmediately=$updateImmediately, delete=$delete, self=$self, schema=$schema, from=$from, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
      json[r'self'] = this.self;
      json[r'schema'] = this.schema;
      json[r'from'] = this.from;
      json[r'to'] = this.to;
    return json;
  }

  /// Returns a new [RelationModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RelationModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RelationModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RelationModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RelationModelLinks(
        update: RelationModelLinksUpdate.fromJson(json[r'update']),
        updateImmediately: RelationModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        delete: RelationModelLinksDelete.fromJson(json[r'delete']),
        self: RelationModelLinksSelf.fromJson(json[r'self'])!,
        schema: RelationModelLinksSchema.fromJson(json[r'schema'])!,
        from: RelationModelLinksFrom.fromJson(json[r'from'])!,
        to: RelationModelLinksTo.fromJson(json[r'to'])!,
      );
    }
    return null;
  }

  static List<RelationModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RelationModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RelationModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RelationModelLinks> mapFromJson(dynamic json) {
    final map = <String, RelationModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RelationModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RelationModelLinks-objects as value to a dart map
  static Map<String, List<RelationModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RelationModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RelationModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'schema',
    'from',
    'to',
  };
}

