//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class CustomActionModel {
  /// Returns a new [CustomActionModel] instance.
  CustomActionModel({
    this.type,
    this.name,
    this.description,
    this.links,
  });

  CustomActionModelTypeEnum? type;

  /// The name of the custom action
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The description for the custom action
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CustomActionModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomActionModel &&
    other.type == type &&
    other.name == name &&
    other.description == description &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'CustomActionModel[type=$type, name=$name, description=$description, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [CustomActionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomActionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomActionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomActionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomActionModel(
        type: CustomActionModelTypeEnum.fromJson(json[r'_type']),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        links: CustomActionModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<CustomActionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomActionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomActionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomActionModel> mapFromJson(dynamic json) {
    final map = <String, CustomActionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomActionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomActionModel-objects as value to a dart map
  static Map<String, List<CustomActionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomActionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomActionModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class CustomActionModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CustomActionModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const customAction = CustomActionModelTypeEnum._(r'CustomAction');

  /// List of all possible values in this [enum][CustomActionModelTypeEnum].
  static const values = <CustomActionModelTypeEnum>[
    customAction,
  ];

  static CustomActionModelTypeEnum? fromJson(dynamic value) => CustomActionModelTypeEnumTypeTransformer().decode(value);

  static List<CustomActionModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomActionModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomActionModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CustomActionModelTypeEnum] to String,
/// and [decode] dynamic data back to [CustomActionModelTypeEnum].
class CustomActionModelTypeEnumTypeTransformer {
  factory CustomActionModelTypeEnumTypeTransformer() => _instance ??= const CustomActionModelTypeEnumTypeTransformer._();

  const CustomActionModelTypeEnumTypeTransformer._();

  String encode(CustomActionModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CustomActionModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CustomActionModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CustomAction': return CustomActionModelTypeEnum.customAction;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CustomActionModelTypeEnumTypeTransformer] instance.
  static CustomActionModelTypeEnumTypeTransformer? _instance;
}


