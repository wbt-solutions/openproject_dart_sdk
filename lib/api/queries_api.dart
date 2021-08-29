//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class QueriesApi {
  QueriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// View default query for project
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id of the project the default query is requested for
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Response> apiV3ProjectsIdQueriesDefaultGetWithHttpInfo(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, bool showHierarchies }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/projects/{id}/queries/default'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
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
    if (timelineVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timelineVisible', timelineVisible));
    }
    if (showHierarchies != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'showHierarchies', showHierarchies));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// View default query for project
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id of the project the default query is requested for
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<void> apiV3ProjectsIdQueriesDefaultGet(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, bool showHierarchies }) async {
    final response = await apiV3ProjectsIdQueriesDefaultGetWithHttpInfo(id,  filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timelineVisible: timelineVisible, showHierarchies: showHierarchies );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View schema for project queries
  ///
  /// Retrieve the schema for project queries.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of project to return
  Future<Response> apiV3ProjectsIdQueriesSchemaGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/projects/{id}/queries/schema'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// View schema for project queries
  ///
  /// Retrieve the schema for project queries.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of project to return
  Future<void> apiV3ProjectsIdQueriesSchemaGet(int id) async {
    final response = await apiV3ProjectsIdQueriesSchemaGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Available projects
  ///
  /// Gets a list of projects that are available as projects a query can be assigned to.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3QueriesAvailableProjectsGetWithHttpInfo() async {
    final path = r'/api/v3/queries/available_projects';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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
  /// Gets a list of projects that are available as projects a query can be assigned to.
  Future<void> apiV3QueriesAvailableProjectsGet() async {
    final response = await apiV3QueriesAvailableProjectsGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View default query
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineZoomLevel:
  ///   Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Response> apiV3QueriesDefaultGetWithHttpInfo({ String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineZoomLevel, bool showHierarchies }) async {
    // Verify required params are set.

    final path = r'/api/v3/queries/default';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
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
    if (timelineVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timelineVisible', timelineVisible));
    }
    if (timelineZoomLevel != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timelineZoomLevel', timelineZoomLevel));
    }
    if (showHierarchies != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'showHierarchies', showHierarchies));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// View default query
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineZoomLevel:
  ///   Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<void> apiV3QueriesDefaultGet({ String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineZoomLevel, bool showHierarchies }) async {
    final response = await apiV3QueriesDefaultGetWithHttpInfo( filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timelineVisible: timelineVisible, timelineZoomLevel: timelineZoomLevel, showHierarchies: showHierarchies );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Query Create Form
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3QueriesFormPostWithHttpInfo() async {
    final path = r'/api/v3/queries/form';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// Query Create Form
  Future<void> apiV3QueriesFormPost() async {
    final response = await apiV3QueriesFormPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List queries
  ///
  /// Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.
  Future<Response> apiV3QueriesGetWithHttpInfo({ String filters }) async {
    // Verify required params are set.

    final path = r'/api/v3/queries';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// List queries
  ///
  /// Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.
  Future<void> apiV3QueriesGet({ String filters }) async {
    final response = await apiV3QueriesGetWithHttpInfo( filters: filters );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete query
  ///
  /// Delete the query identified by the id parameter
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<Response> apiV3QueriesIdDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/queries/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// Delete query
  ///
  /// Delete the query identified by the id parameter
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<void> apiV3QueriesIdDelete(int id) async {
    final response = await apiV3QueriesIdDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View query
  ///
  /// Retreive an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineLabels:
  ///   Overridden labels in the timeline view
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Response> apiV3QueriesIdGetWithHttpInfo(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineLabels, bool showHierarchies }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/queries/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }
    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
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
    if (timelineVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timelineVisible', timelineVisible));
    }
    if (timelineLabels != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timelineLabels', timelineLabels));
    }
    if (showHierarchies != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'showHierarchies', showHierarchies));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// View query
  ///
  /// Retreive an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted.
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the querie's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the querie's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the querie's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineLabels:
  ///   Overridden labels in the timeline view
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<void> apiV3QueriesIdGet(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineLabels, bool showHierarchies }) async {
    final response = await apiV3QueriesIdGetWithHttpInfo(id,  filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timelineVisible: timelineVisible, timelineLabels: timelineLabels, showHierarchies: showHierarchies );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Edit Query
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [InlineObject2] inlineObject2:
  Future<Response> apiV3QueriesIdPatchWithHttpInfo(int id, { InlineObject2 inlineObject2 }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/queries/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody = inlineObject2;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// Edit Query
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [InlineObject2] inlineObject2:
  Future<void> apiV3QueriesIdPatch(int id, { InlineObject2 inlineObject2 }) async {
    final response = await apiV3QueriesIdPatchWithHttpInfo(id,  inlineObject2: inlineObject2 );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Star query
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<Response> apiV3QueriesIdStarPatchWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/queries/{id}/star'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// Star query
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<void> apiV3QueriesIdStarPatch(int id) async {
    final response = await apiV3QueriesIdStarPatchWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unstar query
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<Response> apiV3QueriesIdUnstarPatchWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/queries/{id}/unstar'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// Unstar query
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<void> apiV3QueriesIdUnstarPatch(int id) async {
    final response = await apiV3QueriesIdUnstarPatchWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create query
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3QueriesPostWithHttpInfo() async {
    final path = r'/api/v3/queries';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// Create query
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  Future<void> apiV3QueriesPost() async {
    final response = await apiV3QueriesPostWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View schema for global queries
  ///
  /// Retrieve the schema for global queries, those, that are not assigned to a project.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3QueriesSchemaGetWithHttpInfo() async {
    final path = r'/api/v3/queries/schema';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


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

  /// View schema for global queries
  ///
  /// Retrieve the schema for global queries, those, that are not assigned to a project.
  Future<void> apiV3QueriesSchemaGet() async {
    final response = await apiV3QueriesSchemaGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
