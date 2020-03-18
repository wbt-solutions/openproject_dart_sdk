# swagger.api.PrioritiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3PrioritiesGet**](PrioritiesApi.md#apiV3PrioritiesGet) | **GET** /api/v3/priorities | List all Priorities
[**apiV3PrioritiesIdGet**](PrioritiesApi.md#apiV3PrioritiesIdGet) | **GET** /api/v3/priorities/{id} | View Priority


# **apiV3PrioritiesGet**
> apiV3PrioritiesGet()

List all Priorities



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PrioritiesApi();

try { 
    api_instance.apiV3PrioritiesGet();
} catch (e) {
    print("Exception when calling PrioritiesApi->apiV3PrioritiesGet: $e\n");
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

# **apiV3PrioritiesIdGet**
> apiV3PrioritiesIdGet(id)

View Priority



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PrioritiesApi();
var id = 56; // int | Priority id

try { 
    api_instance.apiV3PrioritiesIdGet(id);
} catch (e) {
    print("Exception when calling PrioritiesApi->apiV3PrioritiesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Priority id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

