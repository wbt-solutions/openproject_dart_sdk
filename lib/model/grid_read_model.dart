//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class GridReadModel {
  /// Returns a new [GridReadModel] instance.
  GridReadModel({
    required this.type,
    required this.id,
    required this.rowCount,
    required this.columnCount,
    this.widgets = const [],
    this.createdAt,
    this.updatedAt,
    required this.links,
  });

  GridReadModelTypeEnum type;

  /// Grid's id
  ///
  /// Minimum value: 1
  int id;

  /// The number of rows the grid has
  ///
  /// Minimum value: 1
  int rowCount;

  /// The number of columns the grid has
  ///
  /// Minimum value: 1
  int columnCount;

  /// The set of `GridWidget`s selected for the grid.  # Conditions  - The widgets must not overlap.
  List<GridWidgetModel> widgets;

  /// The time the grid was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// The time the grid was last updated.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  GridReadModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GridReadModel &&
    other.type == type &&
    other.id == id &&
    other.rowCount == rowCount &&
    other.columnCount == columnCount &&
    _deepEquality.equals(other.widgets, widgets) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode) +
    (rowCount.hashCode) +
    (columnCount.hashCode) +
    (widgets.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'GridReadModel[type=$type, id=$id, rowCount=$rowCount, columnCount=$columnCount, widgets=$widgets, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'id'] = this.id;
      json[r'rowCount'] = this.rowCount;
      json[r'columnCount'] = this.columnCount;
      json[r'widgets'] = this.widgets;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [GridReadModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GridReadModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GridReadModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GridReadModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GridReadModel(
        type: GridReadModelTypeEnum.fromJson(json[r'_type'])!,
        id: mapValueOfType<int>(json, r'id')!,
        rowCount: mapValueOfType<int>(json, r'rowCount')!,
        columnCount: mapValueOfType<int>(json, r'columnCount')!,
        widgets: GridWidgetModel.listFromJson(json[r'widgets']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: GridReadModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<GridReadModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridReadModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridReadModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GridReadModel> mapFromJson(dynamic json) {
    final map = <String, GridReadModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GridReadModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GridReadModel-objects as value to a dart map
  static Map<String, List<GridReadModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GridReadModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GridReadModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'rowCount',
    'columnCount',
    'widgets',
    '_links',
  };
}


class GridReadModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GridReadModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const grid = GridReadModelTypeEnum._(r'Grid');

  /// List of all possible values in this [enum][GridReadModelTypeEnum].
  static const values = <GridReadModelTypeEnum>[
    grid,
  ];

  static GridReadModelTypeEnum? fromJson(dynamic value) => GridReadModelTypeEnumTypeTransformer().decode(value);

  static List<GridReadModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridReadModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridReadModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GridReadModelTypeEnum] to String,
/// and [decode] dynamic data back to [GridReadModelTypeEnum].
class GridReadModelTypeEnumTypeTransformer {
  factory GridReadModelTypeEnumTypeTransformer() => _instance ??= const GridReadModelTypeEnumTypeTransformer._();

  const GridReadModelTypeEnumTypeTransformer._();

  String encode(GridReadModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GridReadModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GridReadModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Grid': return GridReadModelTypeEnum.grid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GridReadModelTypeEnumTypeTransformer] instance.
  static GridReadModelTypeEnumTypeTransformer? _instance;
}


