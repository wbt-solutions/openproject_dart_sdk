//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CustomActionsApi {
  CustomActionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> apiV3CustomActionsCustomActionIdExecutePostWithHttpInfo(int customActionId, { InlineObject inlineObject }) async {
    // Verify required params are set.
    if (customActionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: customActionId');
    }

    final path = '/api/v3/custom_actions/{custom_action_id}/execute'
      .replaceAll('{' + 'custom_action_id' + '}', customActionId.toString());

    Object postBody = inlineObject;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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
  Future<void> apiV3CustomActionsCustomActionIdExecutePost(int customActionId, { InlineObject inlineObject }) async {
    final response = await apiV3CustomActionsCustomActionIdExecutePostWithHttpInfo(customActionId,  inlineObject: inlineObject );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
  Future<Response> apiV3CustomActionsCustomActionIdGetWithHttpInfo(int customActionId) async {
    // Verify required params are set.
    if (customActionId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: customActionId');
    }

    final path = '/api/v3/custom_actions/{custom_action_id}'
      .replaceAll('{' + 'custom_action_id' + '}', customActionId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

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

  /// View custom action
  ///
  /// Parameters:
  ///
  /// * [int] customActionId (required):
  ///   The id of the custom action to fetch
  Future<void> apiV3CustomActionsCustomActionIdGet(int customActionId) async {
    final response = await apiV3CustomActionsCustomActionIdGetWithHttpInfo(customActionId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
