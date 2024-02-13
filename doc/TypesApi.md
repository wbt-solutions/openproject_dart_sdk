# openproject_dart_sdk.api.TypesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listAllTypes**](TypesApi.md#listalltypes) | **GET** /api/v3/types | List all Types
[**listTypesAvailableInAProject**](TypesApi.md#listtypesavailableinaproject) | **GET** /api/v3/projects/{id}/types | List types available in a project
[**viewType**](TypesApi.md#viewtype) | **GET** /api/v3/types/{id} | View Type


# **listAllTypes**
> Object listAllTypes()

List all Types



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TypesApi();

try {
    final result = api_instance.listAllTypes();
    print(result);
} catch (e) {
    print('Exception when calling TypesApi->listAllTypes: $e\n');
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

# **listTypesAvailableInAProject**
> Object listTypesAvailableInAProject(id)

List types available in a project

This endpoint lists the types that are *available* in a given project.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TypesApi();
final id = 1; // int | ID of the project whose types will be listed

try {
    final result = api_instance.listTypesAvailableInAProject(id);
    print(result);
} catch (e) {
    print('Exception when calling TypesApi->listTypesAvailableInAProject: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID of the project whose types will be listed | 

### Return type

[**Object**](Object.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewType**
> TypeModel viewType(id)

View Type



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TypesApi();
final id = 1; // int | Type id

try {
    final result = api_instance.viewType(id);
    print(result);
} catch (e) {
    print('Exception when calling TypesApi->viewType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Type id | 

### Return type

[**TypeModel**](TypeModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

