part of openproject_dart_sdk.api;



class PreviewingApi {
  final ApiClient apiClient;

  PreviewingApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Preview plain document with HTTP info returned
  ///
  /// 
  Future apiV3RenderPlainPostWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/render/plain".replaceAll("{format}","json");

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Preview plain document
  ///
  /// 
  Future apiV3RenderPlainPost() async {
    Response response = await apiV3RenderPlainPostWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Preview Textile document with HTTP info returned
  ///
  /// 
  Future apiV3RenderTextilePostWithHttpInfo({ String context }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/render/textile".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(context != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "context", context));
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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Preview Textile document
  ///
  /// 
  Future apiV3RenderTextilePost({ String context }) async {
    Response response = await apiV3RenderTextilePostWithHttpInfo( context: context );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
