//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RootModel {
  /// Returns a new [RootModel] instance.
  RootModel({
    required this.type,
    required this.instanceName,
    this.coreVersion,
    required this.links,
  });

  RootModelTypeEnum type;

  /// The name of the OpenProject instance
  String instanceName;

  /// The OpenProject core version number for the instance  # Conditions  **Permission** requires admin privileges
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coreVersion;

  RootModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RootModel &&
    other.type == type &&
    other.instanceName == instanceName &&
    other.coreVersion == coreVersion &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (instanceName.hashCode) +
    (coreVersion == null ? 0 : coreVersion!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'RootModel[type=$type, instanceName=$instanceName, coreVersion=$coreVersion, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'instanceName'] = this.instanceName;
    if (this.coreVersion != null) {
      json[r'coreVersion'] = this.coreVersion;
    } else {
      json[r'coreVersion'] = null;
    }
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [RootModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RootModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RootModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RootModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RootModel(
        type: RootModelTypeEnum.fromJson(json[r'_type'])!,
        instanceName: mapValueOfType<String>(json, r'instanceName')!,
        coreVersion: mapValueOfType<String>(json, r'coreVersion'),
        links: RootModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<RootModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RootModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RootModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RootModel> mapFromJson(dynamic json) {
    final map = <String, RootModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RootModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RootModel-objects as value to a dart map
  static Map<String, List<RootModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RootModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RootModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'instanceName',
    '_links',
  };
}


class RootModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RootModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const root = RootModelTypeEnum._(r'Root');

  /// List of all possible values in this [enum][RootModelTypeEnum].
  static const values = <RootModelTypeEnum>[
    root,
  ];

  static RootModelTypeEnum? fromJson(dynamic value) => RootModelTypeEnumTypeTransformer().decode(value);

  static List<RootModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RootModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RootModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RootModelTypeEnum] to String,
/// and [decode] dynamic data back to [RootModelTypeEnum].
class RootModelTypeEnumTypeTransformer {
  factory RootModelTypeEnumTypeTransformer() => _instance ??= const RootModelTypeEnumTypeTransformer._();

  const RootModelTypeEnumTypeTransformer._();

  String encode(RootModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RootModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RootModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Root': return RootModelTypeEnum.root;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RootModelTypeEnumTypeTransformer] instance.
  static RootModelTypeEnumTypeTransformer? _instance;
}


