//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsList {
  /// Returns a new [NewsList] instance.
  NewsList({
    this.total,
    this.count,
    this.pageSize,
    this.offset,
    this.embedded,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NewsListEmbedded? embedded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NewsListLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsList &&
     other.total == total &&
     other.count == count &&
     other.pageSize == pageSize &&
     other.offset == offset &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total == null ? 0 : total!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (embedded == null ? 0 : embedded!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'NewsList[total=$total, count=$count, pageSize=$pageSize, offset=$offset, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (pageSize != null) {
      json[r'pageSize'] = pageSize;
    }
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [NewsList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsList(
        total: mapValueOfType<int>(json, r'total'),
        count: mapValueOfType<int>(json, r'count'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        offset: mapValueOfType<int>(json, r'offset'),
        embedded: NewsListEmbedded.fromJson(json[r'_embedded']),
        links: NewsListLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<NewsList>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsList> mapFromJson(dynamic json) {
    final map = <String, NewsList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsList-objects as value to a dart map
  static Map<String, List<NewsList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsList>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsList.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

