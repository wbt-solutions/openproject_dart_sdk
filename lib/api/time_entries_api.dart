part of openproject_dart_sdk.api;



class TimeEntriesApi {
  final ApiClient apiClient;

  TimeEntriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List Time entries with HTTP info returned
  ///
  /// Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
  Future<Response> apiV3TimeEntriesGetWithHttpInfo({ int offset, int pageSize, String filters }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/api/v3/time_entries".replaceAll("{format}","json");

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

  /// List Time entries
  ///
  ///int offset :
  ///     Page number inside the requested collection.
  ///int pageSize :
  ///     Number of elements to display per page.
  ///String filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users
  /// Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
  Future<TimeEntries> apiV3TimeEntriesGet({ int offset, int pageSize, String filters }) async {
    Response response = await apiV3TimeEntriesGetWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TimeEntries') as TimeEntries;
    } else {
      return null;
    }
  }

  /// View time entry with HTTP info returned
  ///
  /// 
  Future<Response> apiV3TimeEntriesIdGetWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/api/v3/time_entries/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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

  /// View time entry
  ///
  ///int id  (required):
  ///     time entry id
  /// 
  Future<TimeEntry> apiV3TimeEntriesIdGet(int id) async {
    Response response = await apiV3TimeEntriesIdGetWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TimeEntry') as TimeEntry;
    } else {
      return null;
    }
  }

}
