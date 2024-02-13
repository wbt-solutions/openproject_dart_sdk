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
  /// * [ShowOrValidateFormRequest] showOrValidateFormRequest:
  Future<Response> showOrValidateFormWithHttpInfo({ ShowOrValidateFormRequest? showOrValidateFormRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/example/form';

    // ignore: prefer_final_locals
    Object? postBody = showOrValidateFormRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// show or validate form
  ///
  /// This is an example of how a form might look like. Note that this endpoint does not exist in the actual implementation.
  ///
  /// Parameters:
  ///
  /// * [ShowOrValidateFormRequest] showOrValidateFormRequest:
  Future<Object?> showOrValidateForm({ ShowOrValidateFormRequest? showOrValidateFormRequest, }) async {
    final response = await showOrValidateFormWithHttpInfo( showOrValidateFormRequest: showOrValidateFormRequest, );
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
}
