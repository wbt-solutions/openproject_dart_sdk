//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class GridWriteModel {
  /// Returns a new [GridWriteModel] instance.
  GridWriteModel({
    this.rowCount,
    this.columnCount,
    this.widgets = const [],
    this.links,
  });

  /// The number of rows the grid has
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rowCount;

  /// The number of columns the grid has
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? columnCount;

  /// The set of `GridWidget`s selected for the grid.  # Conditions  - The widgets must not overlap.
  List<GridWidgetModel> widgets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GridWriteModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GridWriteModel &&
    other.rowCount == rowCount &&
    other.columnCount == columnCount &&
    _deepEquality.equals(other.widgets, widgets) &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rowCount == null ? 0 : rowCount!.hashCode) +
    (columnCount == null ? 0 : columnCount!.hashCode) +
    (widgets.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'GridWriteModel[rowCount=$rowCount, columnCount=$columnCount, widgets=$widgets, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.rowCount != null) {
      json[r'rowCount'] = this.rowCount;
    } else {
      json[r'rowCount'] = null;
    }
    if (this.columnCount != null) {
      json[r'columnCount'] = this.columnCount;
    } else {
      json[r'columnCount'] = null;
    }
      json[r'widgets'] = this.widgets;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [GridWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GridWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GridWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GridWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GridWriteModel(
        rowCount: mapValueOfType<int>(json, r'rowCount'),
        columnCount: mapValueOfType<int>(json, r'columnCount'),
        widgets: GridWidgetModel.listFromJson(json[r'widgets']),
        links: GridWriteModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<GridWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GridWriteModel> mapFromJson(dynamic json) {
    final map = <String, GridWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GridWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GridWriteModel-objects as value to a dart map
  static Map<String, List<GridWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GridWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GridWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

