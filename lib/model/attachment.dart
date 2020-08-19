part of openproject_dart_sdk.api;

class Attachment {
  
  int id;
  
  String title;
  
  String fileName;
  
  int fileSize;
  
  Description description;
  
  String contentType;
  
  Digest digest;
  
  DateTime createdAt;

  Attachment({
    this.id,
    this.title,
    this.fileName,
    this.fileSize,
    this.description,
    this.contentType,
    this.digest,
    this.createdAt,
  });

  @override
  String toString() {
    return 'Attachment[id=$id, title=$title, fileName=$fileName, fileSize=$fileSize, description=$description, contentType=$contentType, digest=$digest, createdAt=$createdAt, ]';
  }

  Attachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    title = json['title'];
    fileName = json['fileName'];
    fileSize = json['fileSize'];
    description = (json['description'] == null) ?
      null :
      Description.fromJson(json['description']);
    contentType = json['contentType'];
    digest = (json['digest'] == null) ?
      null :
      Digest.fromJson(json['digest']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (fileName != null)
      json['fileName'] = fileName;
    if (fileSize != null)
      json['fileSize'] = fileSize;
    if (description != null)
      json['description'] = description;
    if (contentType != null)
      json['contentType'] = contentType;
    if (digest != null)
      json['digest'] = digest;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    return json;
  }

  static List<Attachment> listFromJson(List<dynamic> json) {
    return json == null ? List<Attachment>() : json.map((value) => Attachment.fromJson(value)).toList();
  }

  static Map<String, Attachment> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Attachment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Attachment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Attachment-objects as value to a dart map
  static Map<String, List<Attachment>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Attachment>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Attachment.listFromJson(value);
      });
    }
    return map;
  }
}

