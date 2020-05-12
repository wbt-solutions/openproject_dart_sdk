part of openproject_dart_sdk.api;



class UserPreferencesApi {
  final ApiClient apiClient;

  UserPreferencesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Show my preferences with HTTP info returned
  ///
  /// 
  Future<Response> apiV3MyPreferencesGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/my_preferences".replaceAll("{format}","json");

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

  /// Show my preferences
  ///
  /// 
  Future<UserPreferences> apiV3MyPreferencesGet() async {
    Response response = await apiV3MyPreferencesGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserPreferences') as UserPreferences;
    } else {
      return null;
    }
  }

  /// Update UserPreferences with HTTP info returned
  ///
  /// When calling this endpoint the client provides a single object, containing the properties that it wants to change, in the body.
  Future apiV3MyPreferencesPatchWithHttpInfo({ InlineObject4 body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/my_preferences".replaceAll("{format}","json");

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
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Update UserPreferences
  ///
  /// When calling this endpoint the client provides a single object, containing the properties that it wants to change, in the body.
  Future apiV3MyPreferencesPatch({ InlineObject4 body }) async {
    Response response = await apiV3MyPreferencesPatchWithHttpInfo( body: body );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
