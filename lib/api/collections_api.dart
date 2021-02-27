//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CollectionsApi {
  CollectionsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// view aggregated result
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] groupBy:
  ///   The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] showSums:
  Future<Response> apiV3ExamplesGetWithHttpInfo({ String groupBy, String showSums }) async {
    // Verify required params are set.

    final path = '/api/v3/examples';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (groupBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'groupBy', groupBy));
    }
    if (showSums != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'showSums', showSums));
    }

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

  /// view aggregated result
  ///
  /// Parameters:
  ///
  /// * [String] groupBy:
  ///   The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](#queries) endpoint.
  ///
  /// * [String] showSums:
  Future<void> apiV3ExamplesGet({ String groupBy, String showSums }) async {
    final response = await apiV3ExamplesGetWithHttpInfo( groupBy: groupBy, showSums: showSums );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }
}
