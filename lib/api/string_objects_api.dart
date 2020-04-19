part of openproject_dart_sdk.api;



class StringObjectsApi {
  final ApiClient apiClient;

  StringObjectsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View String Object with HTTP info returned
  ///
  /// 
  Future apiV3StringObjectsGetWithHttpInfo(String value) async {
    Object postBody;

    // verify required params are set
    if(value == null) {
     throw ApiException(400, "Missing required param: value");
    }

    // create path and map variables
    String path = "/api/v3/string_objects".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "value", value));

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

  /// View String Object
  ///
  /// 
  Future apiV3StringObjectsGet(String value) async {
    Response response = await apiV3StringObjectsGetWithHttpInfo(value);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
