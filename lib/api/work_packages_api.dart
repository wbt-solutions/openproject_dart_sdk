//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class WorkPackagesApi {
  WorkPackagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Work Package Create Form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the project in which the work package will be created
  Future<Response> apiV3ProjectsIdWorkPackagesFormPostWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/work_packages/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Work Package Create Form
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the project in which the work package will be created
  Future<void> apiV3ProjectsIdWorkPackagesFormPost(int id,) async {
    final response = await apiV3ProjectsIdWorkPackagesFormPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Work Packages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  Future<Response> apiV3ProjectsIdWorkPackagesGetWithHttpInfo(int id, { int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/work_packages'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }
    if (showSums != null) {
      queryParams.addAll(_queryParams('', 'showSums', showSums));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List Work Packages
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  Future<WorkPackages?> apiV3ProjectsIdWorkPackagesGet(int id, { int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, }) async {
    final response = await apiV3ProjectsIdWorkPackagesGetWithHttpInfo(id,  offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackages',) as WorkPackages;
    
    }
    return null;
  }

  /// Create Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [WorkPackage] workPackage (required):
  ///   Work package to add to the project
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  Future<Response> apiV3ProjectsIdWorkPackagesPostWithHttpInfo(int id, WorkPackage workPackage, { bool? notify, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/work_packages'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = workPackage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [WorkPackage] workPackage (required):
  ///   Work package to add to the project
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  Future<WorkPackage?> apiV3ProjectsIdWorkPackagesPost(int id, WorkPackage workPackage, { bool? notify, }) async {
    final response = await apiV3ProjectsIdWorkPackagesPostWithHttpInfo(id, workPackage,  notify: notify, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackage',) as WorkPackage;
    
    }
    return null;
  }

  /// Available assignees
  ///
  /// Gets a list of users that can be assigned to work packages in the given project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectId (required):
  ///   Project id
  Future<Response> apiV3ProjectsProjectIdAvailableAssigneesGetWithHttpInfo(int projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{project_id}/available_assignees'
      .replaceAll('{project_id}', projectId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Available assignees
  ///
  /// Gets a list of users that can be assigned to work packages in the given project.
  ///
  /// Parameters:
  ///
  /// * [int] projectId (required):
  ///   Project id
  Future<Users?> apiV3ProjectsProjectIdAvailableAssigneesGet(int projectId,) async {
    final response = await apiV3ProjectsProjectIdAvailableAssigneesGetWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Users',) as Users;
    
    }
    return null;
  }

  /// Available responsibles
  ///
  /// Gets a list of users that can be assigned as the responsible of a work package in the given project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectId (required):
  ///   Project id
  Future<Response> apiV3ProjectsProjectIdAvailableResponsiblesGetWithHttpInfo(int projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{project_id}/available_responsibles'
      .replaceAll('{project_id}', projectId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Available responsibles
  ///
  /// Gets a list of users that can be assigned as the responsible of a work package in the given project.
  ///
  /// Parameters:
  ///
  /// * [int] projectId (required):
  ///   Project id
  Future<Users?> apiV3ProjectsProjectIdAvailableResponsiblesGet(int projectId,) async {
    final response = await apiV3ProjectsProjectIdAvailableResponsiblesGetWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Users',) as Users;
    
    }
    return null;
  }

  /// Work Package Create Form
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3WorkPackagesFormPostWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/form';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Work Package Create Form
  Future<void> apiV3WorkPackagesFormPost() async {
    final response = await apiV3WorkPackagesFormPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Work Packages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  Future<Response> apiV3WorkPackagesGetWithHttpInfo({ int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }
    if (showSums != null) {
      queryParams.addAll(_queryParams('', 'showSums', showSums));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List Work Packages
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  Future<WorkPackages?> apiV3WorkPackagesGet({ int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, }) async {
    final response = await apiV3WorkPackagesGetWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackages',) as WorkPackages;
    
    }
    return null;
  }

  /// List work package activities
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> apiV3WorkPackagesIdActivitiesGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/activities'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List work package activities
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<void> apiV3WorkPackagesIdActivitiesGet(int id,) async {
    final response = await apiV3WorkPackagesIdActivitiesGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Comment work package
  ///
  /// Creates an activity for the selected work package and, on success, returns the updated activity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [Comment] comment:
  Future<Response> apiV3WorkPackagesIdActivitiesPostWithHttpInfo(int id, { bool? notify, Comment? comment, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/activities'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = comment;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Comment work package
  ///
  /// Creates an activity for the selected work package and, on success, returns the updated activity.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [Comment] comment:
  Future<void> apiV3WorkPackagesIdActivitiesPost(int id, { bool? notify, Comment? comment, }) async {
    final response = await apiV3WorkPackagesIdActivitiesPostWithHttpInfo(id,  notify: notify, comment: comment, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Available projects
  ///
  /// Gets a list of projects that are available as projects to which the work package can be moved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<Response> apiV3WorkPackagesIdAvailableProjectsGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/available_projects'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Available projects
  ///
  /// Gets a list of projects that are available as projects to which the work package can be moved.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<void> apiV3WorkPackagesIdAvailableProjectsGet(int id,) async {
    final response = await apiV3WorkPackagesIdAvailableProjectsGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Available relation candidates
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of workpackage to return
  ///
  /// * [int] pageSize:
  ///   Maximum number of candidates to list (default 10)
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] query:
  ///   Shortcut for filtering by ID or subject
  ///
  /// * [String] type:
  ///   Type of relation to find candidates for (default \"relates\")
  Future<Response> apiV3WorkPackagesIdAvailableRelationCandidatesGetWithHttpInfo(int id, { int? pageSize, String? filters, String? query, String? type, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/available_relation_candidates'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (type != null) {
      queryParams.addAll(_queryParams('', 'type', type));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Available relation candidates
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of workpackage to return
  ///
  /// * [int] pageSize:
  ///   Maximum number of candidates to list (default 10)
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] query:
  ///   Shortcut for filtering by ID or subject
  ///
  /// * [String] type:
  ///   Type of relation to find candidates for (default \"relates\")
  Future<void> apiV3WorkPackagesIdAvailableRelationCandidatesGet(int id, { int? pageSize, String? filters, String? query, String? type, }) async {
    final response = await apiV3WorkPackagesIdAvailableRelationCandidatesGetWithHttpInfo(id,  pageSize: pageSize, filters: filters, query: query, type: type, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Available watchers
  ///
  /// Gets a list of users that are able to be watchers of the specified work package.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<Response> apiV3WorkPackagesIdAvailableWatchersGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/available_watchers'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Available watchers
  ///
  /// Gets a list of users that are able to be watchers of the specified work package.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<void> apiV3WorkPackagesIdAvailableWatchersGet(int id,) async {
    final response = await apiV3WorkPackagesIdAvailableWatchersGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Work Package
  ///
  /// Deletes the work package, as well as:  * all associated time entries  * its hierarchy of child work packages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> apiV3WorkPackagesIdDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Delete Work Package
  ///
  /// Deletes the work package, as well as:  * all associated time entries  * its hierarchy of child work packages
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<void> apiV3WorkPackagesIdDelete(int id,) async {
    final response = await apiV3WorkPackagesIdDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Work Package Edit Form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package being modified
  Future<Response> apiV3WorkPackagesIdFormPostWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Work Package Edit Form
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package being modified
  Future<void> apiV3WorkPackagesIdFormPost(int id,) async {
    final response = await apiV3WorkPackagesIdFormPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View Work Package
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> apiV3WorkPackagesIdGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// View Work Package
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<WorkPackage?> apiV3WorkPackagesIdGet(int id,) async {
    final response = await apiV3WorkPackagesIdGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackage',) as WorkPackage;
    
    }
    return null;
  }

  /// Edit Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [WorkPackage] workPackage:
  Future<Response> apiV3WorkPackagesIdPatchWithHttpInfo(int id, { bool? notify, WorkPackage? workPackage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = workPackage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Edit Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](http://en.wikipedia.org/wiki/Optimistic_concurrency_control).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [WorkPackage] workPackage:
  Future<WorkPackage?> apiV3WorkPackagesIdPatch(int id, { bool? notify, WorkPackage? workPackage, }) async {
    final response = await apiV3WorkPackagesIdPatchWithHttpInfo(id,  notify: notify, workPackage: workPackage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackage',) as WorkPackage;
    
    }
    return null;
  }

  /// Relation create form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the relation being modified
  Future<Response> apiV3WorkPackagesIdRelationsFormPostWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/relations/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Relation create form
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the relation being modified
  Future<void> apiV3WorkPackagesIdRelationsFormPost(int id,) async {
    final response = await apiV3WorkPackagesIdRelationsFormPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revisions
  ///
  /// Gets a list of revisions that are linked to this work package, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<Response> apiV3WorkPackagesIdRevisionsGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/revisions'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Revisions
  ///
  /// Gets a list of revisions that are linked to this work package, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<void> apiV3WorkPackagesIdRevisionsGet(int id,) async {
    final response = await apiV3WorkPackagesIdRevisionsGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WorkPackage] workPackage (required):
  ///   Work package to add (a project link ist requried)
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  Future<Response> apiV3WorkPackagesPostWithHttpInfo(WorkPackage workPackage, { bool? notify, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages';

    // ignore: prefer_final_locals
    Object? postBody = workPackage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.
  ///
  /// Parameters:
  ///
  /// * [WorkPackage] workPackage (required):
  ///   Work package to add (a project link ist requried)
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  Future<WorkPackage?> apiV3WorkPackagesPost(WorkPackage workPackage, { bool? notify, }) async {
    final response = await apiV3WorkPackagesPostWithHttpInfo(workPackage,  notify: notify, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackage',) as WorkPackage;
    
    }
    return null;
  }

  /// List Work Package Schemas
  ///
  /// List work package schemas.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters (required):
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id
  Future<Response> apiV3WorkPackagesSchemasGetWithHttpInfo(String filters,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/schemas/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'filters', filters));

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List Work Package Schemas
  ///
  /// List work package schemas.
  ///
  /// Parameters:
  ///
  /// * [String] filters (required):
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id
  Future<void> apiV3WorkPackagesSchemasGet(String filters,) async {
    final response = await apiV3WorkPackagesSchemasGetWithHttpInfo(filters,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View Work Package Schema
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] identifier (required):
  ///   Identifier of the schema
  Future<Response> apiV3WorkPackagesSchemasIdentifierGetWithHttpInfo(String identifier,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/schemas/{identifier}'
      .replaceAll('{identifier}', identifier);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// View Work Package Schema
  ///
  /// Parameters:
  ///
  /// * [String] identifier (required):
  ///   Identifier of the schema
  Future<void> apiV3WorkPackagesSchemasIdentifierGet(String identifier,) async {
    final response = await apiV3WorkPackagesSchemasIdentifierGetWithHttpInfo(identifier,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List relations
  ///
  /// Lists all relations this work package is involved in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  Future<Response> apiV3WorkPackagesWorkPackageIdRelationsGetWithHttpInfo(int workPackageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{work_package_id}/relations'
      .replaceAll('{work_package_id}', workPackageId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List relations
  ///
  /// Lists all relations this work package is involved in.
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  Future<void> apiV3WorkPackagesWorkPackageIdRelationsGet(int workPackageId,) async {
    final response = await apiV3WorkPackagesWorkPackageIdRelationsGetWithHttpInfo(workPackageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Relation
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  Future<Response> apiV3WorkPackagesWorkPackageIdRelationsPostWithHttpInfo(int workPackageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{work_package_id}/relations'
      .replaceAll('{work_package_id}', workPackageId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Create Relation
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  Future<void> apiV3WorkPackagesWorkPackageIdRelationsPost(int workPackageId,) async {
    final response = await apiV3WorkPackagesWorkPackageIdRelationsPostWithHttpInfo(workPackageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List watchers
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  Future<Response> apiV3WorkPackagesWorkPackageIdWatchersGetWithHttpInfo(int workPackageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{work_package_id}/watchers'
      .replaceAll('{work_package_id}', workPackageId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// List watchers
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  Future<void> apiV3WorkPackagesWorkPackageIdWatchersGet(int workPackageId,) async {
    final response = await apiV3WorkPackagesWorkPackageIdWatchersGetWithHttpInfo(workPackageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove watcher
  ///
  /// Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  ///
  /// * [int] id (required):
  ///   User id
  Future<Response> apiV3WorkPackagesWorkPackageIdWatchersIdDeleteWithHttpInfo(int workPackageId, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{work_package_id}/watchers/{id}'
      .replaceAll('{work_package_id}', workPackageId.toString())
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Remove watcher
  ///
  /// Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  ///
  /// * [int] id (required):
  ///   User id
  Future<void> apiV3WorkPackagesWorkPackageIdWatchersIdDelete(int workPackageId, int id,) async {
    final response = await apiV3WorkPackagesWorkPackageIdWatchersIdDeleteWithHttpInfo(workPackageId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add watcher
  ///
  /// Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  ///
  /// * [InlineObject6] inlineObject6:
  Future<Response> apiV3WorkPackagesWorkPackageIdWatchersPostWithHttpInfo(int workPackageId, { InlineObject6? inlineObject6, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{work_package_id}/watchers'
      .replaceAll('{work_package_id}', workPackageId.toString());

    // ignore: prefer_final_locals
    Object? postBody = inlineObject6;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Add watcher
  ///
  /// Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  ///
  /// * [InlineObject6] inlineObject6:
  Future<void> apiV3WorkPackagesWorkPackageIdWatchersPost(int workPackageId, { InlineObject6? inlineObject6, }) async {
    final response = await apiV3WorkPackagesWorkPackageIdWatchersPostWithHttpInfo(workPackageId,  inlineObject6: inlineObject6, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
