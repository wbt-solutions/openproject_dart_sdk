//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class ValuesPropertyApi {
  ValuesPropertyApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get a notification detail
  ///
  /// Returns an individual detail of a notification identified by the notification id and the id of the detail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] notificationId (required):
  ///   notification id
  ///
  /// * [int] id (required):
  ///   detail id
  Future<Response> viewNotificationDetailWithHttpInfo(int notificationId, int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/notifications/{notification_id}/details/{id}'
      .replaceAll('{notification_id}', notificationId.toString())
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

  /// Get a notification detail
  ///
  /// Returns an individual detail of a notification identified by the notification id and the id of the detail.
  ///
  /// Parameters:
  ///
  /// * [int] notificationId (required):
  ///   notification id
  ///
  /// * [int] id (required):
  ///   detail id
  Future<ValuesPropertyModel?> viewNotificationDetail(int notificationId, int id,) async {
    final response = await viewNotificationDetailWithHttpInfo(notificationId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValuesPropertyModel',) as ValuesPropertyModel;
    
    }
    return null;
  }

  /// View Values schema
  ///
  /// The schema of a `Values` resource.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The identifier of the value. This is typically the value of the `property` property of the `Values` resource. It should be in lower camelcase format.
  Future<Response> viewValuesSchemaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/values/schema/{id}'
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

  /// View Values schema
  ///
  /// The schema of a `Values` resource.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The identifier of the value. This is typically the value of the `property` property of the `Values` resource. It should be in lower camelcase format.
  Future<SchemaModel?> viewValuesSchema(String id,) async {
    final response = await viewValuesSchemaWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SchemaModel',) as SchemaModel;
    
    }
    return null;
  }
}
