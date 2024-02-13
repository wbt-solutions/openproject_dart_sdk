//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class CustomActionsApi {
  CustomActionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Execute custom action
  ///
  /// A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package's current lockVersion.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the custom action to execute
  ///
  /// * [ExecuteCustomActionRequest] executeCustomActionRequest:
  Future<Response> executeCustomActionWithHttpInfo(int id, { ExecuteCustomActionRequest? executeCustomActionRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/custom_actions/{id}/execute'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = executeCustomActionRequest;

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

  /// Execute custom action
  ///
  /// A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package's current lockVersion.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the custom action to execute
  ///
  /// * [ExecuteCustomActionRequest] executeCustomActionRequest:
  Future<void> executeCustomAction(int id, { ExecuteCustomActionRequest? executeCustomActionRequest, }) async {
    final response = await executeCustomActionWithHttpInfo(id,  executeCustomActionRequest: executeCustomActionRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a custom action
  ///
  /// Retrieves a custom action by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the custom action to fetch
  Future<Response> getCustomActionWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/custom_actions/{id}'
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

  /// Get a custom action
  ///
  /// Retrieves a custom action by id.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the custom action to fetch
  Future<CustomActionModel?> getCustomAction(int id,) async {
    final response = await getCustomActionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CustomActionModel',) as CustomActionModel;
    
    }
    return null;
  }
}
