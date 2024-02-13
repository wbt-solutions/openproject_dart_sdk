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

  /// Add watcher
  ///
  /// Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [AddWatcherRequest] addWatcherRequest:
  Future<Response> addWatcherWithHttpInfo(int id, { AddWatcherRequest? addWatcherRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/watchers'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = addWatcherRequest;

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

  /// Add watcher
  ///
  /// Adds a watcher to the specified work package.  The request is expected to contain a single JSON object, that contains a link object under the `user` key.  The response will be user added as watcher. In case the user was already watching the work package an `HTTP 200` is returned, an `HTTP 201` if the user was added as a new watcher.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [AddWatcherRequest] addWatcherRequest:
  Future<void> addWatcher(int id, { AddWatcherRequest? addWatcherRequest, }) async {
    final response = await addWatcherWithHttpInfo(id,  addWatcherRequest: addWatcherRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Available projects for work package
  ///
  /// Gets a list of projects that are available as projects to which the work package can be moved.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<Response> availableProjectsForWorkPackageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/available_projects'
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

  /// Available projects for work package
  ///
  /// Gets a list of projects that are available as projects to which the work package can be moved.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<Object?> availableProjectsForWorkPackage(int id,) async {
    final response = await availableProjectsForWorkPackageWithHttpInfo(id,);
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

  /// Available responsibles
  ///
  /// Gets a list of users that can be assigned as the responsible of a work package in the given project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> availableResponsiblesWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/available_responsibles'
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

  /// Available responsibles
  ///
  /// Gets a list of users that can be assigned as the responsible of a work package in the given project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Object?> availableResponsibles(int id,) async {
    final response = await availableResponsiblesWithHttpInfo(id,);
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
  Future<Response> availableWatchersWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/available_watchers'
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

  /// Available watchers
  ///
  /// Gets a list of users that are able to be watchers of the specified work package.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   work package id
  Future<Object?> availableWatchers(int id,) async {
    final response = await availableWatchersWithHttpInfo(id,);
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
  /// * [CommentWorkPackageRequest] commentWorkPackageRequest:
  Future<Response> commentWorkPackageWithHttpInfo(int id, { bool? notify, CommentWorkPackageRequest? commentWorkPackageRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/activities'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = commentWorkPackageRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

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
  /// * [CommentWorkPackageRequest] commentWorkPackageRequest:
  Future<void> commentWorkPackage(int id, { bool? notify, CommentWorkPackageRequest? commentWorkPackageRequest, }) async {
    final response = await commentWorkPackageWithHttpInfo(id,  notify: notify, commentWorkPackageRequest: commentWorkPackageRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create work package in project
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
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  Future<Response> createProjectWorkPackageWithHttpInfo(int id, { bool? notify, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/work_packages'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

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

  /// Create work package in project
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  Future<WorkPackageModel?> createProjectWorkPackage(int id, { bool? notify, }) async {
    final response = await createProjectWorkPackageWithHttpInfo(id,  notify: notify, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackageModel',) as WorkPackageModel;
    
    }
    return null;
  }

  /// Create Relation
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> createRelationWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/relations'
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

  /// Create Relation
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Relation can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<void> createRelation(int id,) async {
    final response = await createRelationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [WorkPackageModel] workPackageModel:
  Future<Response> createWorkPackageWithHttpInfo({ bool? notify, WorkPackageModel? workPackageModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages';

    // ignore: prefer_final_locals
    Object? postBody = workPackageModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

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

  /// Create Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a WorkPackage can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  A project link must be set when creating work packages through this route.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.
  ///
  /// Parameters:
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications (e.g. via E-Mail) should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [WorkPackageModel] workPackageModel:
  Future<WorkPackageModel?> createWorkPackage({ bool? notify, WorkPackageModel? workPackageModel, }) async {
    final response = await createWorkPackageWithHttpInfo( notify: notify, workPackageModel: workPackageModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackageModel',) as WorkPackageModel;
    
    }
    return null;
  }

  /// Creates file links.
  ///
  /// Creates file links on a work package.  The request is interpreted as a bulk insert, where every element of the collection is validated separately. Each element contains the origin meta data and a link to the storage, the file link is about to point to. The storage link can be provided as a resource link with id or as the host url.  The file's id and name are considered mandatory information. The rest of the origin meta data SHOULD be provided by the client. The _mimeType_ SHOULD be a standard mime type. An empty mime type will be handled as unknown. To link a folder, the custom mime type `application/x-op-directory` MUST be used.  Up to 20 file links can be submitted at once.  If any element data is invalid, no file links will be created.  If a file link with matching origin id, work package, and storage already exists, then it will not create an additional file link or update the meta data. Instead the information from the existing file link will be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [FileLinkCollectionWriteModel] fileLinkCollectionWriteModel:
  Future<Response> createWorkPackageFileLinkWithHttpInfo(int id, { FileLinkCollectionWriteModel? fileLinkCollectionWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/file_links'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = fileLinkCollectionWriteModel;

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

  /// Creates file links.
  ///
  /// Creates file links on a work package.  The request is interpreted as a bulk insert, where every element of the collection is validated separately. Each element contains the origin meta data and a link to the storage, the file link is about to point to. The storage link can be provided as a resource link with id or as the host url.  The file's id and name are considered mandatory information. The rest of the origin meta data SHOULD be provided by the client. The _mimeType_ SHOULD be a standard mime type. An empty mime type will be handled as unknown. To link a folder, the custom mime type `application/x-op-directory` MUST be used.  Up to 20 file links can be submitted at once.  If any element data is invalid, no file links will be created.  If a file link with matching origin id, work package, and storage already exists, then it will not create an additional file link or update the meta data. Instead the information from the existing file link will be returned.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [FileLinkCollectionWriteModel] fileLinkCollectionWriteModel:
  Future<FileLinkCollectionReadModel?> createWorkPackageFileLink(int id, { FileLinkCollectionWriteModel? fileLinkCollectionWriteModel, }) async {
    final response = await createWorkPackageFileLinkWithHttpInfo(id,  fileLinkCollectionWriteModel: fileLinkCollectionWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileLinkCollectionReadModel',) as FileLinkCollectionReadModel;
    
    }
    return null;
  }

  /// Delete Work Package
  ///
  /// Deletes the work package, as well as:  - all associated time entries - its hierarchy of child work packages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> deleteWorkPackageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}'
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

  /// Delete Work Package
  ///
  /// Deletes the work package, as well as:  - all associated time entries - its hierarchy of child work packages
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<void> deleteWorkPackage(int id,) async {
    final response = await deleteWorkPackageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get work packages of project
  ///
  /// Returns the collection of work packages that are related to the given project.
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<Response> getProjectWorkPackageCollectionWithHttpInfo(int id, { int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, String? select, }) async {
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

  /// Get work packages of project
  ///
  /// Returns the collection of work packages that are related to the given project.
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  Future<WorkPackagesModel?> getProjectWorkPackageCollection(int id, { int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, String? select, }) async {
    final response = await getProjectWorkPackageCollectionWithHttpInfo(id,  offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums, select: select, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackagesModel',) as WorkPackagesModel;
    
    }
    return null;
  }

  /// Available relation candidates
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
  /// * [int] pageSize:
  ///   Maximum number of candidates to list (default 10)
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same filters as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint.
  ///
  /// * [String] query:
  ///   Shortcut for filtering by ID or subject
  ///
  /// * [String] type:
  ///   Type of relation to find candidates for (default \"relates\")
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same sort criteria as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint.
  Future<Response> listAvailableRelationCandidatesWithHttpInfo(int id, { int? pageSize, String? filters, String? query, String? type, String? sortBy, }) async {
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

  /// Available relation candidates
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  ///
  /// * [int] pageSize:
  ///   Maximum number of candidates to list (default 10)
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same filters as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint.
  ///
  /// * [String] query:
  ///   Shortcut for filtering by ID or subject
  ///
  /// * [String] type:
  ///   Type of relation to find candidates for (default \"relates\")
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same sort criteria as the [work packages](https://www.openproject.org/docs/api/endpoints/work-packages/) endpoint.
  Future<Object?> listAvailableRelationCandidates(int id, { int? pageSize, String? filters, String? query, String? type, String? sortBy, }) async {
    final response = await listAvailableRelationCandidatesWithHttpInfo(id,  pageSize: pageSize, filters: filters, query: query, type: type, sortBy: sortBy, );
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

  /// List relations
  ///
  /// Lists all relations this work package is involved in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> listRelationsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/relations'
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

  /// List relations
  ///
  /// Lists all relations this work package is involved in.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<void> listRelations(int id,) async {
    final response = await listRelationsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List watchers
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> listWatchersWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/watchers'
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

  /// List watchers
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<WatchersModel?> listWatchers(int id,) async {
    final response = await listWatchersWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WatchersModel',) as WatchersModel;
    
    }
    return null;
  }

  /// List work package activities
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> listWorkPackageActivitiesWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/activities'
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

  /// List work package activities
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Object?> listWorkPackageActivities(int id,) async {
    final response = await listWorkPackageActivitiesWithHttpInfo(id,);
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

  /// Gets all file links of a work package
  ///
  /// Gets all file links of a work package.  As a side effect, for every file link a request is sent to the storage's origin to fetch live data and patch the file link's data before returning, as well as retrieving permissions of the user on this origin file. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage
  Future<Response> listWorkPackageFileLinksWithHttpInfo(int id, { String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/file_links'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
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

  /// Gets all file links of a work package
  ///
  /// Gets all file links of a work package.  As a side effect, for every file link a request is sent to the storage's origin to fetch live data and patch the file link's data before returning, as well as retrieving permissions of the user on this origin file. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage
  Future<FileLinkCollectionReadModel?> listWorkPackageFileLinks(int id, { String? filters, }) async {
    final response = await listWorkPackageFileLinksWithHttpInfo(id,  filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileLinkCollectionReadModel',) as FileLinkCollectionReadModel;
    
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: The schema's id  Schema id has the form `project_id-work_package_type_id`.
  Future<Response> listWorkPackageSchemasWithHttpInfo(String filters,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/schemas';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'filters', filters));

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

  /// List Work Package Schemas
  ///
  /// List work package schemas.
  ///
  /// Parameters:
  ///
  /// * [String] filters (required):
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + id: The schema's id  Schema id has the form `project_id-work_package_type_id`.
  Future<Object?> listWorkPackageSchemas(String filters,) async {
    final response = await listWorkPackageSchemasWithHttpInfo(filters,);
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

  /// List work packages
  ///
  /// Returns a collection of work packages.
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`), otherwise a default filter is applied. A Currently supported filters are (there are additional filters added by modules):  - assigned_to - assignee_or_group - attachment_base - attachment_content - attachment_file_name - author - blocked - blocks - category - comment - created_at - custom_field - dates_interval - description - done_ratio - due_date - duplicated - duplicates - duration - estimated_hours - file_link_origin_id - follows - group - id - includes - linkable_to_storage_id - linkable_to_storage_url - manual_sort - milestone - only_subproject - parent - partof - precedes - principal_base - priority - project - relatable - relates - required - requires - responsible - role - search - start_date - status - storage_id - storage_url - subject - subject_or_id - subproject - type - typeahead - updated_at - version - watcher - work_package
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  ///
  /// * [String] timestamps:
  ///   In order to perform a [baseline comparison](/docs/api/baseline-comparisons), you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available.
  Future<Response> listWorkPackagesWithHttpInfo({ int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, String? select, String? timestamps, }) async {
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
    if (select != null) {
      queryParams.addAll(_queryParams('', 'select', select));
    }
    if (timestamps != null) {
      queryParams.addAll(_queryParams('', 'timestamps', timestamps));
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

  /// List work packages
  ///
  /// Returns a collection of work packages.
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
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. If no filter is to be applied, the client should send an empty array (`[]`), otherwise a default filter is applied. A Currently supported filters are (there are additional filters added by modules):  - assigned_to - assignee_or_group - attachment_base - attachment_content - attachment_file_name - author - blocked - blocks - category - comment - created_at - custom_field - dates_interval - description - done_ratio - due_date - duplicated - duplicates - duration - estimated_hours - file_link_origin_id - follows - group - id - includes - linkable_to_storage_id - linkable_to_storage_url - manual_sort - milestone - only_subproject - parent - partof - precedes - principal_base - priority - project - relatable - relates - required - requires - responsible - role - search - start_date - status - storage_id - storage_url - subject - subject_or_id - subproject - type - typeahead - updated_at - version - watcher - work_package
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
  ///
  /// * [String] groupBy:
  ///   The column to group by.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it.
  ///
  /// * [String] select:
  ///   Comma separated list of properties to include.
  ///
  /// * [String] timestamps:
  ///   In order to perform a [baseline comparison](/docs/api/baseline-comparisons), you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available.
  Future<WorkPackagesModel?> listWorkPackages({ int? offset, int? pageSize, String? filters, String? sortBy, String? groupBy, bool? showSums, String? select, String? timestamps, }) async {
    final response = await listWorkPackagesWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters, sortBy: sortBy, groupBy: groupBy, showSums: showSums, select: select, timestamps: timestamps, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackagesModel',) as WorkPackagesModel;
    
    }
    return null;
  }

  /// Project Available assignees
  ///
  /// Gets a list of users that can be assigned to work packages in the given project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> projectAvailableAssigneesWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/available_assignees'
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

  /// Project Available assignees
  ///
  /// Gets a list of users that can be assigned to work packages in the given project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Object?> projectAvailableAssignees(int id,) async {
    final response = await projectAvailableAssigneesWithHttpInfo(id,);
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

  /// Remove watcher
  ///
  /// Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [int] userId (required):
  ///   User id
  Future<Response> removeWatcherWithHttpInfo(int id, int userId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/watchers/{user_id}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{user_id}', userId.toString());

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

  /// Remove watcher
  ///
  /// Removes the specified user from the list of watchers for the given work package.  If the request succeeds, the specified user is not watching the work package anymore.  *Note: This might also be the case, if the specified user did not watch the work package prior to the request.*
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [int] userId (required):
  ///   User id
  Future<void> removeWatcher(int id, int userId,) async {
    final response = await removeWatcherWithHttpInfo(id, userId,);
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
  ///   Work package id
  Future<Response> revisionsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/revisions'
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

  /// Revisions
  ///
  /// Gets a list of revisions that are linked to this work package, e.g., because it is referenced in the commit message of the revision. Only linked revisions from repositories are shown if the user has the view changesets permission in the defining project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Object?> revisions(int id,) async {
    final response = await revisionsWithHttpInfo(id,);
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

  /// Update a Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](https://en.wikipedia.org/wiki/Optimistic_concurrency_control).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [WorkPackageModel] workPackageModel:
  Future<Response> updateWorkPackageWithHttpInfo(int id, { bool? notify, WorkPackageModel? workPackageModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = workPackageModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (notify != null) {
      queryParams.addAll(_queryParams('', 'notify', notify));
    }

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

  /// Update a Work Package
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.  Additionally to the fields the client wants to change, it is mandatory to provide the value of `lockVersion` which was received by the `GET` request this change originates from.  The value of `lockVersion` is used to implement [optimistic locking](https://en.wikipedia.org/wiki/Optimistic_concurrency_control).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [bool] notify:
  ///   Indicates whether change notifications should be sent. Note that this controls notifications for all users interested in changes to the work package (e.g. watchers, author and assignee), not just the current user.
  ///
  /// * [WorkPackageModel] workPackageModel:
  Future<WorkPackagePatchModel?> updateWorkPackage(int id, { bool? notify, WorkPackageModel? workPackageModel, }) async {
    final response = await updateWorkPackageWithHttpInfo(id,  notify: notify, workPackageModel: workPackageModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackagePatchModel',) as WorkPackagePatchModel;
    
    }
    return null;
  }

  /// View Work Package
  ///
  /// Returns the specified work package.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [String] timestamps:
  ///   In order to perform a [baseline comparison](/docs/api/baseline-comparisons) of the work-package attributes, you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available.
  Future<Response> viewWorkPackageWithHttpInfo(int id, { String? timestamps, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (timestamps != null) {
      queryParams.addAll(_queryParams('', 'timestamps', timestamps));
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

  /// View Work Package
  ///
  /// Returns the specified work package.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [String] timestamps:
  ///   In order to perform a [baseline comparison](/docs/api/baseline-comparisons) of the work-package attributes, you may provide one or several timestamps in ISO-8601 format as comma-separated list. The timestamps may be absolute or relative, such as ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\".  Usually, the first timestamp is the baseline date, the last timestamp is the current date. Values older than 1 day are accepted only with valid Enterprise Token available.
  Future<WorkPackageModel?> viewWorkPackage(int id, { String? timestamps, }) async {
    final response = await viewWorkPackageWithHttpInfo(id,  timestamps: timestamps, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkPackageModel',) as WorkPackageModel;
    
    }
    return null;
  }

  /// View Work Package Schema
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] identifier (required):
  ///   Identifier of the schema
  Future<Response> viewWorkPackageSchemaWithHttpInfo(String identifier,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/schemas/{identifier}'
      .replaceAll('{identifier}', identifier);

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

  /// View Work Package Schema
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [String] identifier (required):
  ///   Identifier of the schema
  Future<void> viewWorkPackageSchema(String identifier,) async {
    final response = await viewWorkPackageSchemaWithHttpInfo(identifier,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Work Package Available assignees
  ///
  /// Gets a list of users that can be assigned to the given work package.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Response> workPackageAvailableAssigneesWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/available_assignees'
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

  /// Work Package Available assignees
  ///
  /// Gets a list of users that can be assigned to the given work package.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  Future<Object?> workPackageAvailableAssignees(int id,) async {
    final response = await workPackageAvailableAssigneesWithHttpInfo(id,);
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

  /// Work Package Create Form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> workPackageCreateFormWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/form';

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

  /// Work Package Create Form
  ///
  /// 
  Future<void> workPackageCreateForm() async {
    final response = await workPackageCreateFormWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Work Package Create Form For Project
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the project in which the work package will be created
  Future<Response> workPackageCreateFormForProjectWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/work_packages/form'
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

  /// Work Package Create Form For Project
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the project in which the work package will be created
  Future<void> workPackageCreateFormForProject(int id,) async {
    final response = await workPackageCreateFormForProjectWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Work Package Edit Form
  ///
  /// When calling this endpoint, the client provides a single object containing the properties and links to be edited, in the body.  Note that it is only allowed to provide properties or links supporting the write operation.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package being modified
  ///
  /// * [WorkPackageModel] workPackageModel:
  Future<Response> workPackageEditFormWithHttpInfo(int id, { WorkPackageModel? workPackageModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = workPackageModel;

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

  /// Work Package Edit Form
  ///
  /// When calling this endpoint, the client provides a single object containing the properties and links to be edited, in the body.  Note that it is only allowed to provide properties or links supporting the write operation.  When setting start date, finish date, and duration together, their correctness will be checked and a 422 error will be returned if one value does not match with the two others. You can make the server compute a value: set only two values in the request and the third one will be computed and returned in the response. For instance, when sending `{ \"startDate\": \"2022-08-23\", duration: \"P2D\" }`, the response will include `{ \"dueDate\": \"2022-08-24\" }`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package being modified
  ///
  /// * [WorkPackageModel] workPackageModel:
  Future<void> workPackageEditForm(int id, { WorkPackageModel? workPackageModel, }) async {
    final response = await workPackageEditFormWithHttpInfo(id,  workPackageModel: workPackageModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
