part of openproject_dart_sdk.api;



class QueryOperatorsApi {
  final ApiClient apiClient;

  QueryOperatorsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View Query Operator with HTTP info returned
  ///
  /// Retreive an individual QueryOperator as identified by the &#x60;id&#x60; parameter.
  Future apiV3QueriesOperatorsIdGetWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/operators/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// View Query Operator
  ///
  /// Retreive an individual QueryOperator as identified by the &#x60;id&#x60; parameter.
  Future apiV3QueriesOperatorsIdGet(String id) async {
    Response response = await apiV3QueriesOperatorsIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
