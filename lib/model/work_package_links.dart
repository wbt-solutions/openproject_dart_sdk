//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackageLinks {
  /// Returns a new [WorkPackageLinks] instance.
  WorkPackageLinks({
    this.self,
    this.update,
    this.schema,
    this.updateImmediately,
    this.logTime,
    this.move,
    this.copy,
    this.pdf,
    this.atom,
    this.availableRelationCandidates,
    this.activities,
    this.attachments,
    this.addAttachment,
    this.availableWatchers,
    this.relations,
    this.revisions,
    this.watch,
    this.watchers,
    this.addWatcher,
    this.removeWatcher,
    this.addRelation,
    this.addChild,
    this.changeParent,
    this.addComment,
    this.previewMarkup,
    this.timeEntries,
    this.ancestors = const [],
    this.category,
    this.type,
    this.priority,
    this.project,
    this.status,
    this.author,
    this.responsible,
    this.assignee,
    this.version,
    this.parent,
    this.logCosts,
    this.showCosts,
    this.costObject,
    this.costsByType,
  });

  Link self;

  Link update;

  Link schema;

  Link updateImmediately;

  Link logTime;

  Link move;

  Link copy;

  Link pdf;

  Link atom;

  Link availableRelationCandidates;

  Link activities;

  Link attachments;

  Link addAttachment;

  Link availableWatchers;

  Link relations;

  Link revisions;

  Link watch;

  Link watchers;

  Link addWatcher;

  Link removeWatcher;

  Link addRelation;

  Link addChild;

  Link changeParent;

  Link addComment;

  Link previewMarkup;

  Link timeEntries;

  List<Link> ancestors;

  Link category;

  Link type;

  Link priority;

  Link project;

  Link status;

  Link author;

  Link responsible;

  Link assignee;

  Link version;

  Link parent;

  Link logCosts;

  Link showCosts;

  Link costObject;

  Link costsByType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackageLinks &&
     other.self == self &&
     other.update == update &&
     other.schema == schema &&
     other.updateImmediately == updateImmediately &&
     other.logTime == logTime &&
     other.move == move &&
     other.copy == copy &&
     other.pdf == pdf &&
     other.atom == atom &&
     other.availableRelationCandidates == availableRelationCandidates &&
     other.activities == activities &&
     other.attachments == attachments &&
     other.addAttachment == addAttachment &&
     other.availableWatchers == availableWatchers &&
     other.relations == relations &&
     other.revisions == revisions &&
     other.watch == watch &&
     other.watchers == watchers &&
     other.addWatcher == addWatcher &&
     other.removeWatcher == removeWatcher &&
     other.addRelation == addRelation &&
     other.addChild == addChild &&
     other.changeParent == changeParent &&
     other.addComment == addComment &&
     other.previewMarkup == previewMarkup &&
     other.timeEntries == timeEntries &&
     other.ancestors == ancestors &&
     other.category == category &&
     other.type == type &&
     other.priority == priority &&
     other.project == project &&
     other.status == status &&
     other.author == author &&
     other.responsible == responsible &&
     other.assignee == assignee &&
     other.version == version &&
     other.parent == parent &&
     other.logCosts == logCosts &&
     other.showCosts == showCosts &&
     other.costObject == costObject &&
     other.costsByType == costsByType;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (update == null ? 0 : update.hashCode) +
    (schema == null ? 0 : schema.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately.hashCode) +
    (logTime == null ? 0 : logTime.hashCode) +
    (move == null ? 0 : move.hashCode) +
    (copy == null ? 0 : copy.hashCode) +
    (pdf == null ? 0 : pdf.hashCode) +
    (atom == null ? 0 : atom.hashCode) +
    (availableRelationCandidates == null ? 0 : availableRelationCandidates.hashCode) +
    (activities == null ? 0 : activities.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (addAttachment == null ? 0 : addAttachment.hashCode) +
    (availableWatchers == null ? 0 : availableWatchers.hashCode) +
    (relations == null ? 0 : relations.hashCode) +
    (revisions == null ? 0 : revisions.hashCode) +
    (watch == null ? 0 : watch.hashCode) +
    (watchers == null ? 0 : watchers.hashCode) +
    (addWatcher == null ? 0 : addWatcher.hashCode) +
    (removeWatcher == null ? 0 : removeWatcher.hashCode) +
    (addRelation == null ? 0 : addRelation.hashCode) +
    (addChild == null ? 0 : addChild.hashCode) +
    (changeParent == null ? 0 : changeParent.hashCode) +
    (addComment == null ? 0 : addComment.hashCode) +
    (previewMarkup == null ? 0 : previewMarkup.hashCode) +
    (timeEntries == null ? 0 : timeEntries.hashCode) +
    (ancestors == null ? 0 : ancestors.hashCode) +
    (category == null ? 0 : category.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (priority == null ? 0 : priority.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (responsible == null ? 0 : responsible.hashCode) +
    (assignee == null ? 0 : assignee.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (parent == null ? 0 : parent.hashCode) +
    (logCosts == null ? 0 : logCosts.hashCode) +
    (showCosts == null ? 0 : showCosts.hashCode) +
    (costObject == null ? 0 : costObject.hashCode) +
    (costsByType == null ? 0 : costsByType.hashCode);

  @override
  String toString() => 'WorkPackageLinks[self=$self, update=$update, schema=$schema, updateImmediately=$updateImmediately, logTime=$logTime, move=$move, copy=$copy, pdf=$pdf, atom=$atom, availableRelationCandidates=$availableRelationCandidates, activities=$activities, attachments=$attachments, addAttachment=$addAttachment, availableWatchers=$availableWatchers, relations=$relations, revisions=$revisions, watch=$watch, watchers=$watchers, addWatcher=$addWatcher, removeWatcher=$removeWatcher, addRelation=$addRelation, addChild=$addChild, changeParent=$changeParent, addComment=$addComment, previewMarkup=$previewMarkup, timeEntries=$timeEntries, ancestors=$ancestors, category=$category, type=$type, priority=$priority, project=$project, status=$status, author=$author, responsible=$responsible, assignee=$assignee, version=$version, parent=$parent, logCosts=$logCosts, showCosts=$showCosts, costObject=$costObject, costsByType=$costsByType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (update != null) {
      json[r'update'] = update;
    }
    if (schema != null) {
      json[r'schema'] = schema;
    }
    if (updateImmediately != null) {
      json[r'updateImmediately'] = updateImmediately;
    }
    if (logTime != null) {
      json[r'logTime'] = logTime;
    }
    if (move != null) {
      json[r'move'] = move;
    }
    if (copy != null) {
      json[r'copy'] = copy;
    }
    if (pdf != null) {
      json[r'pdf'] = pdf;
    }
    if (atom != null) {
      json[r'atom'] = atom;
    }
    if (availableRelationCandidates != null) {
      json[r'available_relation_candidates'] = availableRelationCandidates;
    }
    if (activities != null) {
      json[r'activities'] = activities;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (addAttachment != null) {
      json[r'addAttachment'] = addAttachment;
    }
    if (availableWatchers != null) {
      json[r'availableWatchers'] = availableWatchers;
    }
    if (relations != null) {
      json[r'relations'] = relations;
    }
    if (revisions != null) {
      json[r'revisions'] = revisions;
    }
    if (watch != null) {
      json[r'watch'] = watch;
    }
    if (watchers != null) {
      json[r'watchers'] = watchers;
    }
    if (addWatcher != null) {
      json[r'addWatcher'] = addWatcher;
    }
    if (removeWatcher != null) {
      json[r'removeWatcher'] = removeWatcher;
    }
    if (addRelation != null) {
      json[r'addRelation'] = addRelation;
    }
    if (addChild != null) {
      json[r'addChild'] = addChild;
    }
    if (changeParent != null) {
      json[r'changeParent'] = changeParent;
    }
    if (addComment != null) {
      json[r'addComment'] = addComment;
    }
    if (previewMarkup != null) {
      json[r'previewMarkup'] = previewMarkup;
    }
    if (timeEntries != null) {
      json[r'timeEntries'] = timeEntries;
    }
    if (ancestors != null) {
      json[r'ancestors'] = ancestors;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (priority != null) {
      json[r'priority'] = priority;
    }
    if (project != null) {
      json[r'project'] = project;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    if (responsible != null) {
      json[r'responsible'] = responsible;
    }
    if (assignee != null) {
      json[r'assignee'] = assignee;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (parent != null) {
      json[r'parent'] = parent;
    }
    if (logCosts != null) {
      json[r'logCosts'] = logCosts;
    }
    if (showCosts != null) {
      json[r'showCosts'] = showCosts;
    }
    if (costObject != null) {
      json[r'costObject'] = costObject;
    }
    if (costsByType != null) {
      json[r'costsByType'] = costsByType;
    }
    return json;
  }

  /// Returns a new [WorkPackageLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkPackageLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkPackageLinks(
        self: Link.fromJson(json[r'self']),
        update: Link.fromJson(json[r'update']),
        schema: Link.fromJson(json[r'schema']),
        updateImmediately: Link.fromJson(json[r'updateImmediately']),
        logTime: Link.fromJson(json[r'logTime']),
        move: Link.fromJson(json[r'move']),
        copy: Link.fromJson(json[r'copy']),
        pdf: Link.fromJson(json[r'pdf']),
        atom: Link.fromJson(json[r'atom']),
        availableRelationCandidates: Link.fromJson(json[r'available_relation_candidates']),
        activities: Link.fromJson(json[r'activities']),
        attachments: Link.fromJson(json[r'attachments']),
        addAttachment: Link.fromJson(json[r'addAttachment']),
        availableWatchers: Link.fromJson(json[r'availableWatchers']),
        relations: Link.fromJson(json[r'relations']),
        revisions: Link.fromJson(json[r'revisions']),
        watch: Link.fromJson(json[r'watch']),
        watchers: Link.fromJson(json[r'watchers']),
        addWatcher: Link.fromJson(json[r'addWatcher']),
        removeWatcher: Link.fromJson(json[r'removeWatcher']),
        addRelation: Link.fromJson(json[r'addRelation']),
        addChild: Link.fromJson(json[r'addChild']),
        changeParent: Link.fromJson(json[r'changeParent']),
        addComment: Link.fromJson(json[r'addComment']),
        previewMarkup: Link.fromJson(json[r'previewMarkup']),
        timeEntries: Link.fromJson(json[r'timeEntries']),
        ancestors: Link.listFromJson(json[r'ancestors']),
        category: Link.fromJson(json[r'category']),
        type: Link.fromJson(json[r'type']),
        priority: Link.fromJson(json[r'priority']),
        project: Link.fromJson(json[r'project']),
        status: Link.fromJson(json[r'status']),
        author: Link.fromJson(json[r'author']),
        responsible: Link.fromJson(json[r'responsible']),
        assignee: Link.fromJson(json[r'assignee']),
        version: Link.fromJson(json[r'version']),
        parent: Link.fromJson(json[r'parent']),
        logCosts: Link.fromJson(json[r'logCosts']),
        showCosts: Link.fromJson(json[r'showCosts']),
        costObject: Link.fromJson(json[r'costObject']),
        costsByType: Link.fromJson(json[r'costsByType']),
    );

  static List<WorkPackageLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkPackageLinks>[]
      : json.map((dynamic value) => WorkPackageLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, WorkPackageLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkPackageLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = WorkPackageLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackageLinks-objects as value to a dart map
  static Map<String, List<WorkPackageLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkPackageLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = WorkPackageLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

