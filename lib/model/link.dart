part of openproject_dart_sdk.api;

class Link {
  
  String href;
  
  String title;
  
  LinkMethodEnum method;
  
  String type;

  Link({
    this.href,
    this.title,
    this.method,
    this.type,
  });

  @override
  String toString() {
    return 'Link[href=$href, title=$title, method=$method, type=$type, ]';
  }

  Link.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
    title = json['title'];
    method = LinkMethodEnum.fromJson(json['method']);
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (href != null)
      json['href'] = href;
    if (title != null)
      json['title'] = title;
    if (method != null)
      json['method'] = method.value;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Link> listFromJson(List<dynamic> json) {
    return json == null ? List<Link>() : json.map((value) => Link.fromJson(value)).toList();
  }

  static Map<String, Link> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Link>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Link.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Link-objects as value to a dart map
  static Map<String, List<Link>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Link>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Link.listFromJson(value);
      });
    }
    return map;
  }
}
class LinkMethodEnum {
  /// The underlying value of this enum member.
  final String value;

  const LinkMethodEnum._internal(this.value);

  static const LinkMethodEnum patch_ = LinkMethodEnum._internal("patch");
  static const LinkMethodEnum post_ = LinkMethodEnum._internal("post");
  static const LinkMethodEnum get_ = LinkMethodEnum._internal("get");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static LinkMethodEnum fromJson(String value) {
    return LinkMethodEnumTypeTransformer().decode(value);
  }

  static List<LinkMethodEnum> listFromJson(List<dynamic> json) {
    return json == null
      ? List<LinkMethodEnum>()
      : json.map((value) => LinkMethodEnum.fromJson(value)).toList();
  }
}

class LinkMethodEnumTypeTransformer {

  dynamic encode(LinkMethodEnum data) {
    return data.value;
  }

  LinkMethodEnum decode(dynamic data) {
    switch (data) {
      case "patch": return LinkMethodEnum.patch_;
      case "post": return LinkMethodEnum.post_;
      case "get": return LinkMethodEnum.get_;
      default: return null;
    }
  }
}


