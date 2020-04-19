part of openproject_dart_sdk.api;



class SchemasApi {
  final ApiClient apiClient;

  SchemasApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// view the schema with HTTP info returned
  ///
  /// This is an example of how a schema might look like. Note that this endpoint does not exist in the actual implementation.
  Future apiV3ExampleSchemaGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/example/schema".replaceAll("{format}","json");

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

  /// view the schema
  ///
  /// This is an example of how a schema might look like. Note that this endpoint does not exist in the actual implementation.
  Future apiV3ExampleSchemaGet() async {
    Response response = await apiV3ExampleSchemaGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
