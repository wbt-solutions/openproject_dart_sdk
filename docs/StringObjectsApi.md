# swagger.api.StringObjectsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3StringObjectsGet**](StringObjectsApi.md#apiV3StringObjectsGet) | **GET** /api/v3/string_objects | View String Object


# **apiV3StringObjectsGet**
> apiV3StringObjectsGet(value)

View String Object



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new StringObjectsApi();
var value = value_example; // String | The string value being resolved

try { 
    api_instance.apiV3StringObjectsGet(value);
} catch (e) {
    print("Exception when calling StringObjectsApi->apiV3StringObjectsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **String**| The string value being resolved | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

