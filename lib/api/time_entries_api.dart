//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class TimeEntriesApi {
  TimeEntriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List Time entries
  ///
  /// Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users
  Future<Response> apiV3TimeEntriesGetWithHttpInfo({ int offset, int pageSize, String filters }) async {
    // Verify required params are set.

    final path = r'/api/v3/time_entries';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
    }
    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// List Time entries
  ///
  /// Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users
  Future<TimeEntries> apiV3TimeEntriesGet({ int offset, int pageSize, String filters }) async {
    final response = await apiV3TimeEntriesGetWithHttpInfo( offset: offset, pageSize: pageSize, filters: filters );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeEntries',) as TimeEntries;
        }
    return Future<TimeEntries>.value(null);
  }

  /// delete time entry
  ///
  /// Permanently deletes the specified time entry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   time entry id
  Future<Response> apiV3TimeEntriesIdDeleteWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/time_entries/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// delete time entry
  ///
  /// Permanently deletes the specified time entry.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   time entry id
  Future<void> apiV3TimeEntriesIdDelete(int id) async {
    final response = await apiV3TimeEntriesIdDeleteWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View time entry
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   time entry id
  Future<Response> apiV3TimeEntriesIdGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/time_entries/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// View time entry
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   time entry id
  Future<TimeEntry> apiV3TimeEntriesIdGet(int id) async {
    final response = await apiV3TimeEntriesIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeEntry',) as TimeEntry;
        }
    return Future<TimeEntry>.value(null);
  }

  /// create time entry
  ///
  /// Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries’ attributes and are accepted by the endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TimeEntry] timeEntry (required):
  ///   New time entry
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.
  Future<Response> apiV3TimeEntriesPostWithHttpInfo(TimeEntry timeEntry, { String filters, String sortBy }) async {
    // Verify required params are set.
    if (timeEntry == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: timeEntry');
    }

    final path = r'/api/v3/time_entries';

    Object postBody = timeEntry;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];


    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// create time entry
  ///
  /// Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries’ attributes and are accepted by the endpoint.
  ///
  /// Parameters:
  ///
  /// * [TimeEntry] timeEntry (required):
  ///   New time entry
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + ancestor: filters projects by their ancestor. A project is not considered to be it's own ancestor.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Currently supported orders are: + id + name + created_on + public + latest_activity_at + required_disk_space: There might also be additional orders based on the custom fields that have been configured.
  Future<TimeEntry> apiV3TimeEntriesPost(TimeEntry timeEntry, { String filters, String sortBy }) async {
    final response = await apiV3TimeEntriesPostWithHttpInfo(timeEntry,  filters: filters, sortBy: sortBy );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeEntry',) as TimeEntry;
        }
    return Future<TimeEntry>.value(null);
  }
}
