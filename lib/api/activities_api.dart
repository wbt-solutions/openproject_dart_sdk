//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class ActivitiesApi {
  ActivitiesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Update activity
  ///
  /// Updates an activity's comment and, on success, returns the updated activity.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Activity id
  ///
  /// * [UpdateActivityRequest] updateActivityRequest:
  Future<Response> updateActivityWithHttpInfo(int id, { UpdateActivityRequest? updateActivityRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/activities/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = updateActivityRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Update activity
  ///
  /// Updates an activity's comment and, on success, returns the updated activity.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Activity id
  ///
  /// * [UpdateActivityRequest] updateActivityRequest:
  Future<ActivityModel?> updateActivity(int id, { UpdateActivityRequest? updateActivityRequest, }) async {
    final response = await updateActivityWithHttpInfo(id,  updateActivityRequest: updateActivityRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivityModel',) as ActivityModel;
    
    }
    return null;
  }

  /// View activity
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Activity id
  Future<Response> viewActivityWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/activities/{id}'
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

  /// View activity
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Activity id
  Future<ActivityModel?> viewActivity(int id,) async {
    final response = await viewActivityWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ActivityModel',) as ActivityModel;
    
    }
    return null;
  }
}
