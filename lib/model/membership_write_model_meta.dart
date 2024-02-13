//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipWriteModelMeta {
  /// Returns a new [MembershipWriteModelMeta] instance.
  MembershipWriteModelMeta({
    this.notificationMessage,
    this.sendNotification = true,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MembershipWriteModelMetaNotificationMessage? notificationMessage;

  /// Set to false, if no notification should get sent.
  bool sendNotification;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipWriteModelMeta &&
    other.notificationMessage == notificationMessage &&
    other.sendNotification == sendNotification;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (notificationMessage == null ? 0 : notificationMessage!.hashCode) +
    (sendNotification.hashCode);

  @override
  String toString() => 'MembershipWriteModelMeta[notificationMessage=$notificationMessage, sendNotification=$sendNotification]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.notificationMessage != null) {
      json[r'notificationMessage'] = this.notificationMessage;
    } else {
      json[r'notificationMessage'] = null;
    }
      json[r'sendNotification'] = this.sendNotification;
    return json;
  }

  /// Returns a new [MembershipWriteModelMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipWriteModelMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipWriteModelMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipWriteModelMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipWriteModelMeta(
        notificationMessage: MembershipWriteModelMetaNotificationMessage.fromJson(json[r'notificationMessage']),
        sendNotification: mapValueOfType<bool>(json, r'sendNotification') ?? true,
      );
    }
    return null;
  }

  static List<MembershipWriteModelMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipWriteModelMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipWriteModelMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipWriteModelMeta> mapFromJson(dynamic json) {
    final map = <String, MembershipWriteModelMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipWriteModelMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipWriteModelMeta-objects as value to a dart map
  static Map<String, List<MembershipWriteModelMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipWriteModelMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipWriteModelMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

