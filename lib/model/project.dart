part of openproject_dart_sdk.api;

class Project {
  
  int id;
  
  String name;
  
  String identifier;
  
  bool active;
  
  ProjectStatusEnum status;
  
  Description statusExplanation;
  
  bool public;
  
  Description description;
  
  DateTime createdAt;
  
  DateTime updatedAt;
  
  ProjectLinks links;

  Project({
    this.id,
    this.name,
    this.identifier,
    this.active,
    this.status,
    this.statusExplanation,
    this.public,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  @override
  String toString() {
    return 'Project[id=$id, name=$name, identifier=$identifier, active=$active, status=$status, statusExplanation=$statusExplanation, public=$public, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, ]';
  }

  Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    identifier = json['identifier'];
    active = json['active'];
    status = ProjectStatusEnum.fromJson(json['status']);
    statusExplanation = (json['statusExplanation'] == null) ?
      null :
      Description.fromJson(json['statusExplanation']);
    public = json['public'];
    description = (json['description'] == null) ?
      null :
      Description.fromJson(json['description']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    links = (json['_links'] == null) ?
      null :
      ProjectLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (identifier != null)
      json['identifier'] = identifier;
    if (active != null)
      json['active'] = active;
    if (status != null)
      json['status'] = status.value;
    if (statusExplanation != null)
      json['statusExplanation'] = statusExplanation;
    if (public != null)
      json['public'] = public;
    if (description != null)
      json['description'] = description;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<Project> listFromJson(List<dynamic> json) {
    return json == null ? List<Project>() : json.map((value) => Project.fromJson(value)).toList();
  }

  static Map<String, Project> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Project>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Project.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Project>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Project.listFromJson(value);
      });
    }
    return map;
  }
}
class ProjectStatusEnum {
  /// The underlying value of this enum member.
  final String value;

  const ProjectStatusEnum._internal(this.value);

  static const ProjectStatusEnum onTrack_ = ProjectStatusEnum._internal("on track");
  static const ProjectStatusEnum atRisk_ = ProjectStatusEnum._internal("at risk");
  static const ProjectStatusEnum offTrack_ = ProjectStatusEnum._internal("off track");

  static List<ProjectStatusEnum> get values => const [
        onTrack_,
        atRisk_,
        offTrack_,
      ];

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static ProjectStatusEnum fromJson(String value) {
    return ProjectStatusEnumTypeTransformer().decode(value);
  }

  static List<ProjectStatusEnum> listFromJson(List<dynamic> json) {
    return json == null
      ? List<ProjectStatusEnum>()
      : json.map((value) => ProjectStatusEnum.fromJson(value)).toList();
  }
}

class ProjectStatusEnumTypeTransformer {

  dynamic encode(ProjectStatusEnum data) {
    return data.value;
  }

  ProjectStatusEnum decode(dynamic data) {
    switch (data) {
      case "on track": return ProjectStatusEnum.onTrack_;
      case "at risk": return ProjectStatusEnum.atRisk_;
      case "off track": return ProjectStatusEnum.offTrack_;
      default: return null;
    }
  }
}


