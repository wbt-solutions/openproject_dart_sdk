# swagger.api.CustomObjectsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3CustomObjectsIdGet**](CustomObjectsApi.md#apiV3CustomObjectsIdGet) | **GET** /api/v3/custom_objects/{id} | View Custom Object


# **apiV3CustomObjectsIdGet**
> apiV3CustomObjectsIdGet(id)

View Custom Object



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CustomObjectsApi();
var id = 56; // int | The custom object's identifier

try { 
    api_instance.apiV3CustomObjectsIdGet(id);
} catch (e) {
    print("Exception when calling CustomObjectsApi->apiV3CustomObjectsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The custom object&#39;s identifier | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

