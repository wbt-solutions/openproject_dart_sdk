//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class QueriesApi {
  QueriesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Available projects for query
  ///
  /// Gets a list of projects that are available as projects a query can be assigned to.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> availableProjectsForQueryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/available_projects';

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

  /// Available projects for query
  ///
  /// Gets a list of projects that are available as projects a query can be assigned to.
  Future<Object?> availableProjectsForQuery() async {
    final response = await availableProjectsForQueryWithHttpInfo();
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

  /// Create query
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QueryCreateForm] queryCreateForm:
  Future<Response> createQueryWithHttpInfo({ QueryCreateForm? queryCreateForm, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries';

    // ignore: prefer_final_locals
    Object? postBody = queryCreateForm;

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

  /// Create query
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  ///
  /// Parameters:
  ///
  /// * [QueryCreateForm] queryCreateForm:
  Future<QueryModel?> createQuery({ QueryCreateForm? queryCreateForm, }) async {
    final response = await createQueryWithHttpInfo( queryCreateForm: queryCreateForm, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueryModel',) as QueryModel;
    
    }
    return null;
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
  Future<Response> deleteQueryWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/{id}'
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

  /// Delete query
  ///
  /// Delete the query identified by the id parameter
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<void> deleteQuery(int id,) async {
    final response = await deleteQueryWithHttpInfo(id,);
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
  /// * [QueryUpdateForm] queryUpdateForm:
  Future<Response> editQueryWithHttpInfo(int id, { QueryUpdateForm? queryUpdateForm, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = queryUpdateForm;

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

  /// Edit Query
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [QueryUpdateForm] queryUpdateForm:
  Future<QueryModel?> editQuery(int id, { QueryUpdateForm? queryUpdateForm, }) async {
    final response = await editQueryWithHttpInfo(id,  queryUpdateForm: queryUpdateForm, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueryModel',) as QueryModel;
    
    }
    return null;
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
  ///   JSON specifying filter conditions. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.  + id: filters queries based on their id  + updated_at: filters queries based on the last time they where updated
  Future<Response> listQueriesWithHttpInfo({ String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries';

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

  /// List queries
  ///
  /// Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Currently supported filters are:  + project: filters queries by the project they are assigned to. If the project filter is passed with the `!*` (not any) operator, global queries are returned.  + id: filters queries based on their id  + updated_at: filters queries based on the last time they where updated
  Future<Object?> listQueries({ String? filters, }) async {
    final response = await listQueriesWithHttpInfo( filters: filters, );
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

  /// Query Create Form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [QueryCreateForm] queryCreateForm:
  Future<Response> queryCreateFormWithHttpInfo({ QueryCreateForm? queryCreateForm, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/form';

    // ignore: prefer_final_locals
    Object? postBody = queryCreateForm;

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

  /// Query Create Form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [QueryCreateForm] queryCreateForm:
  Future<void> queryCreateForm({ QueryCreateForm? queryCreateForm, }) async {
    final response = await queryCreateFormWithHttpInfo( queryCreateForm: queryCreateForm, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Query Update Form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [QueryUpdateForm] queryUpdateForm:
  Future<Response> queryUpdateFormWithHttpInfo(int id, { QueryUpdateForm? queryUpdateForm, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/{id}/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = queryUpdateForm;

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

  /// Query Update Form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [QueryUpdateForm] queryUpdateForm:
  Future<void> queryUpdateForm(int id, { QueryUpdateForm? queryUpdateForm, }) async {
    final response = await queryUpdateFormWithHttpInfo(id,  queryUpdateForm: queryUpdateForm, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Star query
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<Response> starQueryWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/{id}/star'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Star query
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<Object?> starQuery(int id,) async {
    final response = await starQueryWithHttpInfo(id,);
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

  /// Unstar query
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<Response> unstarQueryWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/{id}/unstar'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Unstar query
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  Future<Object?> unstarQuery(int id,) async {
    final response = await unstarQueryWithHttpInfo(id,);
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

  /// View default query
  ///
  /// Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [String] timestamps:
  ///   Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available. 
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineZoomLevel:
  ///   Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Response> viewDefaultQueryWithHttpInfo({ String? filters, int? offset, int? pageSize, String? sortBy, String? groupBy, bool? showSums, String? timestamps, bool? timelineVisible, String? timelineZoomLevel, bool? showHierarchies, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/default';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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
    if (timestamps != null) {
      queryParams.addAll(_queryParams('', 'timestamps', timestamps));
    }
    if (timelineVisible != null) {
      queryParams.addAll(_queryParams('', 'timelineVisible', timelineVisible));
    }
    if (timelineZoomLevel != null) {
      queryParams.addAll(_queryParams('', 'timelineZoomLevel', timelineZoomLevel));
    }
    if (showHierarchies != null) {
      queryParams.addAll(_queryParams('', 'showHierarchies', showHierarchies));
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

  /// View default query
  ///
  /// Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [String] timestamps:
  ///   Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available. 
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineZoomLevel:
  ///   Indicates in what zoom level the timeline should be shown. Valid values are  `days`, `weeks`, `months`, `quarters`, and `years`.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Object?> viewDefaultQuery({ String? filters, int? offset, int? pageSize, String? sortBy, String? groupBy, bool? showSums, String? timestamps, bool? timelineVisible, String? timelineZoomLevel, bool? showHierarchies, }) async {
    final response = await viewDefaultQueryWithHttpInfo( filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timestamps: timestamps, timelineVisible: timelineVisible, timelineZoomLevel: timelineZoomLevel, showHierarchies: showHierarchies, );
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

  /// View default query for project
  ///
  /// Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id of the project the default query is requested for
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [String] timestamps:
  ///   Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time. Values older than 1 day are accepted only with valid Enterprise Token available. 
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Response> viewDefaultQueryForProjectWithHttpInfo(int id, { String? filters, int? offset, int? pageSize, String? sortBy, String? groupBy, bool? showSums, String? timestamps, bool? timelineVisible, bool? showHierarchies, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/queries/default'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
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
    if (timestamps != null) {
      queryParams.addAll(_queryParams('', 'timestamps', timestamps));
    }
    if (timelineVisible != null) {
      queryParams.addAll(_queryParams('', 'timelineVisible', timelineVisible));
    }
    if (showHierarchies != null) {
      queryParams.addAll(_queryParams('', 'showHierarchies', showHierarchies));
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

  /// View default query for project
  ///
  /// Same as [viewing an existing, persisted Query](https://www.openproject.org/docs/api/endpoints/queries/#list-queries) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id of the project the default query is requested for
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [String] timestamps:
  ///   Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time. Values older than 1 day are accepted only with valid Enterprise Token available. 
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Object?> viewDefaultQueryForProject(int id, { String? filters, int? offset, int? pageSize, String? sortBy, String? groupBy, bool? showSums, String? timestamps, bool? timelineVisible, bool? showHierarchies, }) async {
    final response = await viewDefaultQueryForProjectWithHttpInfo(id,  filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timestamps: timestamps, timelineVisible: timelineVisible, showHierarchies: showHierarchies, );
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

  /// View query
  ///
  /// Retrieve an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] columns:
  ///   Selected columns for the table view.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [String] timestamps:
  ///   Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available. 
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineLabels:
  ///   Overridden labels in the timeline view
  ///
  /// * [String] highlightingMode:
  ///   Highlighting mode for the table view.
  ///
  /// * [String] highlightedAttributes:
  ///   Highlighted attributes mode for the table view when `highlightingMode` is `inline`. When set to `[]` all highlightable attributes will be returned as `highlightedAttributes`.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<Response> viewQueryWithHttpInfo(int id, { String? filters, int? offset, int? pageSize, String? columns, String? sortBy, String? groupBy, bool? showSums, String? timestamps, bool? timelineVisible, String? timelineLabels, String? highlightingMode, String? highlightedAttributes, bool? showHierarchies, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (columns != null) {
      queryParams.addAll(_queryParams('', 'columns', columns));
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
    if (timestamps != null) {
      queryParams.addAll(_queryParams('', 'timestamps', timestamps));
    }
    if (timelineVisible != null) {
      queryParams.addAll(_queryParams('', 'timelineVisible', timelineVisible));
    }
    if (timelineLabels != null) {
      queryParams.addAll(_queryParams('', 'timelineLabels', timelineLabels));
    }
    if (highlightingMode != null) {
      queryParams.addAll(_queryParams('', 'highlightingMode', highlightingMode));
    }
    if (highlightedAttributes != null) {
      queryParams.addAll(_queryParams('', 'highlightedAttributes', highlightedAttributes));
    }
    if (showHierarchies != null) {
      queryParams.addAll(_queryParams('', 'showHierarchies', showHierarchies));
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

  /// View query
  ///
  /// Retrieve an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources' persisted parameters.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Query id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. The filters provided as parameters are not applied to the query but are instead used to override the query's persisted filters. All filters also accepted by the work packages endpoint are accepted. If no filter is to be applied, the client should send an empty array (`[]`).
  ///
  /// * [int] offset:
  ///   Page number inside the queries' result collection of work packages.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page for the queries' result collection of work packages.
  ///
  /// * [String] columns:
  ///   Selected columns for the table view.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. The sort criteria is applied to the query's result collection of work packages overriding the query's persisted sort criteria.
  ///
  /// * [String] groupBy:
  ///   The column to group by. The grouping criteria is applied to the to the query's result collection of work packages overriding the query's persisted group criteria.
  ///
  /// * [bool] showSums:
  ///   Indicates whether properties should be summed up if they support it. The showSums parameter is applied to the to the query's result collection of work packages overriding the query's persisted sums property.
  ///
  /// * [String] timestamps:
  ///   Indicates the timestamps to filter by when showing changed attributes on work packages. Values can be either ISO8601 dates, ISO8601 durations and the following relative date keywords: \"oneDayAgo@HH:MM+HH:MM\", \"lastWorkingDay@HH:MM+HH:MM\", \"oneWeekAgo@HH:MM+HH:MM\", \"oneMonthAgo@HH:MM+HH:MM\". The first \"HH:MM\" part represents the zero paded hours and minutes. The last \"+HH:MM\" part represents the timezone offset from UTC associated with the time, the offset can be positive or negative e.g.\"oneDayAgo@01:00+01:00\", \"oneDayAgo@01:00-01:00\". Values older than 1 day are accepted only with valid Enterprise Token available. 
  ///
  /// * [bool] timelineVisible:
  ///   Indicates whether the timeline should be shown.
  ///
  /// * [String] timelineLabels:
  ///   Overridden labels in the timeline view
  ///
  /// * [String] highlightingMode:
  ///   Highlighting mode for the table view.
  ///
  /// * [String] highlightedAttributes:
  ///   Highlighted attributes mode for the table view when `highlightingMode` is `inline`. When set to `[]` all highlightable attributes will be returned as `highlightedAttributes`.
  ///
  /// * [bool] showHierarchies:
  ///   Indicates whether the hierarchy mode should be enabled.
  Future<QueryModel?> viewQuery(int id, { String? filters, int? offset, int? pageSize, String? columns, String? sortBy, String? groupBy, bool? showSums, String? timestamps, bool? timelineVisible, String? timelineLabels, String? highlightingMode, String? highlightedAttributes, bool? showHierarchies, }) async {
    final response = await viewQueryWithHttpInfo(id,  filters: filters, offset: offset, pageSize: pageSize, columns: columns, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timestamps: timestamps, timelineVisible: timelineVisible, timelineLabels: timelineLabels, highlightingMode: highlightingMode, highlightedAttributes: highlightedAttributes, showHierarchies: showHierarchies, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueryModel',) as QueryModel;
    
    }
    return null;
  }

  /// View schema for global queries
  ///
  /// Retrieve the schema for global queries, those, that are not assigned to a project.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> viewSchemaForGlobalQueriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/schema';

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

  /// View schema for global queries
  ///
  /// Retrieve the schema for global queries, those, that are not assigned to a project.
  Future<Object?> viewSchemaForGlobalQueries() async {
    final response = await viewSchemaForGlobalQueriesWithHttpInfo();
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

  /// View schema for project queries
  ///
  /// Retrieve the schema for project queries.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> viewSchemaForProjectQueriesWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/queries/schema'
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

  /// View schema for project queries
  ///
  /// Retrieve the schema for project queries.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Object?> viewSchemaForProjectQueries(int id,) async {
    final response = await viewSchemaForProjectQueriesWithHttpInfo(id,);
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
