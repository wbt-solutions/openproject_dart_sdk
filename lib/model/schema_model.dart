//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class SchemaModel {
  /// Returns a new [SchemaModel] instance.
  SchemaModel({
    required this.type,
    this.dependencies = const [],
    required this.links,
  });

  SchemaModelTypeEnum type;

  /// A list of dependencies between one property's value and another property
  List<String> dependencies;

  SchemaModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SchemaModel &&
    other.type == type &&
    _deepEquality.equals(other.dependencies, dependencies) &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (dependencies.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'SchemaModel[type=$type, dependencies=$dependencies, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'_dependencies'] = this.dependencies;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [SchemaModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SchemaModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SchemaModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SchemaModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SchemaModel(
        type: SchemaModelTypeEnum.fromJson(json[r'_type'])!,
        dependencies: json[r'_dependencies'] is Iterable
            ? (json[r'_dependencies'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        links: SchemaModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<SchemaModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SchemaModel> mapFromJson(dynamic json) {
    final map = <String, SchemaModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SchemaModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SchemaModel-objects as value to a dart map
  static Map<String, List<SchemaModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SchemaModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SchemaModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    '_links',
  };
}


class SchemaModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SchemaModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const schema = SchemaModelTypeEnum._(r'Schema');

  /// List of all possible values in this [enum][SchemaModelTypeEnum].
  static const values = <SchemaModelTypeEnum>[
    schema,
  ];

  static SchemaModelTypeEnum? fromJson(dynamic value) => SchemaModelTypeEnumTypeTransformer().decode(value);

  static List<SchemaModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SchemaModelTypeEnum] to String,
/// and [decode] dynamic data back to [SchemaModelTypeEnum].
class SchemaModelTypeEnumTypeTransformer {
  factory SchemaModelTypeEnumTypeTransformer() => _instance ??= const SchemaModelTypeEnumTypeTransformer._();

  const SchemaModelTypeEnumTypeTransformer._();

  String encode(SchemaModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SchemaModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SchemaModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Schema': return SchemaModelTypeEnum.schema;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SchemaModelTypeEnumTypeTransformer] instance.
  static SchemaModelTypeEnumTypeTransformer? _instance;
}


