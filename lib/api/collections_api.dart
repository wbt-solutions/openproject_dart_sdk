part of openproject_dart_sdk.api;



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

  /// view aggregated result
  ///
  ///String groupBy :
  ///     The column to group by. Note: Aggregation is as of now only supported by the WorkPackage collection. You can pass any column name as returned by the [queries](#queries) endpoint.
  ///String showSums :
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
