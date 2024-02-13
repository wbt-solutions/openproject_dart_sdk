//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class HelpTextModelLinks {
  /// Returns a new [HelpTextModelLinks] instance.
  HelpTextModelLinks({
    required this.self,
    required this.editText,
    required this.attachments,
    required this.addAttachment,
  });

  HelpTextModelLinksSelf self;

  HelpTextModelLinksEditText editText;

  HelpTextModelLinksAttachments attachments;

  HelpTextModelLinksAddAttachment addAttachment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HelpTextModelLinks &&
    other.self == self &&
    other.editText == editText &&
    other.attachments == attachments &&
    other.addAttachment == addAttachment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (editText.hashCode) +
    (attachments.hashCode) +
    (addAttachment.hashCode);

  @override
  String toString() => 'HelpTextModelLinks[self=$self, editText=$editText, attachments=$attachments, addAttachment=$addAttachment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'editText'] = this.editText;
      json[r'attachments'] = this.attachments;
      json[r'addAttachment'] = this.addAttachment;
    return json;
  }

  /// Returns a new [HelpTextModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HelpTextModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HelpTextModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HelpTextModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HelpTextModelLinks(
        self: HelpTextModelLinksSelf.fromJson(json[r'self'])!,
        editText: HelpTextModelLinksEditText.fromJson(json[r'editText'])!,
        attachments: HelpTextModelLinksAttachments.fromJson(json[r'attachments'])!,
        addAttachment: HelpTextModelLinksAddAttachment.fromJson(json[r'addAttachment'])!,
      );
    }
    return null;
  }

  static List<HelpTextModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HelpTextModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HelpTextModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HelpTextModelLinks> mapFromJson(dynamic json) {
    final map = <String, HelpTextModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HelpTextModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HelpTextModelLinks-objects as value to a dart map
  static Map<String, List<HelpTextModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HelpTextModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HelpTextModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'editText',
    'attachments',
    'addAttachment',
  };
}

