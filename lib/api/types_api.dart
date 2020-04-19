part of openproject_dart_sdk.api;



class TypesApi {
  final ApiClient apiClient;

  TypesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List types available in a project with HTTP info returned
  ///
  /// This endpoint lists the types that are *available* in a given project.
  Future<Response> apiV3ProjectsProjectIdTypesGetWithHttpInfo(int projectId) async {
    Object postBody;

    // verify required params are set
    if(projectId == null) {
     throw ApiException(400, "Missing required param: projectId");
    }

    // create path and map variables
    String path = "/api/v3/projects/{project_id}/types".replaceAll("{format}","json").replaceAll("{" + "project_id" + "}", projectId.toString());

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

  /// List types available in a project
  ///
  /// This endpoint lists the types that are *available* in a given project.
  Future<WPTypes> apiV3ProjectsProjectIdTypesGet(int projectId) async {
    Response response = await apiV3ProjectsProjectIdTypesGetWithHttpInfo(projectId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WPTypes') as WPTypes;
    } else {
      return null;
    }
  }

  /// List all Types with HTTP info returned
  ///
  /// 
  Future<Response> apiV3TypesGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/types".replaceAll("{format}","json");

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

  /// List all Types
  ///
  /// 
  Future<WPTypes> apiV3TypesGet() async {
    Response response = await apiV3TypesGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WPTypes') as WPTypes;
    } else {
      return null;
    }
  }

  /// View Type with HTTP info returned
  ///
  /// 
  Future<Response> apiV3TypesIdGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/types/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// View Type
  ///
  /// 
  Future<WPType> apiV3TypesIdGet(int id) async {
    Response response = await apiV3TypesIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WPType') as WPType;
    } else {
      return null;
    }
  }

}
