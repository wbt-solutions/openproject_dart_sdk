part of openproject_dart_sdk.api;

class WorkPackageLinks {
  
  Link self = null;
  
  Link update = null;
  
  Link schema = null;
  
  Link updateImmediately = null;
  
  Link logTime = null;
  
  Link move = null;
  
  Link copy = null;
  
  Link pdf = null;
  
  Link atom = null;
  
  Link availableRelationCandidates = null;
  
  Link activities = null;
  
  Link attachments = null;
  
  Link addAttachment = null;
  
  Link availableWatchers = null;
  
  Link relations = null;
  
  Link revisions = null;
  
  Link watch = null;
  
  Link watchers = null;
  
  Link addWatcher = null;
  
  Link removeWatcher = null;
  
  Link addRelation = null;
  
  Link addChild = null;
  
  Link changeParent = null;
  
  Link addComment = null;
  
  Link previewMarkup = null;
  
  Link timeEntries = null;
  
  List<Link> ancestors = [];
  
  Link category = null;
  
  Link type = null;
  
  Link priority = null;
  
  Link project = null;
  
  Link status = null;
  
  Link author = null;
  
  Link responsible = null;
  
  Link assignee = null;
  
  Link version = null;
  
  Link parent = null;
  
  Link logCosts = null;
  
  Link showCosts = null;
  
  Link costObject = null;
  
  Link costsByType = null;
  WorkPackageLinks();

  @override
  String toString() {
    return 'Work Package Links[self=$self, update=$update, schema=$schema, updateImmediately=$updateImmediately, logTime=$logTime, move=$move, copy=$copy, pdf=$pdf, atom=$atom, availableRelationCandidates=$availableRelationCandidates, activities=$activities, attachments=$attachments, addAttachment=$addAttachment, availableWatchers=$availableWatchers, relations=$relations, revisions=$revisions, watch=$watch, watchers=$watchers, addWatcher=$addWatcher, removeWatcher=$removeWatcher, addRelation=$addRelation, addChild=$addChild, changeParent=$changeParent, addComment=$addComment, previewMarkup=$previewMarkup, timeEntries=$timeEntries, ancestors=$ancestors, category=$category, type=$type, priority=$priority, project=$project, status=$status, author=$author, responsible=$responsible, assignee=$assignee, version=$version, parent=$parent, logCosts=$logCosts, showCosts=$showCosts, costObject=$costObject, costsByType=$costsByType, ]';
  }

  WorkPackageLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    update = (json['update'] == null) ?
      null :
      Link.fromJson(json['update']);
    schema = (json['schema'] == null) ?
      null :
      Link.fromJson(json['schema']);
    updateImmediately = (json['updateImmediately'] == null) ?
      null :
      Link.fromJson(json['updateImmediately']);
    logTime = (json['logTime'] == null) ?
      null :
      Link.fromJson(json['logTime']);
    move = (json['move'] == null) ?
      null :
      Link.fromJson(json['move']);
    copy = (json['copy'] == null) ?
      null :
      Link.fromJson(json['copy']);
    pdf = (json['pdf'] == null) ?
      null :
      Link.fromJson(json['pdf']);
    atom = (json['atom'] == null) ?
      null :
      Link.fromJson(json['atom']);
    availableRelationCandidates = (json['available_relation_candidates'] == null) ?
      null :
      Link.fromJson(json['available_relation_candidates']);
    activities = (json['activities'] == null) ?
      null :
      Link.fromJson(json['activities']);
    attachments = (json['attachments'] == null) ?
      null :
      Link.fromJson(json['attachments']);
    addAttachment = (json['addAttachment'] == null) ?
      null :
      Link.fromJson(json['addAttachment']);
    availableWatchers = (json['availableWatchers'] == null) ?
      null :
      Link.fromJson(json['availableWatchers']);
    relations = (json['relations'] == null) ?
      null :
      Link.fromJson(json['relations']);
    revisions = (json['revisions'] == null) ?
      null :
      Link.fromJson(json['revisions']);
    watch = (json['watch'] == null) ?
      null :
      Link.fromJson(json['watch']);
    watchers = (json['watchers'] == null) ?
      null :
      Link.fromJson(json['watchers']);
    addWatcher = (json['addWatcher'] == null) ?
      null :
      Link.fromJson(json['addWatcher']);
    removeWatcher = (json['removeWatcher'] == null) ?
      null :
      Link.fromJson(json['removeWatcher']);
    addRelation = (json['addRelation'] == null) ?
      null :
      Link.fromJson(json['addRelation']);
    addChild = (json['addChild'] == null) ?
      null :
      Link.fromJson(json['addChild']);
    changeParent = (json['changeParent'] == null) ?
      null :
      Link.fromJson(json['changeParent']);
    addComment = (json['addComment'] == null) ?
      null :
      Link.fromJson(json['addComment']);
    previewMarkup = (json['previewMarkup'] == null) ?
      null :
      Link.fromJson(json['previewMarkup']);
    timeEntries = (json['timeEntries'] == null) ?
      null :
      Link.fromJson(json['timeEntries']);
    ancestors = (json['ancestors'] == null) ?
      null :
      Link.listFromJson(json['ancestors']);
    category = (json['category'] == null) ?
      null :
      Link.fromJson(json['category']);
    type = (json['type'] == null) ?
      null :
      Link.fromJson(json['type']);
    priority = (json['priority'] == null) ?
      null :
      Link.fromJson(json['priority']);
    project = (json['project'] == null) ?
      null :
      Link.fromJson(json['project']);
    status = (json['status'] == null) ?
      null :
      Link.fromJson(json['status']);
    author = (json['author'] == null) ?
      null :
      Link.fromJson(json['author']);
    responsible = (json['responsible'] == null) ?
      null :
      Link.fromJson(json['responsible']);
    assignee = (json['assignee'] == null) ?
      null :
      Link.fromJson(json['assignee']);
    version = (json['version'] == null) ?
      null :
      Link.fromJson(json['version']);
    parent = (json['parent'] == null) ?
      null :
      Link.fromJson(json['parent']);
    logCosts = (json['logCosts'] == null) ?
      null :
      Link.fromJson(json['logCosts']);
    showCosts = (json['showCosts'] == null) ?
      null :
      Link.fromJson(json['showCosts']);
    costObject = (json['costObject'] == null) ?
      null :
      Link.fromJson(json['costObject']);
    costsByType = (json['costsByType'] == null) ?
      null :
      Link.fromJson(json['costsByType']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (update != null)
      json['update'] = update;
    if (schema != null)
      json['schema'] = schema;
    if (updateImmediately != null)
      json['updateImmediately'] = updateImmediately;
    if (logTime != null)
      json['logTime'] = logTime;
    if (move != null)
      json['move'] = move;
    if (copy != null)
      json['copy'] = copy;
    if (pdf != null)
      json['pdf'] = pdf;
    if (atom != null)
      json['atom'] = atom;
    if (availableRelationCandidates != null)
      json['available_relation_candidates'] = availableRelationCandidates;
    if (activities != null)
      json['activities'] = activities;
    if (attachments != null)
      json['attachments'] = attachments;
    if (addAttachment != null)
      json['addAttachment'] = addAttachment;
    if (availableWatchers != null)
      json['availableWatchers'] = availableWatchers;
    if (relations != null)
      json['relations'] = relations;
    if (revisions != null)
      json['revisions'] = revisions;
    if (watch != null)
      json['watch'] = watch;
    if (watchers != null)
      json['watchers'] = watchers;
    if (addWatcher != null)
      json['addWatcher'] = addWatcher;
    if (removeWatcher != null)
      json['removeWatcher'] = removeWatcher;
    if (addRelation != null)
      json['addRelation'] = addRelation;
    if (addChild != null)
      json['addChild'] = addChild;
    if (changeParent != null)
      json['changeParent'] = changeParent;
    if (addComment != null)
      json['addComment'] = addComment;
    if (previewMarkup != null)
      json['previewMarkup'] = previewMarkup;
    if (timeEntries != null)
      json['timeEntries'] = timeEntries;
    if (ancestors != null)
      json['ancestors'] = ancestors;
    if (category != null)
      json['category'] = category;
    if (type != null)
      json['type'] = type;
    if (priority != null)
      json['priority'] = priority;
    if (project != null)
      json['project'] = project;
    if (status != null)
      json['status'] = status;
    if (author != null)
      json['author'] = author;
    if (responsible != null)
      json['responsible'] = responsible;
    if (assignee != null)
      json['assignee'] = assignee;
    if (version != null)
      json['version'] = version;
    if (parent != null)
      json['parent'] = parent;
    if (logCosts != null)
      json['logCosts'] = logCosts;
    if (showCosts != null)
      json['showCosts'] = showCosts;
    if (costObject != null)
      json['costObject'] = costObject;
    if (costsByType != null)
      json['costsByType'] = costsByType;
    return json;
  }

  static List<WorkPackageLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkPackageLinks>() : json.map((value) => WorkPackageLinks.fromJson(value)).toList();
  }

  static Map<String, WorkPackageLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkPackageLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkPackageLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Work Package Links-objects as value to a dart map
  static Map<String, List<WorkPackageLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WorkPackageLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WorkPackageLinks.listFromJson(value);
       });
     }
     return map;
  }
}

