part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://localhost"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['basicAuth'] = new HttpBasicAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Activity':
          return new Activity.fromJson(value);
        case 'ActivityModel':
          return new ActivityModel.fromJson(value);
        case 'Aggregations':
          return new Aggregations.fromJson(value);
        case 'Apiv3activitiesidComment':
          return new Apiv3activitiesidComment.fromJson(value);
        case 'Apiv3customActionscustomActionIdexecuteLinks':
          return new Apiv3customActionscustomActionIdexecuteLinks.fromJson(value);
        case 'Apiv3customActionscustomActionIdexecuteLinksWorkPackage':
          return new Apiv3customActionscustomActionIdexecuteLinksWorkPackage.fromJson(value);
        case 'Attachment':
          return new Attachment.fromJson(value);
        case 'AttachmentModel':
          return new AttachmentModel.fromJson(value);
        case 'Attachments by work package':
          return new Attachments by work package.fromJson(value);
        case 'Attachments by work packageModel':
          return new Attachments by work packageModel.fromJson(value);
        case 'Available Assignees':
          return new Available Assignees.fromJson(value);
        case 'Available AssigneesModel':
          return new Available AssigneesModel.fromJson(value);
        case 'Available Projects':
          return new Available Projects.fromJson(value);
        case 'Available ProjectsModel':
          return new Available ProjectsModel.fromJson(value);
        case 'Available Responsibles':
          return new Available Responsibles.fromJson(value);
        case 'Available ResponsiblesModel':
          return new Available ResponsiblesModel.fromJson(value);
        case 'Available Watchers':
          return new Available Watchers.fromJson(value);
        case 'Available WatchersModel':
          return new Available WatchersModel.fromJson(value);
        case 'Available relation candidates':
          return new Available relation candidates.fromJson(value);
        case 'Available relation candidatesModel':
          return new Available relation candidatesModel.fromJson(value);
        case 'Body':
          return new Body.fromJson(value);
        case 'Body1':
          return new Body1.fromJson(value);
        case 'Body2':
          return new Body2.fromJson(value);
        case 'Body3':
          return new Body3.fromJson(value);
        case 'Body4':
          return new Body4.fromJson(value);
        case 'Body5':
          return new Body5.fromJson(value);
        case 'Body6':
          return new Body6.fromJson(value);
        case 'Body7':
          return new Body7.fromJson(value);
        case 'Body8':
          return new Body8.fromJson(value);
        case 'Categories by Project':
          return new Categories by Project.fromJson(value);
        case 'Categories by ProjectModel':
          return new Categories by ProjectModel.fromJson(value);
        case 'Category':
          return new Category.fromJson(value);
        case 'CategoryModel':
          return new CategoryModel.fromJson(value);
        case 'Configuration':
          return new Configuration.fromJson(value);
        case 'ConfigurationModel':
          return new ConfigurationModel.fromJson(value);
        case 'Cursor based pagination':
          return new Cursor based pagination.fromJson(value);
        case 'Custom Action':
          return new Custom Action.fromJson(value);
        case 'Custom ActionModel':
          return new Custom ActionModel.fromJson(value);
        case 'Custom Object':
          return new Custom Object.fromJson(value);
        case 'Custom ObjectModel':
          return new Custom ObjectModel.fromJson(value);
        case 'Default Query':
          return new Default Query.fromJson(value);
        case 'Default Query for Project':
          return new Default Query for Project.fromJson(value);
        case 'Default Query for ProjectModel':
          return new Default Query for ProjectModel.fromJson(value);
        case 'Default QueryModel':
          return new Default QueryModel.fromJson(value);
        case 'Description':
          return new Description.fromJson(value);
        case 'Example Form':
          return new Example Form.fromJson(value);
        case 'Example FormModel':
          return new Example FormModel.fromJson(value);
        case 'Example Schema':
          return new Example Schema.fromJson(value);
        case 'Example SchemaModel':
          return new Example SchemaModel.fromJson(value);
        case 'Execute custom action':
          return new Execute custom action.fromJson(value);
        case 'Help text':
          return new Help text.fromJson(value);
        case 'Help textModel':
          return new Help textModel.fromJson(value);
        case 'Help texts':
          return new Help texts.fromJson(value);
        case 'Help textsModel':
          return new Help textsModel.fromJson(value);
        case 'Link':
          return new Link.fromJson(value);
        case 'Offset based pagination':
          return new Offset based pagination.fromJson(value);
        case 'Plain Text':
          return new Plain Text.fromJson(value);
        case 'Plain TextModel':
          return new Plain TextModel.fromJson(value);
        case 'Principals':
          return new Principals.fromJson(value);
        case 'PrincipalsModel':
          return new PrincipalsModel.fromJson(value);
        case 'Priorities':
          return new Priorities.fromJson(value);
        case 'PrioritiesModel':
          return new PrioritiesModel.fromJson(value);
        case 'Priority':
          return new Priority.fromJson(value);
        case 'PriorityModel':
          return new PriorityModel.fromJson(value);
        case 'Project':
          return new Project.fromJson(value);
        case 'ProjectModel':
          return new ProjectModel.fromJson(value);
        case 'Projects':
          return new Projects.fromJson(value);
        case 'Projects by version':
          return new Projects by version.fromJson(value);
        case 'Projects by versionModel':
          return new Projects by versionModel.fromJson(value);
        case 'ProjectsEmbedded':
          return new ProjectsEmbedded.fromJson(value);
        case 'ProjectsModel':
          return new ProjectsModel.fromJson(value);
        case 'Queries':
          return new Queries.fromJson(value);
        case 'QueriesModel':
          return new QueriesModel.fromJson(value);
        case 'Query':
          return new Query.fromJson(value);
        case 'Query Available Projects':
          return new Query Available Projects.fromJson(value);
        case 'Query Available ProjectsModel':
          return new Query Available ProjectsModel.fromJson(value);
        case 'Query Column':
          return new Query Column.fromJson(value);
        case 'Query ColumnModel':
          return new Query ColumnModel.fromJson(value);
        case 'Query Create Form':
          return new Query Create Form.fromJson(value);
        case 'Query Filter':
          return new Query Filter.fromJson(value);
        case 'Query Filter Instance Schema':
          return new Query Filter Instance Schema.fromJson(value);
        case 'Query Filter Instance SchemaModel':
          return new Query Filter Instance SchemaModel.fromJson(value);
        case 'Query Filter Instance Schemas':
          return new Query Filter Instance Schemas.fromJson(value);
        case 'Query Filter Instance Schemas For Project':
          return new Query Filter Instance Schemas For Project.fromJson(value);
        case 'Query Filter Instance Schemas For ProjectModel':
          return new Query Filter Instance Schemas For ProjectModel.fromJson(value);
        case 'Query Filter Instance SchemasModel':
          return new Query Filter Instance SchemasModel.fromJson(value);
        case 'Query FilterModel':
          return new Query FilterModel.fromJson(value);
        case 'Query Operator':
          return new Query Operator.fromJson(value);
        case 'Query OperatorModel':
          return new Query OperatorModel.fromJson(value);
        case 'Query Sort By':
          return new Query Sort By.fromJson(value);
        case 'Query Sort ByModel':
          return new Query Sort ByModel.fromJson(value);
        case 'QueryModel':
          return new QueryModel.fromJson(value);
        case 'Relation':
          return new Relation.fromJson(value);
        case 'Relation edit form':
          return new Relation edit form.fromJson(value);
        case 'Relation edit formModel':
          return new Relation edit formModel.fromJson(value);
        case 'Relation schema':
          return new Relation schema.fromJson(value);
        case 'Relation schema for type':
          return new Relation schema for type.fromJson(value);
        case 'Relation schemaModel':
          return new Relation schemaModel.fromJson(value);
        case 'RelationModel':
          return new RelationModel.fromJson(value);
        case 'Relations':
          return new Relations.fromJson(value);
        case 'RelationsModel':
          return new RelationsModel.fromJson(value);
        case 'Remove Watcher':
          return new Remove Watcher.fromJson(value);
        case 'Revision':
          return new Revision.fromJson(value);
        case 'RevisionModel':
          return new RevisionModel.fromJson(value);
        case 'Revisions':
          return new Revisions.fromJson(value);
        case 'RevisionsModel':
          return new RevisionsModel.fromJson(value);
        case 'Role':
          return new Role.fromJson(value);
        case 'RoleModel':
          return new RoleModel.fromJson(value);
        case 'Roles':
          return new Roles.fromJson(value);
        case 'RolesModel':
          return new RolesModel.fromJson(value);
        case 'Root':
          return new Root.fromJson(value);
        case 'RootModel':
          return new RootModel.fromJson(value);
        case 'Schema For Global Queries':
          return new Schema For Global Queries.fromJson(value);
        case 'Schema For Global QueriesModel':
          return new Schema For Global QueriesModel.fromJson(value);
        case 'Schema For Project Queries':
          return new Schema For Project Queries.fromJson(value);
        case 'Schema For Project QueriesModel':
          return new Schema For Project QueriesModel.fromJson(value);
        case 'Star Query':
          return new Star Query.fromJson(value);
        case 'Star QueryModel':
          return new Star QueryModel.fromJson(value);
        case 'Status':
          return new Status.fromJson(value);
        case 'StatusModel':
          return new StatusModel.fromJson(value);
        case 'Statuses':
          return new Statuses.fromJson(value);
        case 'StatusesModel':
          return new StatusesModel.fromJson(value);
        case 'String Object':
          return new String Object.fromJson(value);
        case 'String ObjectModel':
          return new String ObjectModel.fromJson(value);
        case 'Textile':
          return new Textile.fromJson(value);
        case 'TextileModel':
          return new TextileModel.fromJson(value);
        case 'Time entries':
          return new Time entries.fromJson(value);
        case 'Time entries Links':
          return new Time entries Links.fromJson(value);
        case 'Time entries activity':
          return new Time entries activity.fromJson(value);
        case 'Time entries activityModel':
          return new Time entries activityModel.fromJson(value);
        case 'Time entriesModel':
          return new Time entriesModel.fromJson(value);
        case 'Time entry':
          return new Time entry.fromJson(value);
        case 'Time entry Links':
          return new Time entry Links.fromJson(value);
        case 'Time entryModel':
          return new Time entryModel.fromJson(value);
        case 'TimeEntriesEmbedded':
          return new TimeEntriesEmbedded.fromJson(value);
        case 'TimeEntryEmbedded':
          return new TimeEntryEmbedded.fromJson(value);
        case 'TypeModel':
          return new TypeModel.fromJson(value);
        case 'Types by Project':
          return new Types by Project.fromJson(value);
        case 'Types by ProjectModel':
          return new Types by ProjectModel.fromJson(value);
        case 'TypesModel':
          return new TypesModel.fromJson(value);
        case 'Unstar Query':
          return new Unstar Query.fromJson(value);
        case 'Unstar QueryModel':
          return new Unstar QueryModel.fromJson(value);
        case 'User':
          return new User.fromJson(value);
        case 'User Account Locking':
          return new User Account Locking.fromJson(value);
        case 'UserModel':
          return new UserModel.fromJson(value);
        case 'UserPreferences':
          return new UserPreferences.fromJson(value);
        case 'UserPreferencesModel':
          return new UserPreferencesModel.fromJson(value);
        case 'Users':
          return new Users.fromJson(value);
        case 'Users embedded':
          return new Users embedded.fromJson(value);
        case 'UsersModel':
          return new UsersModel.fromJson(value);
        case 'Version':
          return new Version.fromJson(value);
        case 'Version Links':
          return new Version Links.fromJson(value);
        case 'VersionModel':
          return new VersionModel.fromJson(value);
        case 'Versions':
          return new Versions.fromJson(value);
        case 'Versions by Project':
          return new Versions by Project.fromJson(value);
        case 'Versions by ProjectModel':
          return new Versions by ProjectModel.fromJson(value);
        case 'Versions embedded':
          return new Versions embedded.fromJson(value);
        case 'VersionsModel':
          return new VersionsModel.fromJson(value);
        case 'WPType':
          return new WPType.fromJson(value);
        case 'WPType Links':
          return new WPType Links.fromJson(value);
        case 'WPTypes':
          return new WPTypes.fromJson(value);
        case 'WPTypesEmbedded':
          return new WPTypesEmbedded.fromJson(value);
        case 'Watchers':
          return new Watchers.fromJson(value);
        case 'WatchersModel':
          return new WatchersModel.fromJson(value);
        case 'Work Package':
          return new Work Package.fromJson(value);
        case 'Work Package Create Form':
          return new Work Package Create Form.fromJson(value);
        case 'Work Package Edit Form':
          return new Work Package Edit Form.fromJson(value);
        case 'Work Package Embedded':
          return new Work Package Embedded.fromJson(value);
        case 'Work Package Links':
          return new Work Package Links.fromJson(value);
        case 'Work Package Patch':
          return new Work Package Patch.fromJson(value);
        case 'Work Package Relation Form':
          return new Work Package Relation Form.fromJson(value);
        case 'Work Package Relation FormModel':
          return new Work Package Relation FormModel.fromJson(value);
        case 'Work Package Schema':
          return new Work Package Schema.fromJson(value);
        case 'Work Package Schemas':
          return new Work Package Schemas.fromJson(value);
        case 'Work Package SchemasModel':
          return new Work Package SchemasModel.fromJson(value);
        case 'Work Package activities':
          return new Work Package activities.fromJson(value);
        case 'Work Package activitiesModel':
          return new Work Package activitiesModel.fromJson(value);
        case 'Work PackageModel':
          return new Work PackageModel.fromJson(value);
        case 'Work Packages':
          return new Work Packages.fromJson(value);
        case 'Work Packages by Project':
          return new Work Packages by Project.fromJson(value);
        case 'Work Packages by ProjectModel':
          return new Work Packages by ProjectModel.fromJson(value);
        case 'Work Packages embedded':
          return new Work Packages embedded.fromJson(value);
        case 'Work PackagesModel':
          return new Work PackagesModel.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
