//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Configuration {
  /// Returns a new [Configuration] instance.
  Configuration({
    this.maximumAttachmentFileSize,
    this.perPageOptions = const [],
  });

  int maximumAttachmentFileSize;

  List<int> perPageOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Configuration &&
     other.maximumAttachmentFileSize == maximumAttachmentFileSize &&
     other.perPageOptions == perPageOptions;

  @override
  int get hashCode =>
    (maximumAttachmentFileSize == null ? 0 : maximumAttachmentFileSize.hashCode) +
    (perPageOptions == null ? 0 : perPageOptions.hashCode);

  @override
  String toString() => 'Configuration[maximumAttachmentFileSize=$maximumAttachmentFileSize, perPageOptions=$perPageOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (maximumAttachmentFileSize != null) {
      json[r'maximumAttachmentFileSize'] = maximumAttachmentFileSize;
    }
    if (perPageOptions != null) {
      json[r'perPageOptions'] = perPageOptions;
    }
    return json;
  }

  /// Returns a new [Configuration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Configuration fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Configuration(
        maximumAttachmentFileSize: json[r'maximumAttachmentFileSize'],
        perPageOptions: json[r'perPageOptions'] == null
          ? null
          : (json[r'perPageOptions'] as List).cast<int>(),
    );

  static List<Configuration> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Configuration>[]
      : json.map((v) => Configuration.fromJson(v)).toList(growable: true == growable);

  static Map<String, Configuration> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Configuration>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Configuration.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Configuration-objects as value to a dart map
  static Map<String, List<Configuration>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Configuration>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Configuration.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

