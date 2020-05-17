part of openproject_dart_sdk.api;



class QueryColumnsApi {
  final ApiClient apiClient;

  QueryColumnsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View Query Column with HTTP info returned
  ///
  /// Retreive an individual QueryColumn as identified by the &#x60;id&#x60; parameter.
  Future apiV3QueriesColumnsIdGetWithHttpInfo(String id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/queries/columns/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// View Query Column
  ///
  ///String id  (required):
  ///     QueryColumn id
  /// Retreive an individual QueryColumn as identified by the &#x60;id&#x60; parameter.
  Future apiV3QueriesColumnsIdGet(String id) async {
    Response response = await apiV3QueriesColumnsIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
