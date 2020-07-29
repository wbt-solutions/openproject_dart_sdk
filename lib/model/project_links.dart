part of openproject_dart_sdk.api;

class ProjectLinks {
  
  Link self;
  
  Link createWorkPackage;
  
  Link createWorkPackageImmediate;
  
  Link categories;
  
  Link types;
  
  Link versions;
  
  Link workPackages;
  
  Link memberships;
  
  Link delete;
  
  Link schema;
  
  Link parent;

  ProjectLinks({
    this.self,
    this.createWorkPackage,
    this.createWorkPackageImmediate,
    this.categories,
    this.types,
    this.versions,
    this.workPackages,
    this.memberships,
    this.delete,
    this.schema,
    this.parent,
  });

  @override
  String toString() {
    return 'ProjectLinks[self=$self, createWorkPackage=$createWorkPackage, createWorkPackageImmediate=$createWorkPackageImmediate, categories=$categories, types=$types, versions=$versions, workPackages=$workPackages, memberships=$memberships, delete=$delete, schema=$schema, parent=$parent, ]';
  }

  ProjectLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    createWorkPackage = (json['createWorkPackage'] == null) ?
      null :
      Link.fromJson(json['createWorkPackage']);
    createWorkPackageImmediate = (json['createWorkPackageImmediate'] == null) ?
      null :
      Link.fromJson(json['createWorkPackageImmediate']);
    categories = (json['categories'] == null) ?
      null :
      Link.fromJson(json['categories']);
    types = (json['types'] == null) ?
      null :
      Link.fromJson(json['types']);
    versions = (json['versions'] == null) ?
      null :
      Link.fromJson(json['versions']);
    workPackages = (json['workPackages'] == null) ?
      null :
      Link.fromJson(json['workPackages']);
    memberships = (json['memberships'] == null) ?
      null :
      Link.fromJson(json['memberships']);
    delete = (json['delete'] == null) ?
      null :
      Link.fromJson(json['delete']);
    schema = (json['schema'] == null) ?
      null :
      Link.fromJson(json['schema']);
    parent = (json['parent'] == null) ?
      null :
      Link.fromJson(json['parent']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (createWorkPackage != null)
      json['createWorkPackage'] = createWorkPackage;
    if (createWorkPackageImmediate != null)
      json['createWorkPackageImmediate'] = createWorkPackageImmediate;
    if (categories != null)
      json['categories'] = categories;
    if (types != null)
      json['types'] = types;
    if (versions != null)
      json['versions'] = versions;
    if (workPackages != null)
      json['workPackages'] = workPackages;
    if (memberships != null)
      json['memberships'] = memberships;
    if (delete != null)
      json['delete'] = delete;
    if (schema != null)
      json['schema'] = schema;
    if (parent != null)
      json['parent'] = parent;
    return json;
  }

  static List<ProjectLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectLinks>() : json.map((value) => ProjectLinks.fromJson(value)).toList();
  }

  static Map<String, ProjectLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, ProjectLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProjectLinks-objects as value to a dart map
  static Map<String, List<ProjectLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<ProjectLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ProjectLinks.listFromJson(value);
      });
    }
    return map;
  }
}

