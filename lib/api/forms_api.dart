part of swagger.api;



class FormsApi {
  final ApiClient apiClient;

  FormsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// show or validate form
  ///
  /// This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.
  Future apiV3ExampleFormPost({ Body2 body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/example/form".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
                                             'POST',
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
