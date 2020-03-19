part of openproject_dart_sdk.api;



class QueryFilterInstanceSchemaApi {
  final ApiClient apiClient;

  QueryFilterInstanceSchemaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List Query Filter Instance Schemas for Project with HTTP info returned
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.
  Future apiV3ProjectsIdQueriesFilterInstanceSchemasGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/projects/{id}/queries/filter_instance_schemas".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// List Query Filter Instance Schemas for Project
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.
  Future apiV3ProjectsIdQueriesFilterInstanceSchemasGet(int id) async {
    Response response = await apiV3ProjectsIdQueriesFilterInstanceSchemasGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List Query Filter Instance Schemas with HTTP info returned
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.
  Future apiV3QueriesFilterInstanceSchemasGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/queries/filter_instance_schemas".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// List Query Filter Instance Schemas
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.
  Future apiV3QueriesFilterInstanceSchemasGet() async {
    Response response = await apiV3QueriesFilterInstanceSchemasGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// View Query Filter Instance Schema with HTTP info returned
  ///
  /// Retreive an individual QueryFilterInstanceSchema as identified by the id parameter.
  Future apiV3QueriesFilterInstanceSchemasIdentifierGetWithHttpInfo(String identifier) async {
    Object postBody;

    // verify required params are set
    if(identifier == null) {
     throw ApiException(400, "Missing required param: identifier");
    }

    // create path and map variables
    String path = "/api/v3/queries/filter_instance_schemas/{identifier}".replaceAll("{format}","json").replaceAll("{" + "identifier" + "}", identifier.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
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
                                             contentType,
                                             authNames);
    return response;
  }

  /// View Query Filter Instance Schema
  ///
  /// Retreive an individual QueryFilterInstanceSchema as identified by the id parameter.
  Future apiV3QueriesFilterInstanceSchemasIdentifierGet(String identifier) async {
    Response response = await apiV3QueriesFilterInstanceSchemasIdentifierGetWithHttpInfo(identifier);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
