//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Link {
  /// Returns a new [Link] instance.
  Link({
    this.href,
    this.title,
    this.method,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  LinkMethodEnum? method;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Link &&
     other.href == href &&
     other.title == title &&
     other.method == method &&
     other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (href == null ? 0 : href!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Link[href=$href, title=$title, method=$method, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (href != null) {
      json[r'href'] = href;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (method != null) {
      json[r'method'] = method;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  /// Returns a new [Link] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Link? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Link[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Link[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Link(
        href: mapValueOfType<String>(json, r'href'),
        title: mapValueOfType<String>(json, r'title'),
        method: LinkMethodEnum.fromJson(json[r'method']),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<Link>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Link>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Link.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Link> mapFromJson(dynamic json) {
    final map = <String, Link>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Link.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Link-objects as value to a dart map
  static Map<String, List<Link>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Link>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Link.listFromJson(entry.value, growable: growable,);
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


class LinkMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const LinkMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const patch_ = LinkMethodEnum._(r'patch');
  static const post = LinkMethodEnum._(r'post');
  static const get_ = LinkMethodEnum._(r'get');

  /// List of all possible values in this [enum][LinkMethodEnum].
  static const values = <LinkMethodEnum>[
    patch_,
    post,
    get_,
  ];

  static LinkMethodEnum? fromJson(dynamic value) => LinkMethodEnumTypeTransformer().decode(value);

  static List<LinkMethodEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LinkMethodEnum] to String,
/// and [decode] dynamic data back to [LinkMethodEnum].
class LinkMethodEnumTypeTransformer {
  factory LinkMethodEnumTypeTransformer() => _instance ??= const LinkMethodEnumTypeTransformer._();

  const LinkMethodEnumTypeTransformer._();

  String encode(LinkMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LinkMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LinkMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'patch': return LinkMethodEnum.patch_;
        case r'post': return LinkMethodEnum.post;
        case r'get': return LinkMethodEnum.get_;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LinkMethodEnumTypeTransformer] instance.
  static LinkMethodEnumTypeTransformer? _instance;
}


