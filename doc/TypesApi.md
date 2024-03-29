# openproject_dart_sdk.api.TypesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ProjectsProjectIdTypesGet**](TypesApi.md#apiv3projectsprojectidtypesget) | **GET** /api/v3/projects/{project_id}/types | List types available in a project
[**apiV3TypesGet**](TypesApi.md#apiv3typesget) | **GET** /api/v3/types | List all Types
[**apiV3TypesIdGet**](TypesApi.md#apiv3typesidget) | **GET** /api/v3/types/{id} | View Type


# **apiV3ProjectsProjectIdTypesGet**
> WPTypes apiV3ProjectsProjectIdTypesGet(projectId)

List types available in a project

This endpoint lists the types that are *available* in a given project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TypesApi();
final projectId = 56; // int | ID of the project whoose types will be listed

try {
    final result = api_instance.apiV3ProjectsProjectIdTypesGet(projectId);
    print(result);
} catch (e) {
    print('Exception when calling TypesApi->apiV3ProjectsProjectIdTypesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| ID of the project whoose types will be listed | 

### Return type

[**WPTypes**](WPTypes.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3TypesGet**
> WPTypes apiV3TypesGet()

List all Types

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TypesApi();

try {
    final result = api_instance.apiV3TypesGet();
    print(result);
} catch (e) {
    print('Exception when calling TypesApi->apiV3TypesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WPTypes**](WPTypes.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3TypesIdGet**
> WPType apiV3TypesIdGet(id)

View Type

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TypesApi();
final id = 56; // int | type id

try {
    final result = api_instance.apiV3TypesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling TypesApi->apiV3TypesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| type id | 

### Return type

[**WPType**](WPType.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

