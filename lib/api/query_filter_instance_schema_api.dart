//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class QueryFilterInstanceSchemaApi {
  QueryFilterInstanceSchemaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List Query Filter Instance Schemas for Project
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id of the project.
  Future<Response> apiV3ProjectsIdQueriesFilterInstanceSchemasGetWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/queries/filter_instance_schemas'
      .replaceAll('{id}', id.toString());

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

  /// List Query Filter Instance Schemas for Project
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id of the project.
  Future<void> apiV3ProjectsIdQueriesFilterInstanceSchemasGet(int id,) async {
    final response = await apiV3ProjectsIdQueriesFilterInstanceSchemasGetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List Query Filter Instance Schemas
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> apiV3QueriesFilterInstanceSchemasGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/filter_instance_schemas';

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

  /// List Query Filter Instance Schemas
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.
  Future<void> apiV3QueriesFilterInstanceSchemasGet() async {
    final response = await apiV3QueriesFilterInstanceSchemasGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// View Query Filter Instance Schema
  ///
  /// Retreive an individual QueryFilterInstanceSchema as identified by the id parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] identifier (required):
  ///   QueryFilterInstanceSchema identifier. The identifier is the filter identifier.
  Future<Response> apiV3QueriesFilterInstanceSchemasIdentifierGetWithHttpInfo(String identifier,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/filter_instance_schemas/{identifier}'
      .replaceAll('{identifier}', identifier);

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

  /// View Query Filter Instance Schema
  ///
  /// Retreive an individual QueryFilterInstanceSchema as identified by the id parameter.
  ///
  /// Parameters:
  ///
  /// * [String] identifier (required):
  ///   QueryFilterInstanceSchema identifier. The identifier is the filter identifier.
  Future<void> apiV3QueriesFilterInstanceSchemasIdentifierGet(String identifier,) async {
    final response = await apiV3QueriesFilterInstanceSchemasIdentifierGetWithHttpInfo(identifier,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
