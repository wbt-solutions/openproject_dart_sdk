//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class UserPreferencesApi {
  UserPreferencesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Show my preferences
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> showMyPreferencesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/my_preferences';

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

  /// Show my preferences
  ///
  /// 
  Future<Object?> showMyPreferences() async {
    final response = await showMyPreferencesWithHttpInfo();
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

  /// Update my preferences
  ///
  /// When calling this endpoint the client provides a single object, containing the properties that it wants to change, in the body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateUserPreferencesRequest] updateUserPreferencesRequest:
  Future<Response> updateUserPreferencesWithHttpInfo({ UpdateUserPreferencesRequest? updateUserPreferencesRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/my_preferences';

    // ignore: prefer_final_locals
    Object? postBody = updateUserPreferencesRequest;

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

  /// Update my preferences
  ///
  /// When calling this endpoint the client provides a single object, containing the properties that it wants to change, in the body.
  ///
  /// Parameters:
  ///
  /// * [UpdateUserPreferencesRequest] updateUserPreferencesRequest:
  Future<Object?> updateUserPreferences({ UpdateUserPreferencesRequest? updateUserPreferencesRequest, }) async {
    final response = await updateUserPreferencesWithHttpInfo( updateUserPreferencesRequest: updateUserPreferencesRequest, );
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
