//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipFormModelEmbedded {
  /// Returns a new [MembershipFormModelEmbedded] instance.
  MembershipFormModelEmbedded({
    required this.payload,
    required this.schema,
    required this.validationError,
  });

  MembershipWriteModel payload;

  MembershipSchemaModel schema;

  MembershipFormModelEmbeddedValidationError validationError;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipFormModelEmbedded &&
    other.payload == payload &&
    other.schema == schema &&
    other.validationError == validationError;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (payload.hashCode) +
    (schema.hashCode) +
    (validationError.hashCode);

  @override
  String toString() => 'MembershipFormModelEmbedded[payload=$payload, schema=$schema, validationError=$validationError]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'payload'] = this.payload;
      json[r'schema'] = this.schema;
      json[r'validationError'] = this.validationError;
    return json;
  }

  /// Returns a new [MembershipFormModelEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipFormModelEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipFormModelEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipFormModelEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipFormModelEmbedded(
        payload: MembershipWriteModel.fromJson(json[r'payload'])!,
        schema: MembershipSchemaModel.fromJson(json[r'schema'])!,
        validationError: MembershipFormModelEmbeddedValidationError.fromJson(json[r'validationError'])!,
      );
    }
    return null;
  }

  static List<MembershipFormModelEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipFormModelEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipFormModelEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipFormModelEmbedded> mapFromJson(dynamic json) {
    final map = <String, MembershipFormModelEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipFormModelEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipFormModelEmbedded-objects as value to a dart map
  static Map<String, List<MembershipFormModelEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipFormModelEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipFormModelEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'payload',
    'schema',
    'validationError',
  };
}

