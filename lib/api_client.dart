part of openproject_dart_sdk.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "http://localhost"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['basicAuth'] = HttpBasicAuth();
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
          return Activity.fromJson(value);
        case 'ActivityLinks':
          return ActivityLinks.fromJson(value);
        case 'ApiV3ActivitiesIdComment':
          return ApiV3ActivitiesIdComment.fromJson(value);
        case 'ApiV3CustomActionsCustomActionIdExecuteLinks':
          return ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(value);
        case 'ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage':
          return ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(value);
        case 'Budget':
          return Budget.fromJson(value);
        case 'BudgetLinks':
          return BudgetLinks.fromJson(value);
        case 'Categories':
          return Categories.fromJson(value);
        case 'CategoriesEmbedded':
          return CategoriesEmbedded.fromJson(value);
        case 'Category':
          return Category.fromJson(value);
        case 'CategoryLinks':
          return CategoryLinks.fromJson(value);
        case 'Configuration':
          return Configuration.fromJson(value);
        case 'Description':
          return Description.fromJson(value);
        case 'InlineObject':
          return InlineObject.fromJson(value);
        case 'InlineObject1':
          return InlineObject1.fromJson(value);
        case 'InlineObject2':
          return InlineObject2.fromJson(value);
        case 'InlineObject3':
          return InlineObject3.fromJson(value);
        case 'InlineObject4':
          return InlineObject4.fromJson(value);
        case 'InlineObject5':
          return InlineObject5.fromJson(value);
        case 'InlineObject6':
          return InlineObject6.fromJson(value);
        case 'InlineObject7':
          return InlineObject7.fromJson(value);
        case 'InlineObject8':
          return InlineObject8.fromJson(value);
        case 'Link':
          return Link.fromJson(value);
        case 'News':
          return News.fromJson(value);
        case 'NewsEmbedded':
          return NewsEmbedded.fromJson(value);
        case 'NewsLinks':
          return NewsLinks.fromJson(value);
        case 'NewsList':
          return NewsList.fromJson(value);
        case 'NewsListEmbedded':
          return NewsListEmbedded.fromJson(value);
        case 'NewsListLinks':
          return NewsListLinks.fromJson(value);
        case 'Priorities':
          return Priorities.fromJson(value);
        case 'PrioritiesEmbedded':
          return PrioritiesEmbedded.fromJson(value);
        case 'PrioritiesLinks':
          return PrioritiesLinks.fromJson(value);
        case 'Priority':
          return Priority.fromJson(value);
        case 'PriorityLinks':
          return PriorityLinks.fromJson(value);
        case 'Project':
          return Project.fromJson(value);
        case 'ProjectLinks':
          return ProjectLinks.fromJson(value);
        case 'Projects':
          return Projects.fromJson(value);
        case 'ProjectsEmbedded':
          return ProjectsEmbedded.fromJson(value);
        case 'ProjectsLinks':
          return ProjectsLinks.fromJson(value);
        case 'Root':
          return Root.fromJson(value);
        case 'RootLinks':
          return RootLinks.fromJson(value);
        case 'Status':
          return Status.fromJson(value);
        case 'StatusLinks':
          return StatusLinks.fromJson(value);
        case 'Statuses':
          return Statuses.fromJson(value);
        case 'StatusesEmbedded':
          return StatusesEmbedded.fromJson(value);
        case 'StatusesLinks':
          return StatusesLinks.fromJson(value);
        case 'TimeEntries':
          return TimeEntries.fromJson(value);
        case 'TimeEntriesEmbedded':
          return TimeEntriesEmbedded.fromJson(value);
        case 'TimeEntriesLinks':
          return TimeEntriesLinks.fromJson(value);
        case 'TimeEntry':
          return TimeEntry.fromJson(value);
        case 'TimeEntryEmbedded':
          return TimeEntryEmbedded.fromJson(value);
        case 'TimeEntryLinks':
          return TimeEntryLinks.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'UserLinks':
          return UserLinks.fromJson(value);
        case 'UserPreferences':
          return UserPreferences.fromJson(value);
        case 'UserPreferencesLinks':
          return UserPreferencesLinks.fromJson(value);
        case 'Users':
          return Users.fromJson(value);
        case 'UsersEmbedded':
          return UsersEmbedded.fromJson(value);
        case 'Version':
          return Version.fromJson(value);
        case 'VersionLinks':
          return VersionLinks.fromJson(value);
        case 'Versions':
          return Versions.fromJson(value);
        case 'VersionsEmbedded':
          return VersionsEmbedded.fromJson(value);
        case 'WPType':
          return WPType.fromJson(value);
        case 'WPTypeLinks':
          return WPTypeLinks.fromJson(value);
        case 'WPTypes':
          return WPTypes.fromJson(value);
        case 'WPTypesEmbedded':
          return WPTypesEmbedded.fromJson(value);
        case 'WorkPackage':
          return WorkPackage.fromJson(value);
        case 'WorkPackageEmbedded':
          return WorkPackageEmbedded.fromJson(value);
        case 'WorkPackageLinks':
          return WorkPackageLinks.fromJson(value);
        case 'WorkPackagePatch':
          return WorkPackagePatch.fromJson(value);
        case 'WorkPackages':
          return WorkPackages.fromJson(value);
        case 'WorkPackagesEmbedded':
          return WorkPackagesEmbedded.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
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
                             String nullableContentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    if (nullableContentType != null) {
      final contentType = nullableContentType;
      headerParams['Content-Type'] = contentType;
    }

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = nullableContentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      final nullableHeaderParams = (headerParams.isEmpty)? null: headerParams;
      switch(method) {
        case "POST":
          return client.post(url, headers: nullableHeaderParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: nullableHeaderParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: nullableHeaderParams);
        case "PATCH":
          return client.patch(url, headers: nullableHeaderParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: nullableHeaderParams);
        default:
          return client.get(url, headers: nullableHeaderParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
