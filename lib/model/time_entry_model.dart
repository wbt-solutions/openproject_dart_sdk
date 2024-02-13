//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryModel {
  /// Returns a new [TimeEntryModel] instance.
  TimeEntryModel({
    this.id,
    this.comment,
    this.spentOn,
    this.hours,
    this.ongoing,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  /// The id of the time entry
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntryModelComment? comment;

  /// The date the expenditure is booked for
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? spentOn;

  /// The time quantifying the expenditure
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hours;

  /// Whether the time entry is actively tracking time
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ongoing;

  /// The time the time entry was created
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// The time the time entry was last updated
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
  TimeEntryModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryModel &&
    other.id == id &&
    other.comment == comment &&
    other.spentOn == spentOn &&
    other.hours == hours &&
    other.ongoing == ongoing &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (spentOn == null ? 0 : spentOn!.hashCode) +
    (hours == null ? 0 : hours!.hashCode) +
    (ongoing == null ? 0 : ongoing!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'TimeEntryModel[id=$id, comment=$comment, spentOn=$spentOn, hours=$hours, ongoing=$ongoing, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.spentOn != null) {
      json[r'spentOn'] = _dateFormatter.format(this.spentOn!.toUtc());
    } else {
      json[r'spentOn'] = null;
    }
    if (this.hours != null) {
      json[r'hours'] = this.hours;
    } else {
      json[r'hours'] = null;
    }
    if (this.ongoing != null) {
      json[r'ongoing'] = this.ongoing;
    } else {
      json[r'ongoing'] = null;
    }
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
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [TimeEntryModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryModel(
        id: mapValueOfType<int>(json, r'id'),
        comment: TimeEntryModelComment.fromJson(json[r'comment']),
        spentOn: mapDateTime(json, r'spentOn', r''),
        hours: mapValueOfType<String>(json, r'hours'),
        ongoing: mapValueOfType<bool>(json, r'ongoing'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: TimeEntryModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<TimeEntryModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryModel> mapFromJson(dynamic json) {
    final map = <String, TimeEntryModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryModel-objects as value to a dart map
  static Map<String, List<TimeEntryModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeEntryModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

