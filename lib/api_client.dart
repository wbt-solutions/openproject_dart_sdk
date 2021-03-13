//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ApiClient {
  ApiClient({this.basePath = 'http://localhost'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'basicAuth'] = HttpBasicAuth();
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// returns an unmodifiable view of the authentications, since none should be added
  /// nor deleted
  Map<String, Authentication> get authentications =>
      Map.unmodifiable(_authentications);

  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: true == growable);
  }

  String serialize(Object obj) => obj == null ? '' : json.encode(obj);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don’t use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    Iterable<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final url = Uri.parse('$basePath$path$queryString');

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn’t a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, url);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          onError: (error, trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, url);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : serialize(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(url, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(url, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(url, headers: nullableHeaderParams,);
        case 'PATCH': return await _client.patch(url, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(url, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(url, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Activity':
          return Activity.fromJson(value);
        case 'ActivityLinks':
          return ActivityLinks.fromJson(value);
        case 'ApiV3CustomActionsCustomActionIdExecuteLinks':
          return ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(value);
        case 'ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage':
          return ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(value);
        case 'Attachment':
          return Attachment.fromJson(value);
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
        case 'Comment':
          return Comment.fromJson(value);
        case 'Configuration':
          return Configuration.fromJson(value);
        case 'Description':
          return Description.fromJson(value);
        case 'Digest':
          return Digest.fromJson(value);
        case 'Filter':
          return Filter.fromJson(value);
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
        case 'TimeEntriesActivity':
          return TimeEntriesActivity.fromJson(value);
        case 'TimeEntriesActivityEmbedded':
          return TimeEntriesActivityEmbedded.fromJson(value);
        case 'TimeEntriesActivityLinks':
          return TimeEntriesActivityLinks.fromJson(value);
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
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return value
              .map((v) => _deserialize(v, newTargetType, growable: growable))
              .toList(growable: true == growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return value
              .map((v) => _deserialize(v, newTargetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            final newTargetType = match[1];
            return Map.fromIterables(
              value.keys,
              value.values.map((v) => _deserialize(v, newTargetType, growable: growable)),
            );
          }
          break;
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', e, stack,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    authNames.forEach((authName) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }
}
