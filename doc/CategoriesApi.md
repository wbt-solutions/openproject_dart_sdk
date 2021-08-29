# openproject_dart_sdk.api.CategoriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3CategoriesIdGet**](CategoriesApi.md#apiv3categoriesidget) | **GET** /api/v3/categories/{id} | View Category
[**apiV3ProjectsProjectIdCategoriesGet**](CategoriesApi.md#apiv3projectsprojectidcategoriesget) | **GET** /api/v3/projects/{project_id}/categories | List categories of a project


# **apiV3CategoriesIdGet**
> Category apiV3CategoriesIdGet(id)

View Category

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CategoriesApi();
final id = 56; // int | category id

try {
    final result = api_instance.apiV3CategoriesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->apiV3CategoriesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| category id | 

### Return type

[**Category**](Category.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsProjectIdCategoriesGet**
> Categories apiV3ProjectsProjectIdCategoriesGet(projectId)

List categories of a project

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = CategoriesApi();
final projectId = 56; // int | ID of the project whoose categories will be listed

try {
    final result = api_instance.apiV3ProjectsProjectIdCategoriesGet(projectId);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->apiV3ProjectsProjectIdCategoriesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| ID of the project whoose categories will be listed | 

### Return type

[**Categories**](Categories.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

