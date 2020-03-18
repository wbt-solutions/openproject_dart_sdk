# swagger.api.StatusesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3StatusesGet**](StatusesApi.md#apiV3StatusesGet) | **GET** /api/v3/statuses | List all Statuses
[**apiV3StatusesIdGet**](StatusesApi.md#apiV3StatusesIdGet) | **GET** /api/v3/statuses/{id} | View Status


# **apiV3StatusesGet**
> apiV3StatusesGet()

List all Statuses



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new StatusesApi();

try { 
    api_instance.apiV3StatusesGet();
} catch (e) {
    print("Exception when calling StatusesApi->apiV3StatusesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3StatusesIdGet**
> apiV3StatusesIdGet(id)

View Status



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new StatusesApi();
var id = 56; // int | status id

try { 
    api_instance.apiV3StatusesIdGet(id);
} catch (e) {
    print("Exception when calling StatusesApi->apiV3StatusesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| status id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

