//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipWriteModel {
  /// Returns a new [MembershipWriteModel] instance.
  MembershipWriteModel({
    required this.links,
    this.meta,
  });

  MembershipWriteModelLinks links;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MembershipWriteModelMeta? meta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipWriteModel &&
    other.links == links &&
    other.meta == meta;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (links.hashCode) +
    (meta == null ? 0 : meta!.hashCode);

  @override
  String toString() => 'MembershipWriteModel[links=$links, meta=$meta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_links'] = this.links;
    if (this.meta != null) {
      json[r'_meta'] = this.meta;
    } else {
      json[r'_meta'] = null;
    }
    return json;
  }

  /// Returns a new [MembershipWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipWriteModel(
        links: MembershipWriteModelLinks.fromJson(json[r'_links'])!,
        meta: MembershipWriteModelMeta.fromJson(json[r'_meta']),
      );
    }
    return null;
  }

  static List<MembershipWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipWriteModel> mapFromJson(dynamic json) {
    final map = <String, MembershipWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipWriteModel-objects as value to a dart map
  static Map<String, List<MembershipWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_links',
  };
}

