# openproject_dart_sdk.api.PrioritiesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3PrioritiesGet**](PrioritiesApi.md#apiV3PrioritiesGet) | **GET** /api/v3/priorities | List all Priorities
[**apiV3PrioritiesIdGet**](PrioritiesApi.md#apiV3PrioritiesIdGet) | **GET** /api/v3/priorities/{id} | View Priority


# **apiV3PrioritiesGet**
> Priorities apiV3PrioritiesGet()

List all Priorities

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = PrioritiesApi();

try { 
    var result = api_instance.apiV3PrioritiesGet();
    print(result);
} catch (e) {
    print("Exception when calling PrioritiesApi->apiV3PrioritiesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Priorities**](Priorities.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3PrioritiesIdGet**
> Priority apiV3PrioritiesIdGet(id)

View Priority

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = PrioritiesApi();
var id = 56; // int | Priority id

try { 
    var result = api_instance.apiV3PrioritiesIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling PrioritiesApi->apiV3PrioritiesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Priority id | [default to null]

### Return type

[**Priority**](Priority.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

