part of openproject_dart_sdk.api;



class TimeEntriesApi {
  final ApiClient apiClient;

  TimeEntriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List Time entries with HTTP info returned
  ///
  /// Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
  Future<Response> apiV3TimeEntriesGetWithHttpInfo({ int offset, int pageSize, List<Map<String, Object>> filters }) async {
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
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filters", filters));
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
  ///List&lt;Map&lt;String, Object&gt;&gt; filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users
  /// Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
  Future<TimeEntries> apiV3TimeEntriesGet({ int offset, int pageSize, List<Map<String, Object>> filters }) async {
    Response response = await apiV3TimeEntriesGetWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TimeEntries') as TimeEntries;
    } else {
      return null;
    }
  }

  /// delete time entry with HTTP info returned
  ///
  /// Permanently deletes the specified time entry.
  Future apiV3TimeEntriesIdDeleteWithHttpInfo(int id) async {
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
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// delete time entry
  ///
  ///int id  (required):
  ///     time entry id
  /// Permanently deletes the specified time entry.
  Future apiV3TimeEntriesIdDelete(int id) async {
    Response response = await apiV3TimeEntriesIdDeleteWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
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

  /// create time entry with HTTP info returned
  ///
  /// Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries’ attributes and are accepted by the endpoint.
  Future<Response> apiV3TimeEntriesPostWithHttpInfo(TimeEntry timeEntry, { List<Map<String, Object>> filters, String sortBy }) async {
    Object postBody = timeEntry;

    // verify required params are set
    if(timeEntry == null) {
     throw ApiException(400, "Missing required param: timeEntry");
    }

    // create path and map variables
    String path = "/api/v3/time_entries".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "filters", filters));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }

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

  /// create time entry
  ///
  ///TimeEntry timeEntry  (required):
  ///     New time entry
  ///List&lt;Map&lt;String, Object&gt;&gt; filters :
  ///     JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
  ///String sortBy :
  ///     JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.
  /// Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries’ attributes and are accepted by the endpoint.
  Future<TimeEntry> apiV3TimeEntriesPost(TimeEntry timeEntry, { List<Map<String, Object>> filters, String sortBy }) async {
    Response response = await apiV3TimeEntriesPostWithHttpInfo(timeEntry,  filters: filters, sortBy: sortBy );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TimeEntry') as TimeEntry;
    } else {
      return null;
    }
  }

}
