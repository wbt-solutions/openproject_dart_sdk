# openproject_dart_sdk.api.VersionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsProjectIdVersionsGet**](VersionsApi.md#apiv3projectsprojectidversionsget) | **GET** /api/v3/projects/{project_id}/versions | List versions available in a project
[**apiV3VersionsGet**](VersionsApi.md#apiv3versionsget) | **GET** /api/v3/versions | List versions
[**apiV3VersionsIdGet**](VersionsApi.md#apiv3versionsidget) | **GET** /api/v3/versions/{id} | View version


# **apiV3ProjectsProjectIdVersionsGet**
> Versions apiV3ProjectsProjectIdVersionsGet(projectId)

List versions available in a project

This endpoint lists the versions that are *available* in a given project. Note that due to sharing this might be more than the versions *defined* by that project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VersionsApi();
final projectId = 56; // int | ID of the project whoose versions will be listed

try {
    final result = api_instance.apiV3ProjectsProjectIdVersionsGet(projectId);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->apiV3ProjectsProjectIdVersionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| ID of the project whoose versions will be listed | 

### Return type

[**Versions**](Versions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3VersionsGet**
> Versions apiV3VersionsGet(filters)

List versions

Returns a collection of versions. The client can choose to filter the versions similar to how work packages are filtered. In addition to the provided filters, the server will reduce the result set to only contain versions, for which the requesting client has sufficient permissions (*view_work_packages*).

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VersionsApi();
final filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + sharing: filters versions by how they are shared within the server (*none*, *descendants*, *hierarchy*, *tree*, *system*).

try {
    final result = api_instance.apiV3VersionsGet(filters);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->apiV3VersionsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + sharing: filters versions by how they are shared within the server (*none*, *descendants*, *hierarchy*, *tree*, *system*). | [optional] 

### Return type

[**Versions**](Versions.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3VersionsIdGet**
> Version apiV3VersionsIdGet(id)

View version

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = VersionsApi();
final id = 56; // int | version id

try {
    final result = api_instance.apiV3VersionsIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->apiV3VersionsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| version id | 

### Return type

[**Version**](Version.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

