//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WorkPackagesApi {
  WorkPackagesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Work Package Create Form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the project in which the work package will be created
  Future<Response> apiV3ProjectsIdWorkPackagesFormPostWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/projects/{id}/work_packages/form'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Work Package Create Form
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the project in which the work package will be created
  Future<void> apiV3ProjectsIdWorkPackagesFormPost(int id) async {
    final response = await apiV3ProjectsIdWorkPackagesFormPostWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  /// * [List<Map<String, Object>>] filters:
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
  Future<Response> apiV3ProjectsIdWorkPackagesGetWithHttpInfo(int id, { int offset, int pageSize, List<Map<String, Object>> filters, String sortBy, String groupBy, bool showSums }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/projects/{id}/work_packages'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }
    if (groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'groupBy', groupBy));
    }
    if (showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'showSums', showSums));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  /// * [List<Map<String, Object>>] filters:
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
  Future<WorkPackages> apiV3ProjectsIdWorkPackagesGet(int id, { int offset, int pageSize, List<Map<String, Object>> filters, String sortBy, String groupBy, bool showSums }) async {
    final response = await apiV3ProjectsIdWorkPackagesGetWithHttpInfo(id,  offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackages') as WorkPackages;
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
  Future<Response> apiV3ProjectsIdWorkPackagesPostWithHttpInfo(int id, WorkPackage workPackage, { bool notify }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (workPackage == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workPackage');
    }

    final path = '/api/v3/projects/{id}/work_packages'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody = workPackage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'notify', notify));
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<WorkPackage> apiV3ProjectsIdWorkPackagesPost(int id, WorkPackage workPackage, { bool notify }) async {
    final response = await apiV3ProjectsIdWorkPackagesPostWithHttpInfo(id, workPackage,  notify: notify );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
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
  Future<Response> apiV3ProjectsProjectIdAvailableAssigneesGetWithHttpInfo(int projectId) async {
    // Verify required params are set.
    if (projectId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectId');
    }

    final path = '/api/v3/projects/{project_id}/available_assignees'
      .replaceAll('{' + 'project_id' + '}', projectId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<Users> apiV3ProjectsProjectIdAvailableAssigneesGet(int projectId) async {
    final response = await apiV3ProjectsProjectIdAvailableAssigneesGetWithHttpInfo(projectId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Users') as Users;
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
  Future<Response> apiV3ProjectsProjectIdAvailableResponsiblesGetWithHttpInfo(int projectId) async {
    // Verify required params are set.
    if (projectId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectId');
    }

    final path = '/api/v3/projects/{project_id}/available_responsibles'
      .replaceAll('{' + 'project_id' + '}', projectId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<Users> apiV3ProjectsProjectIdAvailableResponsiblesGet(int projectId) async {
    final response = await apiV3ProjectsProjectIdAvailableResponsiblesGetWithHttpInfo(projectId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Users') as Users;
    }
    return null;
  }

  /// Work Package Create Form
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3WorkPackagesFormPostWithHttpInfo() async {
    final path = '/api/v3/work_packages/form';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Work Package Create Form
  Future<void> apiV3WorkPackagesFormPost() async {
    final response = await apiV3WorkPackagesFormPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesGetWithHttpInfo({ int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async {
    // Verify required params are set.

    final path = '/api/v3/work_packages';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }
    if (groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'groupBy', groupBy));
    }
    if (showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'showSums', showSums));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<WorkPackages> apiV3WorkPackagesGet({ int offset, int pageSize, String filters, String sortBy, String groupBy, bool showSums }) async {
    final response = await apiV3WorkPackagesGetWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackages') as WorkPackages;
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
  Future<Response> apiV3WorkPackagesIdActivitiesGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/activities'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List work package activities
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<void> apiV3WorkPackagesIdActivitiesGet(int id) async {
    final response = await apiV3WorkPackagesIdActivitiesGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  /// * [UNKNOWN_BASE_TYPE] UNKNOWN_BASE_TYPE:
  Future<Response> apiV3WorkPackagesIdActivitiesPostWithHttpInfo(int id, { bool notify, dynamic UNKNOWN_BASE_TYPE }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/activities'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody = UNKNOWN_BASE_TYPE;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'notify', notify));
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  /// * [UNKNOWN_BASE_TYPE] UNKNOWN_BASE_TYPE:
  Future<void> apiV3WorkPackagesIdActivitiesPost(int id, { bool notify, dynamic UNKNOWN_BASE_TYPE }) async {
    final response = await apiV3WorkPackagesIdActivitiesPostWithHttpInfo(id,  notify: notify, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesIdAvailableProjectsGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/available_projects'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesIdAvailableProjectsGet(int id) async {
    final response = await apiV3WorkPackagesIdAvailableProjectsGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] query:
  ///   Shortcut for filtering by ID or subject
  ///
  /// * [String] type:
  ///   Type of relation to find candidates for (default \"relates\")
  Future<Response> apiV3WorkPackagesIdAvailableRelationCandidatesGetWithHttpInfo(int id, { int pageSize, List<Map<String, Object>> filters, String query, String type }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/available_relation_candidates'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filters', filters));
    }
    if (query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'query', query));
    }
    if (type != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'type', type));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] query:
  ///   Shortcut for filtering by ID or subject
  ///
  /// * [String] type:
  ///   Type of relation to find candidates for (default \"relates\")
  Future<void> apiV3WorkPackagesIdAvailableRelationCandidatesGet(int id, { int pageSize, List<Map<String, Object>> filters, String query, String type }) async {
    final response = await apiV3WorkPackagesIdAvailableRelationCandidatesGetWithHttpInfo(id,  pageSize: pageSize, filters: filters, query: query, type: type );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesIdAvailableWatchersGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/available_watchers'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesIdAvailableWatchersGet(int id) async {
    final response = await apiV3WorkPackagesIdAvailableWatchersGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesIdDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesIdDelete(int id) async {
    final response = await apiV3WorkPackagesIdDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesIdFormPostWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/form'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Work Package Edit Form
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package being modified
  Future<void> apiV3WorkPackagesIdFormPost(int id) async {
    final response = await apiV3WorkPackagesIdFormPostWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesIdGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// View Work Package
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<WorkPackage> apiV3WorkPackagesIdGet(int id) async {
    final response = await apiV3WorkPackagesIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
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
  Future<Response> apiV3WorkPackagesIdPatchWithHttpInfo(int id, { bool notify, WorkPackage workPackage }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody = workPackage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'notify', notify));
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<WorkPackage> apiV3WorkPackagesIdPatch(int id, { bool notify, WorkPackage workPackage }) async {
    final response = await apiV3WorkPackagesIdPatchWithHttpInfo(id,  notify: notify, workPackage: workPackage );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
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
  Future<Response> apiV3WorkPackagesIdRelationsFormPostWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/relations/form'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Relation create form
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the relation being modified
  Future<void> apiV3WorkPackagesIdRelationsFormPost(int id) async {
    final response = await apiV3WorkPackagesIdRelationsFormPostWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesIdRevisionsGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{id}/revisions'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesIdRevisionsGet(int id) async {
    final response = await apiV3WorkPackagesIdRevisionsGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesPostWithHttpInfo(WorkPackage workPackage, { bool notify }) async {
    // Verify required params are set.
    if (workPackage == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workPackage');
    }

    final path = '/api/v3/work_packages';

    Object postBody = workPackage;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'notify', notify));
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<WorkPackage> apiV3WorkPackagesPost(WorkPackage workPackage, { bool notify }) async {
    final response = await apiV3WorkPackagesPostWithHttpInfo(workPackage,  notify: notify );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WorkPackage') as WorkPackage;
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
  /// * [List<Map<String, Object>>] filters (required):
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id
  Future<Response> apiV3WorkPackagesSchemasGetWithHttpInfo(List<Map<String, Object>> filters) async {
    // Verify required params are set.
    if (filters == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: filters');
    }

    final path = '/api/v3/work_packages/schemas/';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filters', filters));

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List Work Package Schemas
  ///
  /// List work package schemas.
  ///
  /// Parameters:
  ///
  /// * [List<Map<String, Object>>] filters (required):
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + id: The schema's id
  Future<void> apiV3WorkPackagesSchemasGet(List<Map<String, Object>> filters) async {
    final response = await apiV3WorkPackagesSchemasGetWithHttpInfo(filters);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesSchemasIdentifierGetWithHttpInfo(String identifier) async {
    // Verify required params are set.
    if (identifier == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: identifier');
    }

    final path = '/api/v3/work_packages/schemas/{identifier}'
      .replaceAll('{' + 'identifier' + '}', identifier.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// View Work Package Schema
  ///
  /// Parameters:
  ///
  /// * [String] identifier (required):
  ///   Identifier of the schema
  Future<void> apiV3WorkPackagesSchemasIdentifierGet(String identifier) async {
    final response = await apiV3WorkPackagesSchemasIdentifierGetWithHttpInfo(identifier);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesWorkPackageIdRelationsGetWithHttpInfo(int workPackageId) async {
    // Verify required params are set.
    if (workPackageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workPackageId');
    }

    final path = '/api/v3/work_packages/{work_package_id}/relations'
      .replaceAll('{' + 'work_package_id' + '}', workPackageId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesWorkPackageIdRelationsGet(int workPackageId) async {
    final response = await apiV3WorkPackagesWorkPackageIdRelationsGetWithHttpInfo(workPackageId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesWorkPackageIdRelationsPostWithHttpInfo(int workPackageId) async {
    // Verify required params are set.
    if (workPackageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workPackageId');
    }

    final path = '/api/v3/work_packages/{work_package_id}/relations'
      .replaceAll('{' + 'work_package_id' + '}', workPackageId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesWorkPackageIdRelationsPost(int workPackageId) async {
    final response = await apiV3WorkPackagesWorkPackageIdRelationsPostWithHttpInfo(workPackageId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesWorkPackageIdWatchersGetWithHttpInfo(int workPackageId) async {
    // Verify required params are set.
    if (workPackageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workPackageId');
    }

    final path = '/api/v3/work_packages/{work_package_id}/watchers'
      .replaceAll('{' + 'work_package_id' + '}', workPackageId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List watchers
  ///
  /// Parameters:
  ///
  /// * [int] workPackageId (required):
  ///   Work package id
  Future<void> apiV3WorkPackagesWorkPackageIdWatchersGet(int workPackageId) async {
    final response = await apiV3WorkPackagesWorkPackageIdWatchersGetWithHttpInfo(workPackageId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesWorkPackageIdWatchersIdDeleteWithHttpInfo(int workPackageId, int id) async {
    // Verify required params are set.
    if (workPackageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workPackageId');
    }
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = '/api/v3/work_packages/{work_package_id}/watchers/{id}'
      .replaceAll('{' + 'work_package_id' + '}', workPackageId.toString())
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesWorkPackageIdWatchersIdDelete(int workPackageId, int id) async {
    final response = await apiV3WorkPackagesWorkPackageIdWatchersIdDeleteWithHttpInfo(workPackageId, id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3WorkPackagesWorkPackageIdWatchersPostWithHttpInfo(int workPackageId, { InlineObject6 inlineObject6 }) async {
    // Verify required params are set.
    if (workPackageId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: workPackageId');
    }

    final path = '/api/v3/work_packages/{work_package_id}/watchers'
      .replaceAll('{' + 'work_package_id' + '}', workPackageId.toString());

    Object postBody = inlineObject6;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
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
  Future<void> apiV3WorkPackagesWorkPackageIdWatchersPost(int workPackageId, { InlineObject6 inlineObject6 }) async {
    final response = await apiV3WorkPackagesWorkPackageIdWatchersPostWithHttpInfo(workPackageId,  inlineObject6: inlineObject6 );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
