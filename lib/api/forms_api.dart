//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class FormsApi {
  FormsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> apiV3ExampleFormPostWithHttpInfo({ InlineObject1? inlineObject1, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/example/form';

    // ignore: prefer_final_locals
    Object? postBody = inlineObject1;

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

  /// show or validate form
  ///
  /// This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.
  ///
  /// Parameters:
  ///
  /// * [InlineObject1] inlineObject1:
  Future<void> apiV3ExampleFormPost({ InlineObject1? inlineObject1, }) async {
    final response = await apiV3ExampleFormPostWithHttpInfo( inlineObject1: inlineObject1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
