//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class GridWidgetModel {
  /// Returns a new [GridWidgetModel] instance.
  GridWidgetModel({
    required this.type,
    required this.id,
    required this.identifier,
    required this.startRow,
    required this.endRow,
    required this.startColumn,
    required this.endColumn,
    this.options,
  });

  GridWidgetModelTypeEnum type;

  /// The grid widget's unique identifier. Can be null, if a new widget is created within a grid.
  ///
  /// Minimum value: 1
  Object? id;

  /// An alternative, human legible, and unique identifier.
  String identifier;

  /// The index of the starting row of the widget. The row is inclusive.
  ///
  /// Minimum value: 1
  int startRow;

  /// The index of the ending row of the widget. The row is exclusive.
  ///
  /// Minimum value: 1
  int endRow;

  /// The index of the starting column of the widget. The column is inclusive.
  ///
  /// Minimum value: 1
  int startColumn;

  /// The index of the ending column of the widget. The column is exclusive.
  ///
  /// Minimum value: 1
  int endColumn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? options;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GridWidgetModel &&
    other.type == type &&
    other.id == id &&
    other.identifier == identifier &&
    other.startRow == startRow &&
    other.endRow == endRow &&
    other.startColumn == startColumn &&
    other.endColumn == endColumn &&
    other.options == options;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (identifier.hashCode) +
    (startRow.hashCode) +
    (endRow.hashCode) +
    (startColumn.hashCode) +
    (endColumn.hashCode) +
    (options == null ? 0 : options!.hashCode);

  @override
  String toString() => 'GridWidgetModel[type=$type, id=$id, identifier=$identifier, startRow=$startRow, endRow=$endRow, startColumn=$startColumn, endColumn=$endColumn, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'identifier'] = this.identifier;
      json[r'startRow'] = this.startRow;
      json[r'endRow'] = this.endRow;
      json[r'startColumn'] = this.startColumn;
      json[r'endColumn'] = this.endColumn;
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    return json;
  }

  /// Returns a new [GridWidgetModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GridWidgetModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GridWidgetModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GridWidgetModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GridWidgetModel(
        type: GridWidgetModelTypeEnum.fromJson(json[r'_type'])!,
        id: mapValueOfType<Object>(json, r'id'),
        identifier: mapValueOfType<String>(json, r'identifier')!,
        startRow: mapValueOfType<int>(json, r'startRow')!,
        endRow: mapValueOfType<int>(json, r'endRow')!,
        startColumn: mapValueOfType<int>(json, r'startColumn')!,
        endColumn: mapValueOfType<int>(json, r'endColumn')!,
        options: mapValueOfType<Object>(json, r'options'),
      );
    }
    return null;
  }

  static List<GridWidgetModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridWidgetModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridWidgetModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GridWidgetModel> mapFromJson(dynamic json) {
    final map = <String, GridWidgetModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GridWidgetModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GridWidgetModel-objects as value to a dart map
  static Map<String, List<GridWidgetModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GridWidgetModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GridWidgetModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'identifier',
    'startRow',
    'endRow',
    'startColumn',
    'endColumn',
  };
}


class GridWidgetModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GridWidgetModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const gridWidget = GridWidgetModelTypeEnum._(r'GridWidget');

  /// List of all possible values in this [enum][GridWidgetModelTypeEnum].
  static const values = <GridWidgetModelTypeEnum>[
    gridWidget,
  ];

  static GridWidgetModelTypeEnum? fromJson(dynamic value) => GridWidgetModelTypeEnumTypeTransformer().decode(value);

  static List<GridWidgetModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GridWidgetModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GridWidgetModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GridWidgetModelTypeEnum] to String,
/// and [decode] dynamic data back to [GridWidgetModelTypeEnum].
class GridWidgetModelTypeEnumTypeTransformer {
  factory GridWidgetModelTypeEnumTypeTransformer() => _instance ??= const GridWidgetModelTypeEnumTypeTransformer._();

  const GridWidgetModelTypeEnumTypeTransformer._();

  String encode(GridWidgetModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GridWidgetModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GridWidgetModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GridWidget': return GridWidgetModelTypeEnum.gridWidget;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GridWidgetModelTypeEnumTypeTransformer] instance.
  static GridWidgetModelTypeEnumTypeTransformer? _instance;
}


