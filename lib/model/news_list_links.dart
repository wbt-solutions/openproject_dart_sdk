//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsListLinks {
  /// Returns a new [NewsListLinks] instance.
  NewsListLinks({
    this.self,
    this.jumpTo,
    this.changeSize,
    this.nextByOffset,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? jumpTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? changeSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? nextByOffset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsListLinks &&
     other.self == self &&
     other.jumpTo == jumpTo &&
     other.changeSize == changeSize &&
     other.nextByOffset == nextByOffset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (jumpTo == null ? 0 : jumpTo!.hashCode) +
    (changeSize == null ? 0 : changeSize!.hashCode) +
    (nextByOffset == null ? 0 : nextByOffset!.hashCode);

  @override
  String toString() => 'NewsListLinks[self=$self, jumpTo=$jumpTo, changeSize=$changeSize, nextByOffset=$nextByOffset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (jumpTo != null) {
      json[r'jumpTo'] = jumpTo;
    }
    if (changeSize != null) {
      json[r'changeSize'] = changeSize;
    }
    if (nextByOffset != null) {
      json[r'nextByOffset'] = nextByOffset;
    }
    return json;
  }

  /// Returns a new [NewsListLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsListLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsListLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsListLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsListLinks(
        self: Link.fromJson(json[r'self']),
        jumpTo: Link.fromJson(json[r'jumpTo']),
        changeSize: Link.fromJson(json[r'changeSize']),
        nextByOffset: Link.fromJson(json[r'nextByOffset']),
      );
    }
    return null;
  }

  static List<NewsListLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsListLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsListLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsListLinks> mapFromJson(dynamic json) {
    final map = <String, NewsListLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsListLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsListLinks-objects as value to a dart map
  static Map<String, List<NewsListLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsListLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsListLinks.listFromJson(entry.value, growable: growable,);
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

