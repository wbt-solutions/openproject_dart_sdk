# openproject_dart_sdk.api.FileLinksApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStorage**](FileLinksApi.md#createstorage) | **POST** /api/v3/storages | Creates a storage.
[**createStorageOauthCredentials**](FileLinksApi.md#createstorageoauthcredentials) | **POST** /api/v3/storages/{id}/oauth_client_credentials | Creates an oauth client credentials object for a storage.
[**createWorkPackageFileLink**](FileLinksApi.md#createworkpackagefilelink) | **POST** /api/v3/work_packages/{id}/file_links | Creates file links.
[**deleteFileLink**](FileLinksApi.md#deletefilelink) | **DELETE** /api/v3/file_links/{id} | Removes a file link.
[**deleteStorage**](FileLinksApi.md#deletestorage) | **DELETE** /api/v3/storages/{id} | Delete a storage
[**downloadFileLink**](FileLinksApi.md#downloadfilelink) | **GET** /api/v3/file_links/{id}/download | Creates a download uri of the linked file.
[**getProjectStorage**](FileLinksApi.md#getprojectstorage) | **GET** /api/v3/project_storages/{id} | Gets a project storage
[**getStorage**](FileLinksApi.md#getstorage) | **GET** /api/v3/storages/{id} | Get a storage
[**getStorageFiles**](FileLinksApi.md#getstoragefiles) | **GET** /api/v3/storages/{id}/files | Gets files of a storage.
[**listProjectStorages**](FileLinksApi.md#listprojectstorages) | **GET** /api/v3/project_storages | Gets a list of project storages
[**listStorages**](FileLinksApi.md#liststorages) | **GET** /api/v3/storages | Get Storages
[**listWorkPackageFileLinks**](FileLinksApi.md#listworkpackagefilelinks) | **GET** /api/v3/work_packages/{id}/file_links | Gets all file links of a work package
[**openFileLink**](FileLinksApi.md#openfilelink) | **GET** /api/v3/file_links/{id}/open | Creates an opening uri of the linked file.
[**openProjectStorage**](FileLinksApi.md#openprojectstorage) | **GET** /api/v3/project_storages/{id}/open | Open the project storage
[**openStorage**](FileLinksApi.md#openstorage) | **GET** /api/v3/storages/{id}/open | Open the storage
[**prepareStorageFileUpload**](FileLinksApi.md#preparestoragefileupload) | **POST** /api/v3/storages/{id}/files/prepare_upload | Preparation of a direct upload of a file to the given storage.
[**updateStorage**](FileLinksApi.md#updatestorage) | **PATCH** /api/v3/storages/{id} | Update a storage
[**viewFileLink**](FileLinksApi.md#viewfilelink) | **GET** /api/v3/file_links/{id} | Gets a file link.


# **createStorage**
> StorageReadModel createStorage(storageWriteModel)

Creates a storage.

Creates a storage resource. When creating a storage, a confidential OAuth 2 provider application is created automatically. The oauth client id and secret of the created OAuth application are returned in the response.  **IMPORTANT:** This is the only time, the oauth client secret is visible to the consumer. After that, the secret is hidden.  To update the storage with OAuth client credentials, which enable the storage resource to behave as an OAuth 2 client against an external OAuth 2 provider application, another request must be made to create those, see `POST /api/v3/storages/{id}/oauth_client_credentials`.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final storageWriteModel = StorageWriteModel(); // StorageWriteModel | 

try {
    final result = api_instance.createStorage(storageWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->createStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageWriteModel** | [**StorageWriteModel**](StorageWriteModel.md)|  | [optional] 

### Return type

[**StorageReadModel**](StorageReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStorageOauthCredentials**
> StorageReadModel createStorageOauthCredentials(id, oauthClientCredentialsWriteModel)

Creates an oauth client credentials object for a storage.

Inserts the OAuth 2 credentials into the storage, to allow the storage to act as an OAuth 2 client. Calling this endpoint on a storage that already contains OAuth 2 client credentials will replace them.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Storage id
final oauthClientCredentialsWriteModel = OauthClientCredentialsWriteModel(); // OauthClientCredentialsWriteModel | 

try {
    final result = api_instance.createStorageOauthCredentials(id, oauthClientCredentialsWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->createStorageOauthCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Storage id | 
 **oauthClientCredentialsWriteModel** | [**OauthClientCredentialsWriteModel**](OauthClientCredentialsWriteModel.md)|  | [optional] 

### Return type

[**StorageReadModel**](StorageReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkPackageFileLink**
> FileLinkCollectionReadModel createWorkPackageFileLink(id, fileLinkCollectionWriteModel)

Creates file links.

Creates file links on a work package.  The request is interpreted as a bulk insert, where every element of the collection is validated separately. Each element contains the origin meta data and a link to the storage, the file link is about to point to. The storage link can be provided as a resource link with id or as the host url.  The file's id and name are considered mandatory information. The rest of the origin meta data SHOULD be provided by the client. The _mimeType_ SHOULD be a standard mime type. An empty mime type will be handled as unknown. To link a folder, the custom mime type `application/x-op-directory` MUST be used.  Up to 20 file links can be submitted at once.  If any element data is invalid, no file links will be created.  If a file link with matching origin id, work package, and storage already exists, then it will not create an additional file link or update the meta data. Instead the information from the existing file link will be returned.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Work package id
final fileLinkCollectionWriteModel = FileLinkCollectionWriteModel(); // FileLinkCollectionWriteModel | 

try {
    final result = api_instance.createWorkPackageFileLink(id, fileLinkCollectionWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->createWorkPackageFileLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **fileLinkCollectionWriteModel** | [**FileLinkCollectionWriteModel**](FileLinkCollectionWriteModel.md)|  | [optional] 

### Return type

[**FileLinkCollectionReadModel**](FileLinkCollectionReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFileLink**
> deleteFileLink(id)

Removes a file link.

Removes a file link on a work package.  The request contains only the file link identifier as a path parameter. No request body is needed.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 42; // int | File link id

try {
    api_instance.deleteFileLink(id);
} catch (e) {
    print('Exception when calling FileLinksApi->deleteFileLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| File link id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStorage**
> deleteStorage(id)

Delete a storage

Deletes a storage resource. This also deletes all related records, like the created oauth application, client, and any file links created within this storage.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Storage id

try {
    api_instance.deleteStorage(id);
} catch (e) {
    print('Exception when calling FileLinksApi->deleteStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Storage id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadFileLink**
> downloadFileLink(id)

Creates a download uri of the linked file.

Creates a uri to download the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 42; // int | File link id

try {
    api_instance.downloadFileLink(id);
} catch (e) {
    print('Exception when calling FileLinksApi->downloadFileLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| File link id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectStorage**
> ProjectStorageModel getProjectStorage(id)

Gets a project storage

Gets a project storage resource. This resource contains all data that is applicable on the relation between a storage and a project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Project storage id

try {
    final result = api_instance.getProjectStorage(id);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->getProjectStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project storage id | 

### Return type

[**ProjectStorageModel**](ProjectStorageModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStorage**
> StorageReadModel getStorage(id)

Get a storage

Gets a storage resource. As a side effect, a live connection to the storages origin is established to retrieve connection state data.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Storage id

try {
    final result = api_instance.getStorage(id);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->getStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Storage id | 

### Return type

[**StorageReadModel**](StorageReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStorageFiles**
> StorageFilesModel getStorageFiles(id, parent)

Gets files of a storage.

Gets a collection of files from a storage.  If no `parent` context is given, the result is the content of the document root. With `parent` context given, the result contains the collections of files/directories from within the given parent file id.  If given `parent` context is no directory, `400 Bad Request` is returned.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Storage id
final parent = /my/data; // String | Parent file identification

try {
    final result = api_instance.getStorageFiles(id, parent);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->getStorageFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Storage id | 
 **parent** | **String**| Parent file identification | [optional] 

### Return type

[**StorageFilesModel**](StorageFilesModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjectStorages**
> ProjectStorageCollectionModel listProjectStorages(filters)

Gets a list of project storages

Gets a collection of all project storages that meet the provided filters and the user has permission to see them.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final filters = [{ "project_id": { "operator": "=", "values": ["42"] }}, { "storage_id": { "operator": "=", "values": ["1337"] }}]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - project_id - storage_id - storage_url

try {
    final result = api_instance.listProjectStorages(filters);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->listProjectStorages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  - project_id - storage_id - storage_url | [optional] [default to '[]']

### Return type

[**ProjectStorageCollectionModel**](ProjectStorageCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listStorages**
> StorageCollectionModel listStorages()

Get Storages

Returns a collection of storages.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();

try {
    final result = api_instance.listStorages();
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->listStorages: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StorageCollectionModel**](StorageCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkPackageFileLinks**
> FileLinkCollectionReadModel listWorkPackageFileLinks(id, filters)

Gets all file links of a work package

Gets all file links of a work package.  As a side effect, for every file link a request is sent to the storage's origin to fetch live data and patch the file link's data before returning, as well as retrieving permissions of the user on this origin file. 

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Work package id
final filters = [{"storage":{"operator":"=","values":["42"]}}]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage

try {
    final result = api_instance.listWorkPackageFileLinks(id, filters);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->listWorkPackageFileLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Work package id | 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. The following filters are supported:  - storage | [optional] 

### Return type

[**FileLinkCollectionReadModel**](FileLinkCollectionReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openFileLink**
> openFileLink(id, location)

Creates an opening uri of the linked file.

Creates a uri to open the origin file linked by the given file link. This uri depends on the storage type and is always located on the origin storage itself.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 42; // int | File link id
final location = true; // bool | Boolean flag indicating, if the file should be opened directly or rather the directory location.

try {
    api_instance.openFileLink(id, location);
} catch (e) {
    print('Exception when calling FileLinksApi->openFileLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| File link id | 
 **location** | **bool**| Boolean flag indicating, if the file should be opened directly or rather the directory location. | [optional] 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openProjectStorage**
> openProjectStorage(id)

Open the project storage

Gets a redirect to the location of the project storage's remote origin. If the project storage has a project folder, it is opened at this location. If not, the storage root is opened.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Project storage id

try {
    api_instance.openProjectStorage(id);
} catch (e) {
    print('Exception when calling FileLinksApi->openProjectStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project storage id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **openStorage**
> openStorage(id)

Open the storage

Gets a redirect to the location of the storage's remote origin. The storage's files root should be the target location.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Storage id

try {
    api_instance.openStorage(id);
} catch (e) {
    print('Exception when calling FileLinksApi->openStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Storage id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prepareStorageFileUpload**
> StorageFileUploadLinkModel prepareStorageFileUpload(id, storageFileUploadPreparationModel)

Preparation of a direct upload of a file to the given storage.

Executes a request that prepares a link for a direct upload to the storage.  The background here is, that the client needs to make a direct request to the storage instance for file uploading, but should not get access to the credentials, which are stored in the backend. The response contains a link object, that enables the client to execute a file upload without the real credentials.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Storage id
final storageFileUploadPreparationModel = StorageFileUploadPreparationModel(); // StorageFileUploadPreparationModel | 

try {
    final result = api_instance.prepareStorageFileUpload(id, storageFileUploadPreparationModel);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->prepareStorageFileUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Storage id | 
 **storageFileUploadPreparationModel** | [**StorageFileUploadPreparationModel**](StorageFileUploadPreparationModel.md)|  | [optional] 

### Return type

[**StorageFileUploadLinkModel**](StorageFileUploadLinkModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStorage**
> StorageReadModel updateStorage(id, storageWriteModel)

Update a storage

Updates a storage resource. Only data that is not generated by the server can be updated. This excludes the OAuth 2 application data.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 1337; // int | Storage id
final storageWriteModel = StorageWriteModel(); // StorageWriteModel | 

try {
    final result = api_instance.updateStorage(id, storageWriteModel);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->updateStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Storage id | 
 **storageWriteModel** | [**StorageWriteModel**](StorageWriteModel.md)|  | [optional] 

### Return type

[**StorageReadModel**](StorageReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewFileLink**
> FileLinkReadModel viewFileLink(id)

Gets a file link.

Gets a single file link resource of a work package.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = FileLinksApi();
final id = 42; // int | File link id

try {
    final result = api_instance.viewFileLink(id);
    print(result);
} catch (e) {
    print('Exception when calling FileLinksApi->viewFileLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| File link id | 

### Return type

[**FileLinkReadModel**](FileLinkReadModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

