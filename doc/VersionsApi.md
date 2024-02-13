# openproject_dart_sdk.api.VersionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**availableProjectsForVersions**](VersionsApi.md#availableprojectsforversions) | **GET** /api/v3/versions/available_projects | Available projects for versions
[**createVersion**](VersionsApi.md#createversion) | **POST** /api/v3/versions | Create version
[**deleteVersion**](VersionsApi.md#deleteversion) | **DELETE** /api/v3/versions/{id} | Delete version
[**listVersions**](VersionsApi.md#listversions) | **GET** /api/v3/versions | List versions
[**listVersionsAvailableInAProject**](VersionsApi.md#listversionsavailableinaproject) | **GET** /api/v3/projects/{id}/versions | List versions available in a project
[**updateVersion**](VersionsApi.md#updateversion) | **PATCH** /api/v3/versions/{id} | Update Version
[**versionCreateForm**](VersionsApi.md#versioncreateform) | **POST** /api/v3/versions/form | Version create form
[**versionUpdateForm**](VersionsApi.md#versionupdateform) | **POST** /api/v3/versions/{id}/form | Version update form
[**viewVersion**](VersionsApi.md#viewversion) | **GET** /api/v3/versions/{id} | View version
[**viewVersionSchema**](VersionsApi.md#viewversionschema) | **GET** /api/v3/versions/schema | View version schema


# **availableProjectsForVersions**
> Object availableProjectsForVersions()

Available projects for versions

Gets a list of projects in which a version can be created in. The list contains all projects in which the user issuing the request has the manage versions permissions.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();

try {
    final result = api_instance.availableProjectsForVersions();
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->availableProjectsForVersions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVersion**
> VersionModel createVersion()

Create version

Creates a new version applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a version's attributes and are accepted by the endpoint.  You can use the form and schema to be retrieve the valid attribute values and by that be guided towards successful creation.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();

try {
    final result = api_instance.createVersion();
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->createVersion: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VersionModel**](VersionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVersion**
> deleteVersion(id)

Delete version

Deletes the version. Work packages associated to the version will no longer be assigned to it.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();
final id = 1; // int | Version id

try {
    api_instance.deleteVersion(id);
} catch (e) {
    print('Exception when calling VersionsApi->deleteVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Version id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVersions**
> Object listVersions(filters)

List versions

Returns a collection of versions. The client can choose to filter the versions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain versions, for which the requesting client has sufficient permissions (*view_work_packages*).

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();
final filters = [{ "sharing": { "operator": "*", "values": ["system"] }" }]; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + sharing: filters versions by how they are shared within the server (*none*, *descendants*, *hierarchy*, *tree*, *system*).

try {
    final result = api_instance.listVersions(filters);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->listVersions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. Currently supported filters are:  + sharing: filters versions by how they are shared within the server (*none*, *descendants*, *hierarchy*, *tree*, *system*). | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVersionsAvailableInAProject**
> Object listVersionsAvailableInAProject(id)

List versions available in a project

This endpoint lists the versions that are *available* in a given project. Note that due to sharing this might be more than the versions *defined* by that project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();
final id = 1; // int | ID of the project whose versions will be listed

try {
    final result = api_instance.listVersionsAvailableInAProject(id);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->listVersionsAvailableInAProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the project whose versions will be listed | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVersion**
> VersionModel updateVersion(id)

Update Version

Updates the given version by applying the attributes provided in the body. Please note that while there is a fixed set of attributes, custom fields can extend a version's attributes and are accepted by the endpoint.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();
final id = 1; // int | Version id

try {
    final result = api_instance.updateVersion(id);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->updateVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Version id | 

### Return type

[**VersionModel**](VersionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionCreateForm**
> versionCreateForm()

Version create form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();

try {
    api_instance.versionCreateForm();
} catch (e) {
    print('Exception when calling VersionsApi->versionCreateForm: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionUpdateForm**
> versionUpdateForm(id)

Version update form



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();
final id = 1; // int | Project id

try {
    api_instance.versionUpdateForm(id);
} catch (e) {
    print('Exception when calling VersionsApi->versionUpdateForm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Project id | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewVersion**
> VersionModel viewVersion(id)

View version



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();
final id = 1; // int | Version id

try {
    final result = api_instance.viewVersion(id);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->viewVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Version id | 

### Return type

[**VersionModel**](VersionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewVersionSchema**
> Object viewVersionSchema()

View version schema



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = VersionsApi();

try {
    final result = api_instance.viewVersionSchema();
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->viewVersionSchema: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

