//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UserLinks {
  /// Returns a new [UserLinks] instance.
  UserLinks({
    this.self,
    this.show_,
    this.lock,
    this.updateImmediately,
    this.delete,
  });

  Link self;

  Link show_;

  Link lock;

  Link updateImmediately;

  Link delete;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserLinks &&
     other.self == self &&
     other.show_ == show_ &&
     other.lock == lock &&
     other.updateImmediately == updateImmediately &&
     other.delete == delete;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (show_ == null ? 0 : show_.hashCode) +
    (lock == null ? 0 : lock.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately.hashCode) +
    (delete == null ? 0 : delete.hashCode);

  @override
  String toString() => 'UserLinks[self=$self, show_=$show_, lock=$lock, updateImmediately=$updateImmediately, delete=$delete]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (show_ != null) {
      json[r'show'] = show_;
    }
    if (lock != null) {
      json[r'lock'] = lock;
    }
    if (updateImmediately != null) {
      json[r'updateImmediately'] = updateImmediately;
    }
    if (delete != null) {
      json[r'delete'] = delete;
    }
    return json;
  }

  /// Returns a new [UserLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserLinks(
        self: Link.fromJson(json[r'self']),
        show_: Link.fromJson(json[r'show']),
        lock: Link.fromJson(json[r'lock']),
        updateImmediately: Link.fromJson(json[r'updateImmediately']),
        delete: Link.fromJson(json[r'delete']),
    );

  static List<UserLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserLinks>[]
      : json.map((v) => UserLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserLinks-objects as value to a dart map
  static Map<String, List<UserLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

