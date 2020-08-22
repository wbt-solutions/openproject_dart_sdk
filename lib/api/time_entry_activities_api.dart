part of openproject_dart_sdk.api;



class TimeEntryActivitiesApi {
  final ApiClient apiClient;

  TimeEntryActivitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// View time entries activity with HTTP info returned
  ///
  /// 
  Future<Response> apiV3TimeEntriesActivitiesIdGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/time_entries/activities/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// View time entries activity
  ///
  ///int id  (required):
  ///     time entries activity id
  /// 
  Future<TimeEntriesActivity> apiV3TimeEntriesActivitiesIdGet(int id) async {
    Response response = await apiV3TimeEntriesActivitiesIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TimeEntriesActivity') as TimeEntriesActivity;
    } else {
      return null;
    }
  }

}
