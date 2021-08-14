//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  String href;

  String title;

  LinkMethodEnum method;

  String type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Link &&
     other.href == href &&
     other.title == title &&
     other.method == method &&
     other.type == type;

  @override
  int get hashCode =>
    (href == null ? 0 : href.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (method == null ? 0 : method.hashCode) +
    (type == null ? 0 : type.hashCode);

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
  /// [json] if it's non-null, null if [json] is null.
  static Link fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Link(
        href: json[r'href'],
        title: json[r'title'],
        method: LinkMethodEnum.fromJson(json[r'method']),
        type: json[r'type'],
    );

  static List<Link> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Link>[]
      : json.map((dynamic value) => Link.fromJson(value)).toList(growable: true == growable);

  static Map<String, Link> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Link>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Link.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Link-objects as value to a dart map
  static Map<String, List<Link>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Link>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Link.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
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

  static LinkMethodEnum fromJson(dynamic value) =>
    LinkMethodEnumTypeTransformer().decode(value);

  static List<LinkMethodEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <LinkMethodEnum>[]
      : json
          .map((value) => LinkMethodEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [LinkMethodEnum] to String,
/// and [decode] dynamic data back to [LinkMethodEnum].
class LinkMethodEnumTypeTransformer {
  const LinkMethodEnumTypeTransformer._();

  factory LinkMethodEnumTypeTransformer() => _instance ??= LinkMethodEnumTypeTransformer._();

  String encode(LinkMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LinkMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LinkMethodEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'patch': return LinkMethodEnum.patch_;
      case r'post': return LinkMethodEnum.post;
      case r'get': return LinkMethodEnum.get_;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [LinkMethodEnumTypeTransformer] instance.
  static LinkMethodEnumTypeTransformer _instance;
}

