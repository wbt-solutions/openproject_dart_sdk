//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class NewsApi {
  NewsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// list news
  ///
  /// Lists news. The news returned depend on the provided parameters and also on the requesting user’s permissions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint.
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the queries endpoint.
  Future<Response> apiV3NewsGetWithHttpInfo({ int offset, int pageSize, String sortBy, List<Map<String, Object>> filters }) async {
    // Verify required params are set.

    final path = r'/api/v3/news';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'offset', offset));
    }
    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'pageSize', pageSize));
    }
    if (sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sortBy', sortBy));
    }
    if (filters != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'filters', filters));
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

  /// list news
  ///
  /// Lists news. The news returned depend on the provided parameters and also on the requesting user’s permissions.
  ///
  /// Parameters:
  ///
  /// * [int] offset:
  ///   Page number inside the requested collection.
  ///
  /// * [int] pageSize:
  ///   Number of elements to display per page.
  ///
  /// * [String] sortBy:
  ///   JSON specifying sort criteria. Accepts the same format as returned by the queries endpoint.
  ///
  /// * [List<Map<String, Object>>] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the queries endpoint.
  Future<NewsList> apiV3NewsGet({ int offset, int pageSize, String sortBy, List<Map<String, Object>> filters }) async {
    final response = await apiV3NewsGetWithHttpInfo( offset: offset, pageSize: pageSize, sortBy: sortBy, filters: filters );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NewsList',) as NewsList;
        }
    return Future<NewsList>.value(null);
  }

  /// view news
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   news id
  Future<Response> apiV3NewsIdGetWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/api/v3/news/{id}'
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

  /// view news
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   news id
  Future<News> apiV3NewsIdGet(int id) async {
    final response = await apiV3NewsIdGetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'News',) as News;
        }
    return Future<News>.value(null);
  }
}
