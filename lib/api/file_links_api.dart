//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;


class FileLinksApi {
  FileLinksApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a storage.
  ///
  /// Creates a storage resource. When creating a storage, a confidential OAuth 2 provider application is created automatically. The oauth client id and secret of the created OAuth application are returned in the response.  **IMPORTANT:** This is the only time, the oauth client secret is visible to the consumer. After that, the secret is hidden.  To update the storage with OAuth client credentials, which enable the storage resource to behave as an OAuth 2 client against an external OAuth 2 provider application, another request must be made to create those, see `POST /api/v3/storages/{id}/oauth_client_credentials`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [StorageWriteModel] storageWriteModel:
  Future<Response> createStorageWithHttpInfo({ StorageWriteModel? storageWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages';

    // ignore: prefer_final_locals
    Object? postBody = storageWriteModel;

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

  /// Creates a storage.
  ///
  /// Creates a storage resource. When creating a storage, a confidential OAuth 2 provider application is created automatically. The oauth client id and secret of the created OAuth application are returned in the response.  **IMPORTANT:** This is the only time, the oauth client secret is visible to the consumer. After that, the secret is hidden.  To update the storage with OAuth client credentials, which enable the storage resource to behave as an OAuth 2 client against an external OAuth 2 provider application, another request must be made to create those, see `POST /api/v3/storages/{id}/oauth_client_credentials`.
  ///
  /// Parameters:
  ///
  /// * [StorageWriteModel] storageWriteModel:
  Future<StorageReadModel?> createStorage({ StorageWriteModel? storageWriteModel, }) async {
    final response = await createStorageWithHttpInfo( storageWriteModel: storageWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageReadModel',) as StorageReadModel;
    
    }
    return null;
  }

  /// Creates an oauth client credentials object for a storage.
  ///
  /// Inserts the OAuth 2 credentials into the storage, to allow the storage to act as an OAuth 2 client. Calling this endpoint on a storage that already contains OAuth 2 client credentials will replace them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [OauthClientCredentialsWriteModel] oauthClientCredentialsWriteModel:
  Future<Response> createStorageOauthCredentialsWithHttpInfo(int id, { OauthClientCredentialsWriteModel? oauthClientCredentialsWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages/{id}/oauth_client_credentials'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = oauthClientCredentialsWriteModel;

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

  /// Creates an oauth client credentials object for a storage.
  ///
  /// Inserts the OAuth 2 credentials into the storage, to allow the storage to act as an OAuth 2 client. Calling this endpoint on a storage that already contains OAuth 2 client credentials will replace them.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [OauthClientCredentialsWriteModel] oauthClientCredentialsWriteModel:
  Future<StorageReadModel?> createStorageOauthCredentials(int id, { OauthClientCredentialsWriteModel? oauthClientCredentialsWriteModel, }) async {
    final response = await createStorageOauthCredentialsWithHttpInfo(id,  oauthClientCredentialsWriteModel: oauthClientCredentialsWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageReadModel',) as StorageReadModel;
    
    }
    return null;
  }

  /// Creates file links.
  ///
  /// Creates file links on a work package.  The request is interpreted as a bulk insert, where every element of the collection is validated separately. Each element contains the origin meta data and a link to the storage, the file link is about to point to. The storage link can be provided as a resource link with id or as the host url.  The file's id and name are considered mandatory information. The rest of the origin meta data SHOULD be provided by the client. The _mimeType_ SHOULD be a standard mime type. An empty mime type will be handled as unknown. To link a folder, the custom mime type `application/x-op-directory` MUST be used.  Up to 20 file links can be submitted at once.  If any element data is invalid, no file links will be created.  If a file link with matching origin id, work package, and storage already exists, then it will not create an additional file link or update the meta data. Instead the information from the existing file link will be returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [FileLinkCollectionWriteModel] fileLinkCollectionWriteModel:
  Future<Response> createWorkPackageFileLinkWithHttpInfo(int id, { FileLinkCollectionWriteModel? fileLinkCollectionWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/file_links'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = fileLinkCollectionWriteModel;

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

  /// Creates file links.
  ///
  /// Creates file links on a work package.  The request is interpreted as a bulk insert, where every element of the collection is validated separately. Each element contains the origin meta data and a link to the storage, the file link is about to point to. The storage link can be provided as a resource link with id or as the host url.  The file's id and name are considered mandatory information. The rest of the origin meta data SHOULD be provided by the client. The _mimeType_ SHOULD be a standard mime type. An empty mime type will be handled as unknown. To link a folder, the custom mime type `application/x-op-directory` MUST be used.  Up to 20 file links can be submitted at once.  If any element data is invalid, no file links will be created.  If a file link with matching origin id, work package, and storage already exists, then it will not create an additional file link or update the meta data. Instead the information from the existing file link will be returned.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [FileLinkCollectionWriteModel] fileLinkCollectionWriteModel:
  Future<FileLinkCollectionReadModel?> createWorkPackageFileLink(int id, { FileLinkCollectionWriteModel? fileLinkCollectionWriteModel, }) async {
    final response = await createWorkPackageFileLinkWithHttpInfo(id,  fileLinkCollectionWriteModel: fileLinkCollectionWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileLinkCollectionReadModel',) as FileLinkCollectionReadModel;
    
    }
    return null;
  }

  /// Removes a file link.
  ///
  /// Removes a file link on a work package.  The request contains only the file link identifier as a path parameter. No request body is needed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  Future<Response> deleteFileLinkWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/file_links/{id}'
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

  /// Removes a file link.
  ///
  /// Removes a file link on a work package.  The request contains only the file link identifier as a path parameter. No request body is needed.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  Future<void> deleteFileLink(int id,) async {
    final response = await deleteFileLinkWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a storage
  ///
  /// Deletes a storage resource. This also deletes all related records, like the created oauth application, client, and any file links created within this storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  Future<Response> deleteStorageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages/{id}'
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

  /// Delete a storage
  ///
  /// Deletes a storage resource. This also deletes all related records, like the created oauth application, client, and any file links created within this storage.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  Future<void> deleteStorage(int id,) async {
    final response = await deleteStorageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Creates a download uri of the linked file.
  ///
  /// Creates a uri to download the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  Future<Response> downloadFileLinkWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/file_links/{id}/download'
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

  /// Creates a download uri of the linked file.
  ///
  /// Creates a uri to download the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  Future<void> downloadFileLink(int id,) async {
    final response = await downloadFileLinkWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Gets a project storage
  ///
  /// Gets a project storage resource. This resource contains all data that is applicable on the relation between a storage and a project.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project storage id
  Future<Response> getProjectStorageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/project_storages/{id}'
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

  /// Gets a project storage
  ///
  /// Gets a project storage resource. This resource contains all data that is applicable on the relation between a storage and a project.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project storage id
  Future<ProjectStorageModel?> getProjectStorage(int id,) async {
    final response = await getProjectStorageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectStorageModel',) as ProjectStorageModel;
    
    }
    return null;
  }

  /// Get a storage
  ///
  /// Gets a storage resource. As a side effect, a live connection to the storages origin is established to retrieve connection state data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  Future<Response> getStorageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages/{id}'
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

  /// Get a storage
  ///
  /// Gets a storage resource. As a side effect, a live connection to the storages origin is established to retrieve connection state data.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  Future<StorageReadModel?> getStorage(int id,) async {
    final response = await getStorageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageReadModel',) as StorageReadModel;
    
    }
    return null;
  }

  /// Gets files of a storage.
  ///
  /// Gets a collection of files from a storage.  If no `parent` context is given, the result is the content of the document root. With `parent` context given, the result contains the collections of files/directories from within the given parent file id.  If given `parent` context is no directory, `400 Bad Request` is returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [String] parent:
  ///   Parent file identification
  Future<Response> getStorageFilesWithHttpInfo(int id, { String? parent, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages/{id}/files'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (parent != null) {
      queryParams.addAll(_queryParams('', 'parent', parent));
    }

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

  /// Gets files of a storage.
  ///
  /// Gets a collection of files from a storage.  If no `parent` context is given, the result is the content of the document root. With `parent` context given, the result contains the collections of files/directories from within the given parent file id.  If given `parent` context is no directory, `400 Bad Request` is returned.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [String] parent:
  ///   Parent file identification
  Future<StorageFilesModel?> getStorageFiles(int id, { String? parent, }) async {
    final response = await getStorageFilesWithHttpInfo(id,  parent: parent, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageFilesModel',) as StorageFilesModel;
    
    }
    return null;
  }

  /// Gets a list of project storages
  ///
  /// Gets a collection of all project storages that meet the provided filters and the user has permission to see them.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - project_id - storage_id - storage_url
  Future<Response> listProjectStoragesWithHttpInfo({ String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/project_storages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

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

  /// Gets a list of project storages
  ///
  /// Gets a collection of all project storages that meet the provided filters and the user has permission to see them.
  ///
  /// Parameters:
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - project_id - storage_id - storage_url
  Future<ProjectStorageCollectionModel?> listProjectStorages({ String? filters, }) async {
    final response = await listProjectStoragesWithHttpInfo( filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectStorageCollectionModel',) as ProjectStorageCollectionModel;
    
    }
    return null;
  }

  /// Get Storages
  ///
  /// Returns a collection of storages.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listStoragesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages';

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

  /// Get Storages
  ///
  /// Returns a collection of storages.
  Future<StorageCollectionModel?> listStorages() async {
    final response = await listStoragesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageCollectionModel',) as StorageCollectionModel;
    
    }
    return null;
  }

  /// Gets all file links of a work package
  ///
  /// Gets all file links of a work package.  As a side effect, for every file link a request is sent to the storage's origin to fetch live data and patch the file link's data before returning, as well as retrieving permissions of the user on this origin file. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage
  Future<Response> listWorkPackageFileLinksWithHttpInfo(int id, { String? filters, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/work_packages/{id}/file_links'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (filters != null) {
      queryParams.addAll(_queryParams('', 'filters', filters));
    }

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

  /// Gets all file links of a work package
  ///
  /// Gets all file links of a work package.  As a side effect, for every file link a request is sent to the storage's origin to fetch live data and patch the file link's data before returning, as well as retrieving permissions of the user on this origin file. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Work package id
  ///
  /// * [String] filters:
  ///   JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage
  Future<FileLinkCollectionReadModel?> listWorkPackageFileLinks(int id, { String? filters, }) async {
    final response = await listWorkPackageFileLinksWithHttpInfo(id,  filters: filters, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileLinkCollectionReadModel',) as FileLinkCollectionReadModel;
    
    }
    return null;
  }

  /// Creates an opening uri of the linked file.
  ///
  /// Creates a uri to open the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  ///
  /// * [bool] location:
  ///   Boolean flag indicating, if the file should be opened directly or rather the directory location.
  Future<Response> openFileLinkWithHttpInfo(int id, { bool? location, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/file_links/{id}/open'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (location != null) {
      queryParams.addAll(_queryParams('', 'location', location));
    }

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

  /// Creates an opening uri of the linked file.
  ///
  /// Creates a uri to open the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  ///
  /// * [bool] location:
  ///   Boolean flag indicating, if the file should be opened directly or rather the directory location.
  Future<void> openFileLink(int id, { bool? location, }) async {
    final response = await openFileLinkWithHttpInfo(id,  location: location, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open the project storage
  ///
  /// Gets a redirect to the location of the project storage's remote origin. If the project storage has a project folder, it is opened at this location. If not, the storage root is opened.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project storage id
  Future<Response> openProjectStorageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/project_storages/{id}/open'
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

  /// Open the project storage
  ///
  /// Gets a redirect to the location of the project storage's remote origin. If the project storage has a project folder, it is opened at this location. If not, the storage root is opened.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Project storage id
  Future<void> openProjectStorage(int id,) async {
    final response = await openProjectStorageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Open the storage
  ///
  /// Gets a redirect to the location of the storage's remote origin. The storage's files root should be the target location.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  Future<Response> openStorageWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages/{id}/open'
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

  /// Open the storage
  ///
  /// Gets a redirect to the location of the storage's remote origin. The storage's files root should be the target location.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  Future<void> openStorage(int id,) async {
    final response = await openStorageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Preparation of a direct upload of a file to the given storage.
  ///
  /// Executes a request that prepares a link for a direct upload to the storage.  The background here is, that the client needs to make a direct request to the storage instance for file uploading, but should not get access to the credentials, which are stored in the backend. The response contains a link object, that enables the client to execute a file upload without the real credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [StorageFileUploadPreparationModel] storageFileUploadPreparationModel:
  Future<Response> prepareStorageFileUploadWithHttpInfo(int id, { StorageFileUploadPreparationModel? storageFileUploadPreparationModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages/{id}/files/prepare_upload'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = storageFileUploadPreparationModel;

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

  /// Preparation of a direct upload of a file to the given storage.
  ///
  /// Executes a request that prepares a link for a direct upload to the storage.  The background here is, that the client needs to make a direct request to the storage instance for file uploading, but should not get access to the credentials, which are stored in the backend. The response contains a link object, that enables the client to execute a file upload without the real credentials.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [StorageFileUploadPreparationModel] storageFileUploadPreparationModel:
  Future<StorageFileUploadLinkModel?> prepareStorageFileUpload(int id, { StorageFileUploadPreparationModel? storageFileUploadPreparationModel, }) async {
    final response = await prepareStorageFileUploadWithHttpInfo(id,  storageFileUploadPreparationModel: storageFileUploadPreparationModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageFileUploadLinkModel',) as StorageFileUploadLinkModel;
    
    }
    return null;
  }

  /// Update a storage
  ///
  /// Updates a storage resource. Only data that is not generated by the server can be updated. This excludes the OAuth 2 application data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [StorageWriteModel] storageWriteModel:
  Future<Response> updateStorageWithHttpInfo(int id, { StorageWriteModel? storageWriteModel, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/storages/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = storageWriteModel;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a storage
  ///
  /// Updates a storage resource. Only data that is not generated by the server can be updated. This excludes the OAuth 2 application data.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Storage id
  ///
  /// * [StorageWriteModel] storageWriteModel:
  Future<StorageReadModel?> updateStorage(int id, { StorageWriteModel? storageWriteModel, }) async {
    final response = await updateStorageWithHttpInfo(id,  storageWriteModel: storageWriteModel, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StorageReadModel',) as StorageReadModel;
    
    }
    return null;
  }

  /// Gets a file link.
  ///
  /// Gets a single file link resource of a work package.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  Future<Response> viewFileLinkWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v3/file_links/{id}'
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

  /// Gets a file link.
  ///
  /// Gets a single file link resource of a work package.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   File link id
  Future<FileLinkReadModel?> viewFileLink(int id,) async {
    final response = await viewFileLinkWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileLinkReadModel',) as FileLinkReadModel;
    
    }
    return null;
  }
}
