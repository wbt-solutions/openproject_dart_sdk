//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipReadModel {
  /// Returns a new [MembershipReadModel] instance.
  MembershipReadModel({
    required this.type,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.embedded,
    required this.links,
  });

  MembershipReadModelTypeEnum type;

  /// The membership's id
  ///
  /// Minimum value: 1
  int id;

  /// The time the membership was created.
  DateTime createdAt;

  /// The time the membership was last updated.
  DateTime updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MembershipReadModelEmbedded? embedded;

  MembershipReadModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipReadModel &&
    other.type == type &&
    other.id == id &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.embedded == embedded &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (embedded == null ? 0 : embedded!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'MembershipReadModel[type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'id'] = this.id;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.embedded != null) {
      json[r'_embedded'] = this.embedded;
    } else {
      json[r'_embedded'] = null;
    }
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [MembershipReadModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipReadModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipReadModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipReadModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipReadModel(
        type: MembershipReadModelTypeEnum.fromJson(json[r'_type'])!,
        id: mapValueOfType<int>(json, r'id')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        embedded: MembershipReadModelEmbedded.fromJson(json[r'_embedded']),
        links: MembershipReadModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<MembershipReadModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipReadModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipReadModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipReadModel> mapFromJson(dynamic json) {
    final map = <String, MembershipReadModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipReadModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipReadModel-objects as value to a dart map
  static Map<String, List<MembershipReadModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipReadModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipReadModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'createdAt',
    'updatedAt',
    '_links',
  };
}


class MembershipReadModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MembershipReadModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const membership = MembershipReadModelTypeEnum._(r'Membership');

  /// List of all possible values in this [enum][MembershipReadModelTypeEnum].
  static const values = <MembershipReadModelTypeEnum>[
    membership,
  ];

  static MembershipReadModelTypeEnum? fromJson(dynamic value) => MembershipReadModelTypeEnumTypeTransformer().decode(value);

  static List<MembershipReadModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipReadModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipReadModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MembershipReadModelTypeEnum] to String,
/// and [decode] dynamic data back to [MembershipReadModelTypeEnum].
class MembershipReadModelTypeEnumTypeTransformer {
  factory MembershipReadModelTypeEnumTypeTransformer() => _instance ??= const MembershipReadModelTypeEnumTypeTransformer._();

  const MembershipReadModelTypeEnumTypeTransformer._();

  String encode(MembershipReadModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MembershipReadModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MembershipReadModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Membership': return MembershipReadModelTypeEnum.membership;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MembershipReadModelTypeEnumTypeTransformer] instance.
  static MembershipReadModelTypeEnumTypeTransformer? _instance;
}


