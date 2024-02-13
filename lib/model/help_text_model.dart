//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class HelpTextModel {
  /// Returns a new [HelpTextModel] instance.
  HelpTextModel({
    required this.type,
    required this.id,
    required this.attribute,
    required this.scope,
    required this.helpText,
    required this.links,
  });

  HelpTextModelTypeEnum type;

  /// Minimum value: 1
  int id;

  /// The attribute the help text is assigned to.
  String attribute;

  HelpTextModelScopeEnum scope;

  Formattable helpText;

  HelpTextModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HelpTextModel &&
    other.type == type &&
    other.id == id &&
    other.attribute == attribute &&
    other.scope == scope &&
    other.helpText == helpText &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode) +
    (attribute.hashCode) +
    (scope.hashCode) +
    (helpText.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'HelpTextModel[type=$type, id=$id, attribute=$attribute, scope=$scope, helpText=$helpText, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'id'] = this.id;
      json[r'attribute'] = this.attribute;
      json[r'scope'] = this.scope;
      json[r'helpText'] = this.helpText;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [HelpTextModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HelpTextModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HelpTextModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HelpTextModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HelpTextModel(
        type: HelpTextModelTypeEnum.fromJson(json[r'_type'])!,
        id: mapValueOfType<int>(json, r'id')!,
        attribute: mapValueOfType<String>(json, r'attribute')!,
        scope: HelpTextModelScopeEnum.fromJson(json[r'scope'])!,
        helpText: Formattable.fromJson(json[r'helpText'])!,
        links: HelpTextModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<HelpTextModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HelpTextModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HelpTextModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HelpTextModel> mapFromJson(dynamic json) {
    final map = <String, HelpTextModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HelpTextModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HelpTextModel-objects as value to a dart map
  static Map<String, List<HelpTextModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HelpTextModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HelpTextModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'attribute',
    'scope',
    'helpText',
    '_links',
  };
}


class HelpTextModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const HelpTextModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const helpText = HelpTextModelTypeEnum._(r'HelpText');

  /// List of all possible values in this [enum][HelpTextModelTypeEnum].
  static const values = <HelpTextModelTypeEnum>[
    helpText,
  ];

  static HelpTextModelTypeEnum? fromJson(dynamic value) => HelpTextModelTypeEnumTypeTransformer().decode(value);

  static List<HelpTextModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HelpTextModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HelpTextModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HelpTextModelTypeEnum] to String,
/// and [decode] dynamic data back to [HelpTextModelTypeEnum].
class HelpTextModelTypeEnumTypeTransformer {
  factory HelpTextModelTypeEnumTypeTransformer() => _instance ??= const HelpTextModelTypeEnumTypeTransformer._();

  const HelpTextModelTypeEnumTypeTransformer._();

  String encode(HelpTextModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HelpTextModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HelpTextModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HelpText': return HelpTextModelTypeEnum.helpText;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HelpTextModelTypeEnumTypeTransformer] instance.
  static HelpTextModelTypeEnumTypeTransformer? _instance;
}



class HelpTextModelScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const HelpTextModelScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const workPackage = HelpTextModelScopeEnum._(r'WorkPackage');
  static const project = HelpTextModelScopeEnum._(r'Project');

  /// List of all possible values in this [enum][HelpTextModelScopeEnum].
  static const values = <HelpTextModelScopeEnum>[
    workPackage,
    project,
  ];

  static HelpTextModelScopeEnum? fromJson(dynamic value) => HelpTextModelScopeEnumTypeTransformer().decode(value);

  static List<HelpTextModelScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HelpTextModelScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HelpTextModelScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HelpTextModelScopeEnum] to String,
/// and [decode] dynamic data back to [HelpTextModelScopeEnum].
class HelpTextModelScopeEnumTypeTransformer {
  factory HelpTextModelScopeEnumTypeTransformer() => _instance ??= const HelpTextModelScopeEnumTypeTransformer._();

  const HelpTextModelScopeEnumTypeTransformer._();

  String encode(HelpTextModelScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HelpTextModelScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HelpTextModelScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WorkPackage': return HelpTextModelScopeEnum.workPackage;
        case r'Project': return HelpTextModelScopeEnum.project;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HelpTextModelScopeEnumTypeTransformer] instance.
  static HelpTextModelScopeEnumTypeTransformer? _instance;
}


