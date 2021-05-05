//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class FormsApi {
  FormsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// show or validate form
  ///
  /// This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InlineObject1] inlineObject1:
  Future<Response> apiV3ExampleFormPostWithHttpInfo({ InlineObject1 inlineObject1 }) async {
    // Verify required params are set.

    final path = r'/api/v3/example/form';

    Object postBody = inlineObject1;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['basicAuth', 'oAuth'];

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

  /// show or validate form
  ///
  /// This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.
  ///
  /// Parameters:
  ///
  /// * [InlineObject1] inlineObject1:
  Future<void> apiV3ExampleFormPost({ InlineObject1 inlineObject1 }) async {
    final response = await apiV3ExampleFormPostWithHttpInfo( inlineObject1: inlineObject1 );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
