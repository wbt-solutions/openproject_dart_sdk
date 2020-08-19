part of openproject_dart_sdk.api;

class Description {
  
  DescriptionFormatEnum format;
  
  String raw;
  
  String html;

  Description({
    this.format,
    this.raw,
    this.html,
  });

  @override
  String toString() {
    return 'Description[format=$format, raw=$raw, html=$html, ]';
  }

  Description.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    format = DescriptionFormatEnum.fromJson(json['format']);
    raw = json['raw'];
    html = json['html'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (format != null)
      json['format'] = format.value;
    if (raw != null)
      json['raw'] = raw;
    if (html != null)
      json['html'] = html;
    return json;
  }

  static List<Description> listFromJson(List<dynamic> json) {
    return json == null ? List<Description>() : json.map((value) => Description.fromJson(value)).toList();
  }

  static Map<String, Description> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Description>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Description.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Description-objects as value to a dart map
  static Map<String, List<Description>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Description>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Description.listFromJson(value);
      });
    }
    return map;
  }
}
class DescriptionFormatEnum {
  /// The underlying value of this enum member.
  final String value;

  const DescriptionFormatEnum._internal(this.value);

  static const DescriptionFormatEnum plain_ = DescriptionFormatEnum._internal("plain");
  static const DescriptionFormatEnum markdown_ = DescriptionFormatEnum._internal("markdown");
  static const DescriptionFormatEnum custom_ = DescriptionFormatEnum._internal("custom");

  static List<DescriptionFormatEnum> get values => const [
        plain_,
        markdown_,
        custom_,
      ];

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static DescriptionFormatEnum fromJson(String value) {
    return DescriptionFormatEnumTypeTransformer().decode(value);
  }

  static List<DescriptionFormatEnum> listFromJson(List<dynamic> json) {
    return json == null
      ? List<DescriptionFormatEnum>()
      : json.map((value) => DescriptionFormatEnum.fromJson(value)).toList();
  }
}

class DescriptionFormatEnumTypeTransformer {

  dynamic encode(DescriptionFormatEnum data) {
    return data.value;
  }

  DescriptionFormatEnum decode(dynamic data) {
    switch (data) {
      case "plain": return DescriptionFormatEnum.plain_;
      case "markdown": return DescriptionFormatEnum.markdown_;
      case "custom": return DescriptionFormatEnum.custom_;
      default: return null;
    }
  }
}


