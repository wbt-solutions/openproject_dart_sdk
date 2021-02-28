//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Filter {
  /// Returns a new [Filter] instance.
  Filter({
    this.operator_,
    this.values = const [],
  });

  String operator_;

  List<String> values;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Filter &&
     other.operator_ == operator_ &&
     other.values == values;

  @override
  int get hashCode =>
    (operator_ == null ? 0 : operator_.hashCode) +
    (values == null ? 0 : values.hashCode);

  @override
  String toString() => 'Filter[operator_=$operator_, values=$values]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (operator_ != null) {
      json[r'operator'] = operator_;
    }
    if (values != null) {
      json[r'values'] = values;
    }
    return json;
  }

  /// Returns a new [Filter] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Filter fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Filter(
        operator_: json[r'operator'],
        values: json[r'values'] == null
          ? null
          : (json[r'values'] as List).cast<String>(),
    );

  static List<Filter> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Filter>[]
      : json.map((v) => Filter.fromJson(v)).toList(growable: true == growable);

  static Map<String, Filter> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Filter>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Filter.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Filter-objects as value to a dart map
  static Map<String, List<Filter>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Filter>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Filter.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

