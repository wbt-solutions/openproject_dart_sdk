part of openproject_dart_sdk.api;



class FormsApi {
  final ApiClient apiClient;

  FormsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// show or validate form with HTTP info returned
  ///
  /// This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.
  Future apiV3ExampleFormPostWithHttpInfo({ InlineObject1 inlineObject1 }) async {
    Object postBody = inlineObject1;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/example/form".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// show or validate form
  ///
  ///InlineObject1 inlineObject1 :
  ///    
  /// This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.
  Future apiV3ExampleFormPost({ InlineObject1 inlineObject1 }) async {
    Response response = await apiV3ExampleFormPostWithHttpInfo( inlineObject1: inlineObject1 );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
