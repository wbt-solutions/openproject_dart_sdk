//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StatusModel {
  /// Returns a new [StatusModel] instance.
  StatusModel({
    this.type,
    this.id,
    this.name,
    this.position,
    this.isDefault,
    this.isClosed,
    this.isReadonly,
    this.defaultDoneRatio,
    this.links,
  });

  StatusModelTypeEnum? type;

  /// Status id
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Status name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Sort index of the status
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

  /// are tickets of this status considered closed?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isClosed;

  /// are tickets of this status read only?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReadonly;

  /// The percentageDone being applied when changing to this status
  ///
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? defaultDoneRatio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StatusModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusModel &&
    other.type == type &&
    other.id == id &&
    other.name == name &&
    other.position == position &&
    other.isDefault == isDefault &&
    other.isClosed == isClosed &&
    other.isReadonly == isReadonly &&
    other.defaultDoneRatio == defaultDoneRatio &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (isClosed == null ? 0 : isClosed!.hashCode) +
    (isReadonly == null ? 0 : isReadonly!.hashCode) +
    (defaultDoneRatio == null ? 0 : defaultDoneRatio!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'StatusModel[type=$type, id=$id, name=$name, position=$position, isDefault=$isDefault, isClosed=$isClosed, isReadonly=$isReadonly, defaultDoneRatio=$defaultDoneRatio, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    if (this.isClosed != null) {
      json[r'isClosed'] = this.isClosed;
    } else {
      json[r'isClosed'] = null;
    }
    if (this.isReadonly != null) {
      json[r'isReadonly'] = this.isReadonly;
    } else {
      json[r'isReadonly'] = null;
    }
    if (this.defaultDoneRatio != null) {
      json[r'defaultDoneRatio'] = this.defaultDoneRatio;
    } else {
      json[r'defaultDoneRatio'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [StatusModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatusModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatusModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatusModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatusModel(
        type: StatusModelTypeEnum.fromJson(json[r'_type']),
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        position: mapValueOfType<int>(json, r'position'),
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
        isClosed: mapValueOfType<bool>(json, r'isClosed'),
        isReadonly: mapValueOfType<bool>(json, r'isReadonly'),
        defaultDoneRatio: mapValueOfType<int>(json, r'defaultDoneRatio'),
        links: StatusModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<StatusModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatusModel> mapFromJson(dynamic json) {
    final map = <String, StatusModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatusModel-objects as value to a dart map
  static Map<String, List<StatusModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatusModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatusModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class StatusModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StatusModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const status = StatusModelTypeEnum._(r'Status');

  /// List of all possible values in this [enum][StatusModelTypeEnum].
  static const values = <StatusModelTypeEnum>[
    status,
  ];

  static StatusModelTypeEnum? fromJson(dynamic value) => StatusModelTypeEnumTypeTransformer().decode(value);

  static List<StatusModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StatusModelTypeEnum] to String,
/// and [decode] dynamic data back to [StatusModelTypeEnum].
class StatusModelTypeEnumTypeTransformer {
  factory StatusModelTypeEnumTypeTransformer() => _instance ??= const StatusModelTypeEnumTypeTransformer._();

  const StatusModelTypeEnumTypeTransformer._();

  String encode(StatusModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StatusModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StatusModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Status': return StatusModelTypeEnum.status;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StatusModelTypeEnumTypeTransformer] instance.
  static StatusModelTypeEnumTypeTransformer? _instance;
}


