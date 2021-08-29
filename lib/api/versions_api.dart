//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class VersionsApi {
  VersionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List versions available in a project
  ///
  /// This endpoint lists the versions that are *available* in a given project. Note that due to sharing this might be more than the versions *defined* by that project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] projectId (required):
  ///   ID of the project whoose versions will be listed
  Future<Response> apiV3ProjectsProjectIdVersionsGetWithHttpInfo(int projectId) async {
    // Verify required params are set.
    if (projectId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: projectId');
    }

    final path = r'/api/v3/projects/{project_id}/versions'
      .replaceAll('{' + 'project_id' + '}', projectId.toString());

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

  /// List versions available in a project
  ///
  /// This endpoint lists the versions that are *available* in a given project. Note that due to sharing this might be more than the versions *defined* by that project.
  ///
  /// Parameters:
  ///
  /// * [int] projectId (required):
  ///   ID of the project whoose versions will be listed
  Future<Versions> apiV3ProjectsProjectIdVersionsGet(int projectId) async {
    final response = await apiV3ProjectsProjectIdVersionsGetWithHttpInfo(projectId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Versions',) as Versions;
        }
    return Future<Versions>.value(null);
  }

  /// List versions
  ///
  /// Returns a collection of versions. The client can choose to filter the versions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain versions, for which the requesting client has sufficient permissions (*view_work_packages*).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + sharing: filters versions by how they are shared within the server (*none*, *descendants*, *hierarchy*, *tree*, *system*).
  Future<Response> apiV3VersionsGetWithHttpInfo({ String filters }) async {
    // Verify required params are set.

    final path = r'/api/v3/versions';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filters', filters));
    }

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

  /// List versions
  ///
  /// Returns a collection of versions. The client can choose to filter the versions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain versions, for which the requesting client has sufficient permissions (*view_work_packages*).
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + sharing: filters versions by how they are shared within the server (*none*, *descendants*, *hierarchy*, *tree*, *system*).
  Future<Versions> apiV3VersionsGet({ String filters }) async {
    final response = await apiV3VersionsGetWithHttpInfo( filters: filters );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Versions',) as Versions;
        }
    return Future<Versions>.value(null);
  }

  /// View version
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   version id
  Future<Response> apiV3VersionsIdGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/versions/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// View version
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   version id
  Future<Version> apiV3VersionsIdGet(int id) async {
    final response = await apiV3VersionsIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Version',) as Version;
        }
    return Future<Version>.value(null);
  }
}
