//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class GridReadModelLinks {
  /// Returns a new [GridReadModelLinks] instance.
  GridReadModelLinks({
    required this.self,
    this.attachments,
    this.addAttachment,
    required this.scope,
    this.updateImmediately,
    this.update,
    this.delete,
  });

  GridReadModelLinksSelf self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GridReadModelLinksAttachments? attachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GridReadModelLinksAddAttachment? addAttachment;

  GridReadModelLinksScope scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GridReadModelLinksUpdateImmediately? updateImmediately;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GridReadModelLinksUpdate? update;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GridReadModelLinksDelete? delete;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GridReadModelLinks &&
    other.self == self &&
    other.attachments == attachments &&
    other.addAttachment == addAttachment &&
    other.scope == scope &&
    other.updateImmediately == updateImmediately &&
    other.update == update &&
    other.delete == delete;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (addAttachment == null ? 0 : addAttachment!.hashCode) +
    (scope.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (update == null ? 0 : update!.hashCode) +
    (delete == null ? 0 : delete!.hashCode);

  @override
  String toString() => 'GridReadModelLinks[self=$self, attachments=$attachments, addAttachment=$addAttachment, scope=$scope, updateImmediately=$updateImmediately, update=$update, delete=$delete]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.addAttachment != null) {
      json[r'addAttachment'] = this.addAttachment;
    } else {
      json[r'addAttachment'] = null;
    }
      json[r'scope'] = this.scope;
    if (this.updateImmediately != null) {
      json[r'updateImmediately'] = this.updateImmediately;
    } else {
      json[r'updateImmediately'] = null;
    }
    if (this.update != null) {
      json[r'update'] = this.update;
    } else {
      json[r'update'] = null;
    }
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    return json;
  }

  /// Returns a new [GridReadModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GridReadModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GridReadModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GridReadModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GridReadModelLinks(
        self: GridReadModelLinksSelf.fromJson(json[r'self'])!,
        attachments: GridReadModelLinksAttachments.fromJson(json[r'attachments']),
        addAttachment: GridReadModelLinksAddAttachment.fromJson(json[r'addAttachment']),
        scope: GridReadModelLinksScope.fromJson(json[r'scope'])!,
        updateImmediately: GridReadModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        update: GridReadModelLinksUpdate.fromJson(json[r'update']),
        delete: GridReadModelLinksDelete.fromJson(json[r'delete']),
      );
    }
    return null;
  }

  static List<GridReadModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridReadModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridReadModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GridReadModelLinks> mapFromJson(dynamic json) {
    final map = <String, GridReadModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GridReadModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GridReadModelLinks-objects as value to a dart map
  static Map<String, List<GridReadModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GridReadModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GridReadModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'scope',
  };
}

