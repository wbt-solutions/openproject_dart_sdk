//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class ProjectsApi {
  ProjectsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create project
  ///
  /// Creates a new project, applying the attributes provided in the body.  You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body:
  Future<Response> createProjectWithHttpInfo({ Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create project
  ///
  /// Creates a new project, applying the attributes provided in the body.  You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.
  ///
  /// Parameters:
  ///
  /// * [Object] body:
  Future<ProjectModel?> createProject({ Object? body, }) async {
    final response = await createProjectWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectModel',) as ProjectModel;
    
    }
    return null;
  }

  /// Create project copy
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> createProjectCopyWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/copy'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create project copy
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<void> createProjectCopy(int id,) async {
    final response = await createProjectCopyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete Project
  ///
  /// Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> deleteProjectWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete Project
  ///
  /// Deletes the project permanently. As this is a lengthy process, the actual deletion is carried out asynchronously. So the project might exist well after the request has returned successfully. To prevent unwanted changes to the project scheduled for deletion, it is archived at once.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<void> deleteProject(int id,) async {
    final response = await deleteProjectWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List available parent project candidates
  ///
  /// Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it's children.  To specify the project for which a parent is queried for, the `of` parameter can be provided. If no `of` parameter is provided, a new project is assumed. Then, the check for the hierarchy is omitted as a new project cannot be part of a hierarchy yet.  Candidates can be filtered. Most commonly one will want to filter by name or identifier. You can do this through the `filters` parameter which works just like the work package index.  For instance to find all parent candidates with \"rollout\" in their name:  ``` ?filters=[{\"name_and_identifier\":{\"operator\":\"~\",\"values\":[\"rollout\"]}}] ```
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions.
  ///
  /// * [String] of_:
  ///   The id or identifier of the project the parent candidate is determined for
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint and allows all the filters and sortBy supported by the project list end point.
  Future<Response> listAvailableParentProjectCandidatesWithHttpInfo({ String? filters, String? of_, String? sortBy, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/available_parent_projects';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (of_ != null) {
      queryParams.addAll(_queryParams('', 'of', of_));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List available parent project candidates
  ///
  /// Lists projects which can become parent to another project. Only sound candidates are returned. For instance a project cannot become parent of itself or it's children.  To specify the project for which a parent is queried for, the `of` parameter can be provided. If no `of` parameter is provided, a new project is assumed. Then, the check for the hierarchy is omitted as a new project cannot be part of a hierarchy yet.  Candidates can be filtered. Most commonly one will want to filter by name or identifier. You can do this through the `filters` parameter which works just like the work package index.  For instance to find all parent candidates with \"rollout\" in their name:  ``` ?filters=[{\"name_and_identifier\":{\"operator\":\"~\",\"values\":[\"rollout\"]}}] ```
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions.
  ///
  /// * [String] of_:
  ///   The id or identifier of the project the parent candidate is determined for
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint and allows all the filters and sortBy supported by the project list end point.
  Future<Object?> listAvailableParentProjectCandidates({ String? filters, String? of_, String? sortBy, }) async {
    final response = await listAvailableParentProjectCandidatesWithHttpInfo( filters: filters, of_: of_, sortBy: sortBy, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// List projects
  ///
  /// Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + active: based on the active property of the project + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor. + created_at: based on the time the project was created + latest_activity_at: based on the time the last activity was registered on a project. + name_and_identifier: based on both the name and the identifier. + parent_id: filters projects by their parent. + principal: based on members of the project. + storage_id: filters projects by linked storages + storage_url: filters projects by linked storages identified by the host url + type_id: based on the types active in a project. + user_action: based on the actions the current user has in the project. + id: based on projects' id. + visible: based on the visibility for the user (id) provided as the filter value. This filter is useful for admins to identify the projects visible to a user.  There might also be additional filters based on the custom fields that have been configured.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are:  + id + name + typeahead (sorting by hierarchy and name) + created_at + public + latest_activity_at + required_disk_space  There might also be additional orders based on the custom fields that have been configured.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<Response> listProjectsWithHttpInfo({ String? filters, String? sortBy, String? select, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (select != null) {
      queryParams.addAll(_queryParams('', 'select', select));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List projects
  ///
  /// Returns a collection of projects. The collection can be filtered via query parameters similar to how work packages are filtered. In addition to the provided filter, the result set is always limited to only contain projects the client is allowed to see.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + active: based on the active property of the project + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor. + created_at: based on the time the project was created + latest_activity_at: based on the time the last activity was registered on a project. + name_and_identifier: based on both the name and the identifier. + parent_id: filters projects by their parent. + principal: based on members of the project. + storage_id: filters projects by linked storages + storage_url: filters projects by linked storages identified by the host url + type_id: based on the types active in a project. + user_action: based on the actions the current user has in the project. + id: based on projects' id. + visible: based on the visibility for the user (id) provided as the filter value. This filter is useful for admins to identify the projects visible to a user.  There might also be additional filters based on the custom fields that have been configured.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are:  + id + name + typeahead (sorting by hierarchy and name) + created_at + public + latest_activity_at + required_disk_space  There might also be additional orders based on the custom fields that have been configured.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<ProjectCollectionModel?> listProjects({ String? filters, String? sortBy, String? select, }) async {
    final response = await listProjectsWithHttpInfo( filters: filters, sortBy: sortBy, select: select, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectCollectionModel',) as ProjectCollectionModel;
    
    }
    return null;
  }

  /// List projects having version
  ///
  /// This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Version id
  Future<Response> listProjectsWithVersionWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/versions/{id}/projects'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List projects having version
  ///
  /// This endpoint lists the projects where the given version is available.  The projects returned depend on the sharing settings of the given version, but are also limited to the projects that the current user is allowed to see.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Version id
  Future<Object?> listProjectsWithVersion(int id,) async {
    final response = await listProjectsWithVersionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Project copy form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> projectCopyFormWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/copy/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Project copy form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<void> projectCopyForm(int id,) async {
    final response = await projectCopyFormWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Project create form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] body:
  Future<Response> projectCreateFormWithHttpInfo({ Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/form';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Project create form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [Object] body:
  Future<Object?> projectCreateForm({ Object? body, }) async {
    final response = await projectCreateFormWithHttpInfo( body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Project update form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [Object] body:
  Future<Response> projectUpdateFormWithHttpInfo(int id, { Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Project update form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [Object] body:
  Future<void> projectUpdateForm(int id, { Object? body, }) async {
    final response = await projectUpdateFormWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update Project
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
  /// * [Object] body:
  Future<Response> updateProjectWithHttpInfo(int id, { Object? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update Project
  ///
  /// Updates the given project by applying the attributes provided in the body.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [Object] body:
  Future<ProjectModel?> updateProject(int id, { Object? body, }) async {
    final response = await updateProjectWithHttpInfo(id,  body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectModel',) as ProjectModel;
    
    }
    return null;
  }

  /// View project
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> viewProjectWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// View project
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<ProjectModel?> viewProject(int id,) async {
    final response = await viewProjectWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectModel',) as ProjectModel;
    
    }
    return null;
  }

  /// View project schema
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> viewProjectSchemaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/schema';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// View project schema
  ///
  /// 
  Future<Object?> viewProjectSchema() async {
    final response = await viewProjectSchemaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// View project status
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Project status id
  Future<Response> viewProjectStatusWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/project_statuses/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// View project status
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Project status id
  Future<Object?> viewProjectStatus(String id,) async {
    final response = await viewProjectStatusWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
