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
  /// * [int] customActionId (required):
  ///   The id of the custom action to execute
  ///
  /// * [InlineObject] inlineObject:
  Future<Response> apiV3CustomActionsCustomActionIdExecutePostWithHttpInfo(int customActionId, { InlineObject? inlineObject, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/custom_actions/{custom_action_id}/execute'
      .replaceAll('{custom_action_id}', customActionId.toString());

    // ignore: prefer_final_locals
    Object? postBody = inlineObject;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// Execute custom action
  ///
  /// A POST to this end point executes the custom action on the work package provided in the payload. The altered work package will be returned. In order to avoid executing  the custom action unbeknown to a change that has already taken place, the client has to provide the work package's current lockVersion.
  ///
  /// Parameters:
  ///
  /// * [int] customActionId (required):
  ///   The id of the custom action to execute
  ///
  /// * [InlineObject] inlineObject:
  Future<void> apiV3CustomActionsCustomActionIdExecutePost(int customActionId, { InlineObject? inlineObject, }) async {
    final response = await apiV3CustomActionsCustomActionIdExecutePostWithHttpInfo(customActionId,  inlineObject: inlineObject, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View custom action
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] customActionId (required):
  ///   The id of the custom action to fetch
  Future<Response> apiV3CustomActionsCustomActionIdGetWithHttpInfo(int customActionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/custom_actions/{custom_action_id}'
      .replaceAll('{custom_action_id}', customActionId.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['basicAuth', 'oAuth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      authNames,
    );
  }

  /// View custom action
  ///
  /// Parameters:
  ///
  /// * [int] customActionId (required):
  ///   The id of the custom action to fetch
  Future<void> apiV3CustomActionsCustomActionIdGet(int customActionId,) async {
    final response = await apiV3CustomActionsCustomActionIdGetWithHttpInfo(customActionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
