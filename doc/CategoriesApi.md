# openproject_dart_sdk.api.CategoriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listCategoriesOfAProject**](CategoriesApi.md#listcategoriesofaproject) | **GET** /api/v3/projects/{id}/categories | List categories of a project
[**viewCategory**](CategoriesApi.md#viewcategory) | **GET** /api/v3/categories/{id} | View Category


# **listCategoriesOfAProject**
> Object listCategoriesOfAProject(id)

List categories of a project



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = CategoriesApi();
final id = 1; // int | ID of the project whose categories will be listed

try {
    final result = api_instance.listCategoriesOfAProject(id);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->listCategoriesOfAProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the project whose categories will be listed | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewCategory**
> CategoryModel viewCategory(id)

View Category



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = CategoriesApi();
final id = 1; // int | Category id

try {
    final result = api_instance.viewCategory(id);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->viewCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Category id | 

### Return type

[**CategoryModel**](CategoryModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

