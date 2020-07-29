part of openproject_dart_sdk.api;



class PrincipalsApi {
  final ApiClient apiClient;

  PrincipalsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List principals with HTTP info returned
  ///
  /// List all principals. The client can choose to filter the principals similar to how WorkPackages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.
  Future apiV3PrincipalsGetWithHttpInfo({ String filters }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/principals".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filters", filters));
    }

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

  /// List principals
  ///
  ///String filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + type: filters principals by their type (*User*, *Group*).  + member: filters principals by the projects they are members in.
  /// List all principals. The client can choose to filter the principals similar to how WorkPackages are filtered. In addition to the provided filters, the server will reduce the result set to only contain principals who are members in projects the client is allowed to see.
  Future apiV3PrincipalsGet({ String filters }) async {
    Response response = await apiV3PrincipalsGetWithHttpInfo( filters: filters );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
