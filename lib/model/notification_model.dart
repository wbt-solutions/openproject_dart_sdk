//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NotificationModel {
  /// Returns a new [NotificationModel] instance.
  NotificationModel({
    this.type,
    this.id,
    this.reason,
    this.readIAN,
    this.details = const [],
    this.createdAt,
    this.updatedAt,
    this.embedded,
    this.links,
  });

  NotificationModelTypeEnum? type;

  /// Notification id
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The reason for the notification
  NotificationModelReasonEnum? reason;

  /// Whether the notification is marked as read
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readIAN;

  /// A list of objects including detailed information about the notification.
  List<NotificationModelDetailsInner> details;

  /// The time the notification was created at
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// The time the notification was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NotificationModelEmbedded? embedded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NotificationModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationModel &&
    other.type == type &&
    other.id == id &&
    other.reason == reason &&
    other.readIAN == readIAN &&
    _deepEquality.equals(other.details, details) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.embedded == embedded &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (readIAN == null ? 0 : readIAN!.hashCode) +
    (details.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (embedded == null ? 0 : embedded!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'NotificationModel[type=$type, id=$id, reason=$reason, readIAN=$readIAN, details=$details, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, links=$links]';

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
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.readIAN != null) {
      json[r'readIAN'] = this.readIAN;
    } else {
      json[r'readIAN'] = null;
    }
      json[r'details'] = this.details;
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
    if (this.embedded != null) {
      json[r'_embedded'] = this.embedded;
    } else {
      json[r'_embedded'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationModel(
        type: NotificationModelTypeEnum.fromJson(json[r'_type']),
        id: mapValueOfType<int>(json, r'id'),
        reason: NotificationModelReasonEnum.fromJson(json[r'reason']),
        readIAN: mapValueOfType<bool>(json, r'readIAN'),
        details: NotificationModelDetailsInner.listFromJson(json[r'details']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        embedded: NotificationModelEmbedded.fromJson(json[r'_embedded']),
        links: NotificationModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<NotificationModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationModel> mapFromJson(dynamic json) {
    final map = <String, NotificationModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationModel-objects as value to a dart map
  static Map<String, List<NotificationModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class NotificationModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notification = NotificationModelTypeEnum._(r'Notification');

  /// List of all possible values in this [enum][NotificationModelTypeEnum].
  static const values = <NotificationModelTypeEnum>[
    notification,
  ];

  static NotificationModelTypeEnum? fromJson(dynamic value) => NotificationModelTypeEnumTypeTransformer().decode(value);

  static List<NotificationModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationModelTypeEnum] to String,
/// and [decode] dynamic data back to [NotificationModelTypeEnum].
class NotificationModelTypeEnumTypeTransformer {
  factory NotificationModelTypeEnumTypeTransformer() => _instance ??= const NotificationModelTypeEnumTypeTransformer._();

  const NotificationModelTypeEnumTypeTransformer._();

  String encode(NotificationModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Notification': return NotificationModelTypeEnum.notification;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationModelTypeEnumTypeTransformer] instance.
  static NotificationModelTypeEnumTypeTransformer? _instance;
}


/// The reason for the notification
class NotificationModelReasonEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationModelReasonEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const assigned = NotificationModelReasonEnum._(r'assigned');
  static const commented = NotificationModelReasonEnum._(r'commented');
  static const created = NotificationModelReasonEnum._(r'created');
  static const dateAlert = NotificationModelReasonEnum._(r'dateAlert');
  static const mentioned = NotificationModelReasonEnum._(r'mentioned');
  static const prioritized = NotificationModelReasonEnum._(r'prioritized');
  static const processed = NotificationModelReasonEnum._(r'processed');
  static const responsible = NotificationModelReasonEnum._(r'responsible');
  static const subscribed = NotificationModelReasonEnum._(r'subscribed');
  static const scheduled = NotificationModelReasonEnum._(r'scheduled');
  static const watched = NotificationModelReasonEnum._(r'watched');

  /// List of all possible values in this [enum][NotificationModelReasonEnum].
  static const values = <NotificationModelReasonEnum>[
    assigned,
    commented,
    created,
    dateAlert,
    mentioned,
    prioritized,
    processed,
    responsible,
    subscribed,
    scheduled,
    watched,
  ];

  static NotificationModelReasonEnum? fromJson(dynamic value) => NotificationModelReasonEnumTypeTransformer().decode(value);

  static List<NotificationModelReasonEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModelReasonEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModelReasonEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationModelReasonEnum] to String,
/// and [decode] dynamic data back to [NotificationModelReasonEnum].
class NotificationModelReasonEnumTypeTransformer {
  factory NotificationModelReasonEnumTypeTransformer() => _instance ??= const NotificationModelReasonEnumTypeTransformer._();

  const NotificationModelReasonEnumTypeTransformer._();

  String encode(NotificationModelReasonEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationModelReasonEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationModelReasonEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'assigned': return NotificationModelReasonEnum.assigned;
        case r'commented': return NotificationModelReasonEnum.commented;
        case r'created': return NotificationModelReasonEnum.created;
        case r'dateAlert': return NotificationModelReasonEnum.dateAlert;
        case r'mentioned': return NotificationModelReasonEnum.mentioned;
        case r'prioritized': return NotificationModelReasonEnum.prioritized;
        case r'processed': return NotificationModelReasonEnum.processed;
        case r'responsible': return NotificationModelReasonEnum.responsible;
        case r'subscribed': return NotificationModelReasonEnum.subscribed;
        case r'scheduled': return NotificationModelReasonEnum.scheduled;
        case r'watched': return NotificationModelReasonEnum.watched;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationModelReasonEnumTypeTransformer] instance.
  static NotificationModelReasonEnumTypeTransformer? _instance;
}


