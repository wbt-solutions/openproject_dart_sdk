part of openproject_dart_sdk.api;



class NewsApi {
  final ApiClient apiClient;

  NewsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// list news with HTTP info returned
  ///
  /// Lists news. The news returned depend on the provided parameters and also on the requesting user’s permissions.
  Future<Response> apiV3NewsGetWithHttpInfo({ int offset, int pageSize, String sortBy, String filters }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/news".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
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

  /// list news
  ///
  ///int offset :
  ///     Page number inside the requested collection.
  ///int pageSize :
  ///     Number of elements to display per page.
  ///String sortBy :
  ///     JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint.
  ///String filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the queries endpoint.
  /// Lists news. The news returned depend on the provided parameters and also on the requesting user’s permissions.
  Future<NewsList> apiV3NewsGet({ int offset, int pageSize, String sortBy, String filters }) async {
    Response response = await apiV3NewsGetWithHttpInfo( offset: offset, pageSize: pageSize, sortBy: sortBy, filters: filters );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'NewsList') as NewsList;
    } else {
      return null;
    }
  }

  /// view news with HTTP info returned
  ///
  /// 
  Future<Response> apiV3NewsIdGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/news/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// view news
  ///
  ///int id  (required):
  ///     news id
  /// 
  Future<News> apiV3NewsIdGet(int id) async {
    Response response = await apiV3NewsIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'News') as News;
    } else {
      return null;
    }
  }

}
