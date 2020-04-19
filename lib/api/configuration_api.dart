part of openproject_dart_sdk.api;



class ConfigurationApi {
  final ApiClient apiClient;

  ConfigurationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View configuration with HTTP info returned
  ///
  /// 
  Future<Response> apiV3ConfigurationGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/configuration".replaceAll("{format}","json");

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

  /// View configuration
  ///
  /// 
  Future<Configuration> apiV3ConfigurationGet() async {
    Response response = await apiV3ConfigurationGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Configuration') as Configuration;
    } else {
      return null;
    }
  }

}
