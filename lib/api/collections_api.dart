part of openapi.api;



class CollectionsApi {
  final ApiClient apiClient;

  CollectionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// view aggregated result with HTTP info returned
  ///
  /// 
  Future apiV3ExamplesGetWithHttpInfo({ String groupBy, String showSums }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/examples".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "groupBy", groupBy));
    }
    if(showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "showSums", showSums));
    }

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

  /// view aggregated result
  ///
  /// 
  Future apiV3ExamplesGet({ String groupBy, String showSums }) async {
    Response response = await apiV3ExamplesGetWithHttpInfo( groupBy: groupBy, showSums: showSums );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
