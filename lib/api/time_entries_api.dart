//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class TimeEntriesApi {
  TimeEntriesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Available projects for time entries
  ///
  /// Gets a list of projects in which a time entry can be created in or be assigned to on update. The list contains all projects in which the user issuing the request has the necessary permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> availableProjectsForTimeEntriesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries/available_projects';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Available projects for time entries
  ///
  /// Gets a list of projects in which a time entry can be created in or be assigned to on update. The list contains all projects in which the user issuing the request has the necessary permissions.
  Future<Object?> availableProjectsForTimeEntries() async {
    final response = await availableProjectsForTimeEntriesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Create time entry
  ///
  /// Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createTimeEntryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create time entry
  ///
  /// Creates a new time entry applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.
  Future<TimeEntryModel?> createTimeEntry() async {
    final response = await createTimeEntryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeEntryModel',) as TimeEntryModel;
    
    }
    return null;
  }

  /// Delete time entry
  ///
  /// Permanently deletes the specified time entry.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Time entry id
  Future<Response> deleteTimeEntryWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete time entry
  ///
  /// Permanently deletes the specified time entry.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Time entry id
  Future<void> deleteTimeEntry(int id,) async {
    final response = await deleteTimeEntryWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get time entry
  ///
  /// Retrieves a single time entry identified by the given id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   time entry id
  Future<Response> getTimeEntryWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get time entry
  ///
  /// Retrieves a single time entry identified by the given id.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   time entry id
  Future<TimeEntryModel?> getTimeEntry(int id,) async {
    final response = await getTimeEntryWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeEntryModel',) as TimeEntryModel;
    
    }
    return null;
  }

  /// List time entries
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
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + hours: Sort by logged hours  + spent_on: Sort by spent on date  + created_at: Sort by time entry creation datetime  + updated_at: Sort by the time the time entry was updated last
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users  + ongoing: Filter for your ongoing timers  + spent_on: Filter time entries by spent on date  + created_at: Filter time entries by creation datetime  + updated_at: Filter time entries by the last time they where updated  + activity: Filter time entries by time entry activity
  Future<Response> listTimeEntriesWithHttpInfo({ int? offset, int? pageSize, String? sortBy, String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List time entries
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
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported sorts are:  + id: Sort by primary key  + hours: Sort by logged hours  + spent_on: Sort by spent on date  + created_at: Sort by time entry creation datetime  + updated_at: Sort by the time the time entry was updated last
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users  + ongoing: Filter for your ongoing timers  + spent_on: Filter time entries by spent on date  + created_at: Filter time entries by creation datetime  + updated_at: Filter time entries by the last time they where updated  + activity: Filter time entries by time entry activity
  Future<TimeEntryCollectionModel?> listTimeEntries({ int? offset, int? pageSize, String? sortBy, String? filters, }) async {
    final response = await listTimeEntriesWithHttpInfo( offset: offset, pageSize: pageSize, sortBy: sortBy, filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeEntryCollectionModel',) as TimeEntryCollectionModel;
    
    }
    return null;
  }

  /// Time entry create form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> timeEntryCreateFormWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries/form';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Time entry create form
  ///
  /// 
  Future<void> timeEntryCreateForm() async {
    final response = await timeEntryCreateFormWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Time entry update form
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Time entries activity id
  ///
  /// * [int] body (required):
  ///   Time entries activity id
  Future<Response> timeEntryUpdateFormWithHttpInfo(int id, int body,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries/{id}/form'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Time entry update form
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Time entries activity id
  ///
  /// * [int] body (required):
  ///   Time entries activity id
  Future<void> timeEntryUpdateForm(int id, int body,) async {
    final response = await timeEntryUpdateFormWithHttpInfo(id, body,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// update time entry
  ///
  /// Updates the given time entry by applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Time entry id
  Future<Response> updateTimeEntryWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// update time entry
  ///
  /// Updates the given time entry by applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a time entries' attributes and are accepted by the endpoint.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Time entry id
  Future<TimeEntryModel?> updateTimeEntry(int id,) async {
    final response = await updateTimeEntryWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TimeEntryModel',) as TimeEntryModel;
    
    }
    return null;
  }

  /// View time entry schema
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> viewTimeEntrySchemaWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/time_entries/schema';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// View time entry schema
  ///
  /// 
  Future<Object?> viewTimeEntrySchema() async {
    final response = await viewTimeEntrySchemaWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
