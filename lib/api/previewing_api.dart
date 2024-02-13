//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class PreviewingApi {
  PreviewingApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Preview Markdown document
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] context:
  ///   API-Link to the context in which the rendering occurs, for example a specific work package.  If left out only context-agnostic rendering takes place. Please note that OpenProject features markdown-extensions on top of the extensions GitHub Flavored Markdown (gfm) already provides that can only work given a context (e.g. display attached images).  **Supported contexts:**  * `/api/v3/work_packages/{id}` - an existing work package
  Future<Response> previewMarkdownDocumentWithHttpInfo({ String? context, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/render/markdown';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (context != null) {
      queryParams.addAll(_queryParams('', 'context', context));
    }

    const contentTypes = <String>[];


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

  /// Preview Markdown document
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [String] context:
  ///   API-Link to the context in which the rendering occurs, for example a specific work package.  If left out only context-agnostic rendering takes place. Please note that OpenProject features markdown-extensions on top of the extensions GitHub Flavored Markdown (gfm) already provides that can only work given a context (e.g. display attached images).  **Supported contexts:**  * `/api/v3/work_packages/{id}` - an existing work package
  Future<String?> previewMarkdownDocument({ String? context, }) async {
    final response = await previewMarkdownDocumentWithHttpInfo( context: context, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Preview plain document
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> previewPlainDocumentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/render/plain';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Preview plain document
  ///
  /// 
  Future<String?> previewPlainDocument() async {
    final response = await previewPlainDocumentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }
}
