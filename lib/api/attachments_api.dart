//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class AttachmentsApi {
  AttachmentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add attachment to post
  ///
  /// Adds an attachment with the post as it's container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the post to receive the attachment
  Future<Response> addAttachmentToPostWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/posts/{id}/attachments'
      .replaceAll('{id}', id.toString());

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

  /// Add attachment to post
  ///
  /// Adds an attachment with the post as it's container.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the post to receive the attachment
  Future<void> addAttachmentToPost(int id,) async {
    final response = await addAttachmentToPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Add attachment to wiki page
  ///
  /// Adds an attachment with the wiki page as it's container.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the wiki page to receive the attachment
  Future<Response> addAttachmentToWikiPageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/wiki_pages/{id}/attachments'
      .replaceAll('{id}', id.toString());

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

  /// Add attachment to wiki page
  ///
  /// Adds an attachment with the wiki page as it's container.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the wiki page to receive the attachment
  Future<void> addAttachmentToWikiPage(int id,) async {
    final response = await addAttachmentToWikiPageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create Attachment
  ///
  /// Clients can create attachments without a container first and attach them later on. This is useful if the container does not exist at the time the attachment is uploaded. After the upload, the client can then claim such containerless attachments for any resource eligible (e.g. WorkPackage) on subsequent requests. The upload and the claiming *must* be done for the same user account. Attachments uploaded by another user cannot be claimed and once claimed for a resource, they cannot be claimed by another.  The upload request must be of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` *must* be indicated in the `Content-Disposition` of this part, although it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createAttachmentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/attachments';

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

  /// Create Attachment
  ///
  /// Clients can create attachments without a container first and attach them later on. This is useful if the container does not exist at the time the attachment is uploaded. After the upload, the client can then claim such containerless attachments for any resource eligible (e.g. WorkPackage) on subsequent requests. The upload and the claiming *must* be done for the same user account. Attachments uploaded by another user cannot be claimed and once claimed for a resource, they cannot be claimed by another.  The upload request must be of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` *must* be indicated in the `Content-Disposition` of this part, although it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.
  Future<AttachmentModel?> createAttachment() async {
    final response = await createAttachmentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentModel',) as AttachmentModel;
    
    }
    return null;
  }

  /// Create work package attachment
  ///
  /// To add an attachment to a work package, a client needs to issue a request of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` must be indicated in the `Content-Disposition` of this part, however it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package to receive the attachment
  Future<Response> createWorkPackageAttachmentWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/attachments'
      .replaceAll('{id}', id.toString());

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

  /// Create work package attachment
  ///
  /// To add an attachment to a work package, a client needs to issue a request of type `multipart/form-data` with exactly two parts.  The first part *must* be called `metadata`. Its content type is expected to be `application/json`, the body *must* be a single JSON object, containing at least the `fileName` and optionally the attachments `description`.  The second part *must* be called `file`, its content type *should* match the mime type of the file. The body *must* be the raw content of the file. Note that a `filename` must be indicated in the `Content-Disposition` of this part, however it will be ignored. Instead the `fileName` inside the JSON of the metadata part will be used.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package to receive the attachment
  Future<AttachmentModel?> createWorkPackageAttachment(int id,) async {
    final response = await createWorkPackageAttachmentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentModel',) as AttachmentModel;
    
    }
    return null;
  }

  /// Delete attachment
  ///
  /// Permanently deletes the specified attachment.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Attachment id
  Future<Response> deleteAttachmentWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/attachments/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete attachment
  ///
  /// Permanently deletes the specified attachment.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Attachment id
  Future<void> deleteAttachment(int id,) async {
    final response = await deleteAttachmentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List attachments by post
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the post whose attachments will be listed
  Future<Response> listAttachmentsByPostWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/posts/{id}/attachments'
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

  /// List attachments by post
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the post whose attachments will be listed
  Future<AttachmentsModel?> listAttachmentsByPost(int id,) async {
    final response = await listAttachmentsByPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentsModel',) as AttachmentsModel;
    
    }
    return null;
  }

  /// List attachments by wiki page
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the wiki page whose attachments will be listed
  Future<Response> listAttachmentsByWikiPageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/wiki_pages/{id}/attachments'
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

  /// List attachments by wiki page
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the wiki page whose attachments will be listed
  Future<AttachmentsModel?> listAttachmentsByWikiPage(int id,) async {
    final response = await listAttachmentsByWikiPageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentsModel',) as AttachmentsModel;
    
    }
    return null;
  }

  /// List attachments by work package
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package whose attachments will be listed
  Future<Response> listWorkPackageAttachmentsWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/attachments'
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

  /// List attachments by work package
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID of the work package whose attachments will be listed
  Future<AttachmentsModel?> listWorkPackageAttachments(int id,) async {
    final response = await listWorkPackageAttachmentsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentsModel',) as AttachmentsModel;
    
    }
    return null;
  }

  /// View attachment
  ///
  /// 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Attachment id
  Future<Response> viewAttachmentWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/attachments/{id}'
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

  /// View attachment
  ///
  /// 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Attachment id
  Future<AttachmentModel?> viewAttachment(int id,) async {
    final response = await viewAttachmentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentModel',) as AttachmentModel;
    
    }
    return null;
  }
}
