//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class SchemasApi {
  SchemasApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// view the schema
  ///
  /// This is an example of how a schema might look like. Note that this endpoint does not exist in the actual implementation.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3ExampleSchemaGetWithHttpInfo() async {
    final path = r'/api/v3/example/schema';

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

  /// view the schema
  ///
  /// This is an example of how a schema might look like. Note that this endpoint does not exist in the actual implementation.
  Future<void> apiV3ExampleSchemaGet() async {
    final response = await apiV3ExampleSchemaGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
