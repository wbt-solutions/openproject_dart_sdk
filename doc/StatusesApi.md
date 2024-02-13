# openproject_dart_sdk.api.StatusesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listAllStatuses**](StatusesApi.md#listallstatuses) | **GET** /api/v3/statuses | List all Statuses
[**viewStatus**](StatusesApi.md#viewstatus) | **GET** /api/v3/statuses/{id} | View Status


# **listAllStatuses**
> StatusCollectionModel listAllStatuses()

List all Statuses



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = StatusesApi();

try {
    final result = api_instance.listAllStatuses();
    print(result);
} catch (e) {
    print('Exception when calling StatusesApi->listAllStatuses: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StatusCollectionModel**](StatusCollectionModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewStatus**
> StatusModel viewStatus(id)

View Status



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = StatusesApi();
final id = 1; // int | Status id

try {
    final result = api_instance.viewStatus(id);
    print(result);
} catch (e) {
    print('Exception when calling StatusesApi->viewStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Status id | 

### Return type

[**StatusModel**](StatusModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

