//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class QueryModel {
  /// Returns a new [QueryModel] instance.
  QueryModel({
    this.id,
    this.name,
    this.filters = const [],
    this.sums,
    this.timelineVisible,
    this.timelineLabels = const [],
    this.timelineZoomLevel,
    this.timestamps,
    this.highlightingMode,
    this.showHierarchies,
    this.hidden,
    this.public,
    this.starred,
    required this.createdAt,
    required this.updatedAt,
    this.links,
  });

  /// Query id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Query name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// A set of QueryFilters which will be applied to the work packages to determine the resulting work packages
  List<QueryFilterInstanceSchemaModel> filters;

  /// Should sums (of supported properties) be shown?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sums;

  /// Should the timeline mode be shown?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? timelineVisible;

  /// Which labels are shown in the timeline, empty when default
  List<String> timelineLabels;

  /// Which zoom level should the timeline be rendered in?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timelineZoomLevel;

  /// Timestamps to filter by when showing changed attributes on work packages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  List? timestamps;

  /// Which highlighting mode should the table have?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? highlightingMode;

  /// Should the hierarchy mode be enabled?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showHierarchies;

  /// Should the query be hidden from the query list?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hidden;

  /// Can users besides the owner see the query?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// Should the query be highlighted to the user?
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? starred;

  /// Time of creation
  DateTime createdAt;

  /// Time of the most recent change to the query
  DateTime updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QueryModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryModel &&
    other.id == id &&
    other.name == name &&
    _deepEquality.equals(other.filters, filters) &&
    other.sums == sums &&
    other.timelineVisible == timelineVisible &&
    _deepEquality.equals(other.timelineLabels, timelineLabels) &&
    other.timelineZoomLevel == timelineZoomLevel &&
    other.timestamps == timestamps &&
    other.highlightingMode == highlightingMode &&
    other.showHierarchies == showHierarchies &&
    other.hidden == hidden &&
    other.public == public &&
    other.starred == starred &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (filters.hashCode) +
    (sums == null ? 0 : sums!.hashCode) +
    (timelineVisible == null ? 0 : timelineVisible!.hashCode) +
    (timelineLabels.hashCode) +
    (timelineZoomLevel == null ? 0 : timelineZoomLevel!.hashCode) +
    (timestamps == null ? 0 : timestamps!.hashCode) +
    (highlightingMode == null ? 0 : highlightingMode!.hashCode) +
    (showHierarchies == null ? 0 : showHierarchies!.hashCode) +
    (hidden == null ? 0 : hidden!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (starred == null ? 0 : starred!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'QueryModel[id=$id, name=$name, filters=$filters, sums=$sums, timelineVisible=$timelineVisible, timelineLabels=$timelineLabels, timelineZoomLevel=$timelineZoomLevel, timestamps=$timestamps, highlightingMode=$highlightingMode, showHierarchies=$showHierarchies, hidden=$hidden, public=$public, starred=$starred, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
      json[r'filters'] = this.filters;
    if (this.sums != null) {
      json[r'sums'] = this.sums;
    } else {
      json[r'sums'] = null;
    }
    if (this.timelineVisible != null) {
      json[r'timelineVisible'] = this.timelineVisible;
    } else {
      json[r'timelineVisible'] = null;
    }
      json[r'timelineLabels'] = this.timelineLabels;
    if (this.timelineZoomLevel != null) {
      json[r'timelineZoomLevel'] = this.timelineZoomLevel;
    } else {
      json[r'timelineZoomLevel'] = null;
    }
    if (this.timestamps != null) {
      json[r'timestamps'] = this.timestamps;
    } else {
      json[r'timestamps'] = null;
    }
    if (this.highlightingMode != null) {
      json[r'highlightingMode'] = this.highlightingMode;
    } else {
      json[r'highlightingMode'] = null;
    }
    if (this.showHierarchies != null) {
      json[r'showHierarchies'] = this.showHierarchies;
    } else {
      json[r'showHierarchies'] = null;
    }
    if (this.hidden != null) {
      json[r'hidden'] = this.hidden;
    } else {
      json[r'hidden'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
    if (this.starred != null) {
      json[r'starred'] = this.starred;
    } else {
      json[r'starred'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [QueryModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryModel(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        filters: QueryFilterInstanceSchemaModel.listFromJson(json[r'filters']),
        sums: mapValueOfType<bool>(json, r'sums'),
        timelineVisible: mapValueOfType<bool>(json, r'timelineVisible'),
        timelineLabels: json[r'timelineLabels'] is Iterable
            ? (json[r'timelineLabels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        timelineZoomLevel: mapValueOfType<String>(json, r'timelineZoomLevel'),
        //timestamps: List.fromJson(json[r'timestamps']),
        highlightingMode: mapValueOfType<String>(json, r'highlightingMode'),
        showHierarchies: mapValueOfType<bool>(json, r'showHierarchies'),
        hidden: mapValueOfType<bool>(json, r'hidden'),
        public: mapValueOfType<bool>(json, r'public'),
        starred: mapValueOfType<bool>(json, r'starred'),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        links: QueryModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<QueryModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryModel> mapFromJson(dynamic json) {
    final map = <String, QueryModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryModel-objects as value to a dart map
  static Map<String, List<QueryModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'updatedAt',
  };
}

