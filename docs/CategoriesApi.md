# swagger.api.CategoriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3CategoriesIdGet**](CategoriesApi.md#apiV3CategoriesIdGet) | **GET** /api/v3/categories/{id} | View Category
[**apiV3ProjectsProjectIdCategoriesGet**](CategoriesApi.md#apiV3ProjectsProjectIdCategoriesGet) | **GET** /api/v3/projects/{project_id}/categories | List categories of a project


# **apiV3CategoriesIdGet**
> apiV3CategoriesIdGet(id)

View Category



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CategoriesApi();
var id = 56; // int | category id

try { 
    api_instance.apiV3CategoriesIdGet(id);
} catch (e) {
    print("Exception when calling CategoriesApi->apiV3CategoriesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| category id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ProjectsProjectIdCategoriesGet**
> apiV3ProjectsProjectIdCategoriesGet(projectId)

List categories of a project



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CategoriesApi();
var projectId = 56; // int | ID of the project whoose categories will be listed

try { 
    api_instance.apiV3ProjectsProjectIdCategoriesGet(projectId);
} catch (e) {
    print("Exception when calling CategoriesApi->apiV3ProjectsProjectIdCategoriesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **projectId** | **int**| ID of the project whoose categories will be listed | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

