//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class ProjectsApi {
  ProjectsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// list available parent project candidates
  ///
  /// Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it’s children.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions.
  ///
  /// * [String] of_:
  ///   The id or identifier of the project the parent candidate is determined for
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint and allows all the filters and sortBy supported by the project list end point.
  Future<Response> apiV3ProjectsAvailableParentProjectsGetWithHttpInfo({ List<Map<String, Object>> filters, String of_, String sortBy }) async {
    // Verify required params are set.

    final path = r'/api/v3/projects/available_parent_projects';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filters', filters));
    }
    if (of_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'of', of_));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// list available parent project candidates
  ///
  /// Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it’s children.
  ///
  /// Parameters:
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions.
  ///
  /// * [String] of_:
  ///   The id or identifier of the project the parent candidate is determined for
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint and allows all the filters and sortBy supported by the project list end point.
  Future<Projects> apiV3ProjectsAvailableParentProjectsGet({ List<Map<String, Object>> filters, String of_, String sortBy }) async {
    final response = await apiV3ProjectsAvailableParentProjectsGetWithHttpInfo( filters: filters, of_: of_, sortBy: sortBy );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Projects',) as Projects;
        }
    return Future<Projects>.value(null);
  }

  /// List projects
  ///
  /// Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.
  Future<Response> apiV3ProjectsGetWithHttpInfo({ List<Map<String, Object>> filters, String sortBy }) async {
    // Verify required params are set.

    final path = r'/api/v3/projects';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// List projects
  ///
  /// Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
  ///
  /// Parameters:
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.
  Future<Projects> apiV3ProjectsGet({ List<Map<String, Object>> filters, String sortBy }) async {
    final response = await apiV3ProjectsGetWithHttpInfo( filters: filters, sortBy: sortBy );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Projects',) as Projects;
        }
    return Future<Projects>.value(null);
  }

  /// delete project
  ///
  /// Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> apiV3ProjectsIdDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/projects/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// delete project
  ///
  /// Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<void> apiV3ProjectsIdDelete(int id) async {
    final response = await apiV3ProjectsIdDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> apiV3ProjectsIdGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/projects/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// View project
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Project> apiV3ProjectsIdGet(int id) async {
    final response = await apiV3ProjectsIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Project',) as Project;
        }
    return Future<Project>.value(null);
  }

  /// update project
  ///
  /// Updates the given project by applying the attributes provided in the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [Project] project (required):
  ///   Project changes
  Future<Response> apiV3ProjectsIdPatchWithHttpInfo(int id, Project project) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (project == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: project');
    }

    final path = r'/api/v3/projects/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody = project;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// update project
  ///
  /// Updates the given project by applying the attributes provided in the body.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [Project] project (required):
  ///   Project changes
  Future<Project> apiV3ProjectsIdPatch(int id, Project project) async {
    final response = await apiV3ProjectsIdPatchWithHttpInfo(id, project);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Project',) as Project;
        }
    return Future<Project>.value(null);
  }

  /// create project
  ///
  /// Creates a new project, applying the attributes provided in the body. You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Project] project (required):
  ///   New project attributes
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.
  Future<Response> apiV3ProjectsPostWithHttpInfo(Project project, { List<Map<String, Object>> filters, String sortBy }) async {
    // Verify required params are set.
    if (project == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: project');
    }

    final path = r'/api/v3/projects';

    Object postBody = project;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// create project
  ///
  /// Creates a new project, applying the attributes provided in the body. You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
  ///
  /// Parameters:
  ///
  /// * [Project] project (required):
  ///   New project attributes
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.
  Future<Project> apiV3ProjectsPost(Project project, { List<Map<String, Object>> filters, String sortBy }) async {
    final response = await apiV3ProjectsPostWithHttpInfo(project,  filters: filters, sortBy: sortBy );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Project',) as Project;
        }
    return Future<Project>.value(null);
  }

  /// List projects with version
  ///
  /// This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Version id
  Future<Response> apiV3VersionsIdProjectsGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/versions/{id}/projects'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// List projects with version
  ///
  /// This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Version id
  Future<void> apiV3VersionsIdProjectsGet(int id) async {
    final response = await apiV3VersionsIdProjectsGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
