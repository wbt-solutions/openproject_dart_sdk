part of swagger.api;

class Work Package Links {
  
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
  
  Work Package Links();

  @override
  String toString() {
    return 'Work Package Links[self=$self, update=$update, schema=$schema, updateImmediately=$updateImmediately, logTime=$logTime, move=$move, copy=$copy, pdf=$pdf, atom=$atom, availableRelationCandidates=$availableRelationCandidates, activities=$activities, attachments=$attachments, addAttachment=$addAttachment, availableWatchers=$availableWatchers, relations=$relations, revisions=$revisions, watch=$watch, watchers=$watchers, addWatcher=$addWatcher, removeWatcher=$removeWatcher, addRelation=$addRelation, addChild=$addChild, changeParent=$changeParent, addComment=$addComment, previewMarkup=$previewMarkup, timeEntries=$timeEntries, ancestors=$ancestors, category=$category, type=$type, priority=$priority, project=$project, status=$status, author=$author, responsible=$responsible, assignee=$assignee, version=$version, parent=$parent, logCosts=$logCosts, showCosts=$showCosts, costObject=$costObject, costsByType=$costsByType, ]';
  }

  Work Package Links.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self =
      
      
      new Link.fromJson(json['self'])
;
    update =
      
      
      new Link.fromJson(json['update'])
;
    schema =
      
      
      new Link.fromJson(json['schema'])
;
    updateImmediately =
      
      
      new Link.fromJson(json['updateImmediately'])
;
    logTime =
      
      
      new Link.fromJson(json['logTime'])
;
    move =
      
      
      new Link.fromJson(json['move'])
;
    copy =
      
      
      new Link.fromJson(json['copy'])
;
    pdf =
      
      
      new Link.fromJson(json['pdf'])
;
    atom =
      
      
      new Link.fromJson(json['atom'])
;
    availableRelationCandidates =
      
      
      new Link.fromJson(json['available_relation_candidates'])
;
    activities =
      
      
      new Link.fromJson(json['activities'])
;
    attachments =
      
      
      new Link.fromJson(json['attachments'])
;
    addAttachment =
      
      
      new Link.fromJson(json['addAttachment'])
;
    availableWatchers =
      
      
      new Link.fromJson(json['availableWatchers'])
;
    relations =
      
      
      new Link.fromJson(json['relations'])
;
    revisions =
      
      
      new Link.fromJson(json['revisions'])
;
    watch =
      
      
      new Link.fromJson(json['watch'])
;
    watchers =
      
      
      new Link.fromJson(json['watchers'])
;
    addWatcher =
      
      
      new Link.fromJson(json['addWatcher'])
;
    removeWatcher =
      
      
      new Link.fromJson(json['removeWatcher'])
;
    addRelation =
      
      
      new Link.fromJson(json['addRelation'])
;
    addChild =
      
      
      new Link.fromJson(json['addChild'])
;
    changeParent =
      
      
      new Link.fromJson(json['changeParent'])
;
    addComment =
      
      
      new Link.fromJson(json['addComment'])
;
    previewMarkup =
      
      
      new Link.fromJson(json['previewMarkup'])
;
    timeEntries =
      
      
      new Link.fromJson(json['timeEntries'])
;
    ancestors =
      Link.listFromJson(json['ancestors'])
;
    category =
      
      
      new Link.fromJson(json['category'])
;
    type =
      
      
      new Link.fromJson(json['type'])
;
    priority =
      
      
      new Link.fromJson(json['priority'])
;
    project =
      
      
      new Link.fromJson(json['project'])
;
    status =
      
      
      new Link.fromJson(json['status'])
;
    author =
      
      
      new Link.fromJson(json['author'])
;
    responsible =
      
      
      new Link.fromJson(json['responsible'])
;
    assignee =
      
      
      new Link.fromJson(json['assignee'])
;
    version =
      
      
      new Link.fromJson(json['version'])
;
    parent =
      
      
      new Link.fromJson(json['parent'])
;
    logCosts =
      
      
      new Link.fromJson(json['logCosts'])
;
    showCosts =
      
      
      new Link.fromJson(json['showCosts'])
;
    costObject =
      
      
      new Link.fromJson(json['costObject'])
;
    costsByType =
      
      
      new Link.fromJson(json['costsByType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'update': update,
      'schema': schema,
      'updateImmediately': updateImmediately,
      'logTime': logTime,
      'move': move,
      'copy': copy,
      'pdf': pdf,
      'atom': atom,
      'available_relation_candidates': availableRelationCandidates,
      'activities': activities,
      'attachments': attachments,
      'addAttachment': addAttachment,
      'availableWatchers': availableWatchers,
      'relations': relations,
      'revisions': revisions,
      'watch': watch,
      'watchers': watchers,
      'addWatcher': addWatcher,
      'removeWatcher': removeWatcher,
      'addRelation': addRelation,
      'addChild': addChild,
      'changeParent': changeParent,
      'addComment': addComment,
      'previewMarkup': previewMarkup,
      'timeEntries': timeEntries,
      'ancestors': ancestors,
      'category': category,
      'type': type,
      'priority': priority,
      'project': project,
      'status': status,
      'author': author,
      'responsible': responsible,
      'assignee': assignee,
      'version': version,
      'parent': parent,
      'logCosts': logCosts,
      'showCosts': showCosts,
      'costObject': costObject,
      'costsByType': costsByType
     };
  }

  static List<Work Package Links> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Links>() : json.map((value) => new Work Package Links.fromJson(value)).toList();
  }

  static Map<String, Work Package Links> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Links>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Links.fromJson(value));
    }
    return map;
  }
}

