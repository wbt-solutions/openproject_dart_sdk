part of openproject_dart_sdk.api;



class QuerySortBysApi {
  final ApiClient apiClient;

  QuerySortBysApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View Query Sort By with HTTP info returned
  ///
  /// Retreive an individual QuerySortBy as identified by the id parameter.
  Future apiV3QueriesSortBysIdGetWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/sort_bys/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// View Query Sort By
  ///
  /// Retreive an individual QuerySortBy as identified by the id parameter.
  Future apiV3QueriesSortBysIdGet(String id) async {
    Response response = await apiV3QueriesSortBysIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
