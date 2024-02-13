//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class OAuth2Api {
  OAuth2Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get the oauth application.
  ///
  /// Retrieves the OAuth 2 provider application for the given identifier. The secret will not be part of the response, instead a `confidential` flag is indicating, whether there is a secret or not.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   OAuth application id
  Future<Response> getOauthApplicationWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/oauth_applications/{id}'
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

  /// Get the oauth application.
  ///
  /// Retrieves the OAuth 2 provider application for the given identifier. The secret will not be part of the response, instead a `confidential` flag is indicating, whether there is a secret or not.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   OAuth application id
  Future<OauthApplicationReadModel?> getOauthApplication(int id,) async {
    final response = await getOauthApplicationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OauthApplicationReadModel',) as OauthApplicationReadModel;
    
    }
    return null;
  }

  /// Get the oauth client credentials object.
  ///
  /// Retrieves the OAuth 2 client credentials for the given identifier. The secret will not be part of the response, instead a `confidential` flag is indicating, whether there is a secret or not.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   OAuth Client Credentials id
  Future<Response> getOauthClientCredentialsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/oauth_client_credentials/{id}'
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

  /// Get the oauth client credentials object.
  ///
  /// Retrieves the OAuth 2 client credentials for the given identifier. The secret will not be part of the response, instead a `confidential` flag is indicating, whether there is a secret or not.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   OAuth Client Credentials id
  Future<OauthClientCredentialsReadModel?> getOauthClientCredentials(int id,) async {
    final response = await getOauthClientCredentialsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OauthClientCredentialsReadModel',) as OauthClientCredentialsReadModel;
    
    }
    return null;
  }
}
