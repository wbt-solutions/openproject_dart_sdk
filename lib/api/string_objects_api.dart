part of swagger.api;



class StringObjectsApi {
  final ApiClient apiClient;

  StringObjectsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View String Object
  ///
  /// 
  Future apiV3StringObjectsGet(String value) async {
    Object postBody = null;

    // verify required params are set
    if(value == null) {
     throw new ApiException(400, "Missing required param: value");
    }

    // create path and map variables
    String path = "/api/v3/string_objects".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "value", value));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
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

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
}
