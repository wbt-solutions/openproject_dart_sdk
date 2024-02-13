//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class ViewsApi {
  ViewsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create view
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a View can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  There are different subtypes of `Views` (e.g. `Views::WorkPackagesTable`) with each having its own endpoint for creating that subtype e.g.  * `/api/v3/views/work_packages_table` for `Views::WorkPackagesTable` * `/api/v3/views/team_planner` for `Views::TeamPlanner` * `/api/v3/views/work_packages_calendar` for `Views::WorkPackagesCalendar`  **Not yet implemented** To get the list of available subtypes and by that the endpoints for creating a subtype, use the ```   /api/v3/views/schemas ``` endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The view identifier
  ///
  /// * [CreateViewsRequest] createViewsRequest:
  Future<Response> createViewsWithHttpInfo(String id, { CreateViewsRequest? createViewsRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/views/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createViewsRequest;

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

  /// Create view
  ///
  /// When calling this endpoint the client provides a single object, containing at least the properties and links that are required, in the body. The required fields of a View can be found in its schema, which is embedded in the respective form. Note that it is only allowed to provide properties or links supporting the write operation.  There are different subtypes of `Views` (e.g. `Views::WorkPackagesTable`) with each having its own endpoint for creating that subtype e.g.  * `/api/v3/views/work_packages_table` for `Views::WorkPackagesTable` * `/api/v3/views/team_planner` for `Views::TeamPlanner` * `/api/v3/views/work_packages_calendar` for `Views::WorkPackagesCalendar`  **Not yet implemented** To get the list of available subtypes and by that the endpoints for creating a subtype, use the ```   /api/v3/views/schemas ``` endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The view identifier
  ///
  /// * [CreateViewsRequest] createViewsRequest:
  Future<Object?> createViews(String id, { CreateViewsRequest? createViewsRequest, }) async {
    final response = await createViewsWithHttpInfo(id,  createViewsRequest: createViewsRequest, );
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

  /// List views
  ///
  /// Returns a collection of Views. The collection can be filtered via query parameters similar to how work packages are filtered.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Currently supported filters are:  + project: filters views by the project their associated query is assigned to. If the project filter is passed with the `!*` (not any) operator, global views are returned.  + id: filters views based on their id  + type: filters views based on their type
  Future<Response> listViewsWithHttpInfo({ String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/views';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// List views
  ///
  /// Returns a collection of Views. The collection can be filtered via query parameters similar to how work packages are filtered.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Currently supported filters are:  + project: filters views by the project their associated query is assigned to. If the project filter is passed with the `!*` (not any) operator, global views are returned.  + id: filters views based on their id  + type: filters views based on their type
  Future<void> listViews({ String? filters, }) async {
    final response = await listViewsWithHttpInfo( filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View view
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   View id
  Future<Response> viewViewWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/views/{id}'
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

  /// View view
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   View id
  Future<void> viewView(int id,) async {
    final response = await viewViewWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
