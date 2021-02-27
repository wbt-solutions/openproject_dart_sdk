# openproject_dart_sdk.api.StatusesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3StatusesGet**](StatusesApi.md#apiV3StatusesGet) | **GET** /api/v3/statuses | List all Statuses
[**apiV3StatusesIdGet**](StatusesApi.md#apiV3StatusesIdGet) | **GET** /api/v3/statuses/{id} | View Status


# **apiV3StatusesGet**
> Statuses apiV3StatusesGet()

List all Statuses

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StatusesApi();

try { 
    final result = api_instance.apiV3StatusesGet();
    print(result);
} catch (e) {
    print('Exception when calling StatusesApi->apiV3StatusesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Statuses**](Statuses.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3StatusesIdGet**
> Status apiV3StatusesIdGet(id)

View Status

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = StatusesApi();
final id = 56; // int | status id

try { 
    final result = api_instance.apiV3StatusesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling StatusesApi->apiV3StatusesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| status id | 

### Return type

[**Status**](Status.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

