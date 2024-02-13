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

  /// List Query Filter Instance Schemas
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listQueryFilterInstanceSchemasWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/filter_instance_schemas';

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

  /// List Query Filter Instance Schemas
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a global query. That is a query not assigned to a project.
  Future<Object?> listQueryFilterInstanceSchemas() async {
    final response = await listQueryFilterInstanceSchemasWithHttpInfo();
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

  /// List Query Filter Instance Schemas for Project
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Response> listQueryFilterInstanceSchemasForProjectWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/projects/{id}/queries/filter_instance_schemas'
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

  /// List Query Filter Instance Schemas for Project
  ///
  /// Returns the list of QueryFilterInstanceSchemas defined for a query of the specified project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project id
  Future<Object?> listQueryFilterInstanceSchemasForProject(int id,) async {
    final response = await listQueryFilterInstanceSchemasForProjectWithHttpInfo(id,);
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

  /// View Query Filter Instance Schema
  ///
  /// Retrieve an individual QueryFilterInstanceSchema as identified by the id parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   QueryFilterInstanceSchema identifier. The identifier is the filter identifier.
  Future<Response> viewQueryFilterInstanceSchemaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/queries/filter_instance_schemas/{id}'
      .replaceAll('{id}', id);

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

  /// View Query Filter Instance Schema
  ///
  /// Retrieve an individual QueryFilterInstanceSchema as identified by the id parameter.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   QueryFilterInstanceSchema identifier. The identifier is the filter identifier.
  Future<QueryFilterInstanceSchemaModel?> viewQueryFilterInstanceSchema(String id,) async {
    final response = await viewQueryFilterInstanceSchemaWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueryFilterInstanceSchemaModel',) as QueryFilterInstanceSchemaModel;
    
    }
    return null;
  }
}
