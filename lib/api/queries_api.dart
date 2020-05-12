part of openproject_dart_sdk.api;



class QueriesApi {
  final ApiClient apiClient;

  QueriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View default query for project with HTTP info returned
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
  Future apiV3ProjectsIdQueriesDefaultGetWithHttpInfo(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, bool showHierarchies }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}/queries/default".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
    if(groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupBy", groupBy));
    }
    if(showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showSums", showSums));
    }
    if(timelineVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timelineVisible", timelineVisible));
    }
    if(showHierarchies != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showHierarchies", showHierarchies));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// View default query for project
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query. The query will already be scoped for the project.
  Future apiV3ProjectsIdQueriesDefaultGet(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, bool showHierarchies }) async {
    Response response = await apiV3ProjectsIdQueriesDefaultGetWithHttpInfo(id,  filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timelineVisible: timelineVisible, showHierarchies: showHierarchies );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View schema for project queries with HTTP info returned
  ///
  /// Retrieve the schema for project queries.
  Future apiV3ProjectsIdQueriesSchemaGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}/queries/schema".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// View schema for project queries
  ///
  /// Retrieve the schema for project queries.
  Future apiV3ProjectsIdQueriesSchemaGet(int id) async {
    Response response = await apiV3ProjectsIdQueriesSchemaGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Available projects with HTTP info returned
  ///
  /// Gets a list of projects that are available as projects a query can be assigned to.
  Future apiV3QueriesAvailableProjectsGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/queries/available_projects".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Available projects
  ///
  /// Gets a list of projects that are available as projects a query can be assigned to.
  Future apiV3QueriesAvailableProjectsGet() async {
    Response response = await apiV3QueriesAvailableProjectsGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View default query with HTTP info returned
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
  Future apiV3QueriesDefaultGetWithHttpInfo({ String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineZoomLevel, bool showHierarchies }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/queries/default".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
    if(groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupBy", groupBy));
    }
    if(showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showSums", showSums));
    }
    if(timelineVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timelineVisible", timelineVisible));
    }
    if(timelineZoomLevel != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timelineZoomLevel", timelineZoomLevel));
    }
    if(showHierarchies != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showHierarchies", showHierarchies));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// View default query
  ///
  /// Same as [viewing an existing, persisted Query](#queries-query-get) in its response, this resource returns an unpersisted query and by that allows to get the default query configuration. The client may also provide additional parameters which will modify the default query.
  Future apiV3QueriesDefaultGet({ String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineZoomLevel, bool showHierarchies }) async {
    Response response = await apiV3QueriesDefaultGetWithHttpInfo( filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timelineVisible: timelineVisible, timelineZoomLevel: timelineZoomLevel, showHierarchies: showHierarchies );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Query Create Form with HTTP info returned
  ///
  /// 
  Future apiV3QueriesFormPostWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/queries/form".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Query Create Form
  ///
  /// 
  Future apiV3QueriesFormPost() async {
    Response response = await apiV3QueriesFormPostWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List queries with HTTP info returned
  ///
  /// Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.
  Future apiV3QueriesGetWithHttpInfo({ String filters }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/queries".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List queries
  ///
  /// Returns a collection of queries. The collection can be filtered via query parameters similar to how work packages are filtered. Please note however, that the filters are applied to the queries and not to the work packages the queries in turn might return.
  Future apiV3QueriesGet({ String filters }) async {
    Response response = await apiV3QueriesGetWithHttpInfo( filters: filters );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete query with HTTP info returned
  ///
  /// Delete the query identified by the id parameter
  Future apiV3QueriesIdDeleteWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Delete query
  ///
  /// Delete the query identified by the id parameter
  Future apiV3QueriesIdDelete(int id) async {
    Response response = await apiV3QueriesIdDeleteWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View query with HTTP info returned
  ///
  /// Retreive an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources&#39; persisted parameters.
  Future apiV3QueriesIdGetWithHttpInfo(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineLabels, bool showHierarchies }) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
    if(groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupBy", groupBy));
    }
    if(showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showSums", showSums));
    }
    if(timelineVisible != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timelineVisible", timelineVisible));
    }
    if(timelineLabels != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timelineLabels", timelineLabels));
    }
    if(showHierarchies != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showHierarchies", showHierarchies));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// View query
  ///
  /// Retreive an individual query as identified by the id parameter. Then end point accepts a number of parameters that can be used to override the resources&#39; persisted parameters.
  Future apiV3QueriesIdGet(int id, { String filters, int offset, int pageSize, String sortBy, String groupBy, bool showSums, bool timelineVisible, String timelineLabels, bool showHierarchies }) async {
    Response response = await apiV3QueriesIdGetWithHttpInfo(id,  filters: filters, offset: offset, pageSize: pageSize, sortBy: sortBy, groupBy: groupBy, showSums: showSums, timelineVisible: timelineVisible, timelineLabels: timelineLabels, showHierarchies: showHierarchies );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Edit Query with HTTP info returned
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.
  Future apiV3QueriesIdPatchWithHttpInfo(int id, { InlineObject3 body }) async {
    Object postBody = body;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Edit Query
  ///
  /// When calling this endpoint the client provides a single object, containing the properties and links that it wants to change, in the body. Note that it is only allowed to provide properties or links supporting the **write** operation.
  Future apiV3QueriesIdPatch(int id, { InlineObject3 body }) async {
    Response response = await apiV3QueriesIdPatchWithHttpInfo(id,  body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Star query with HTTP info returned
  ///
  /// 
  Future apiV3QueriesIdStarPatchWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/{id}/star".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Star query
  ///
  /// 
  Future apiV3QueriesIdStarPatch(int id) async {
    Response response = await apiV3QueriesIdStarPatchWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Unstar query with HTTP info returned
  ///
  /// 
  Future apiV3QueriesIdUnstarPatchWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/{id}/unstar".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Unstar query
  ///
  /// 
  Future apiV3QueriesIdUnstarPatch(int id) async {
    Response response = await apiV3QueriesIdUnstarPatchWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Create query with HTTP info returned
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  Future apiV3QueriesPostWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/queries".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create query
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a Query can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.
  Future apiV3QueriesPost() async {
    Response response = await apiV3QueriesPostWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View schema for global queries with HTTP info returned
  ///
  /// Retrieve the schema for global queries, those, that are not assigned to a project.
  Future apiV3QueriesSchemaGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/queries/schema".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["basicAuth"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// View schema for global queries
  ///
  /// Retrieve the schema for global queries, those, that are not assigned to a project.
  Future apiV3QueriesSchemaGet() async {
    Response response = await apiV3QueriesSchemaGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
