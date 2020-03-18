# swagger.api.QueryFiltersApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueriesFiltersIdGet**](QueryFiltersApi.md#apiV3QueriesFiltersIdGet) | **GET** /api/v3/queries/filters/{id} | View Query Filter


# **apiV3QueriesFiltersIdGet**
> apiV3QueriesFiltersIdGet(id)

View Query Filter

Retreive an individual QueryFilter as identified by the id parameter.

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new QueryFiltersApi();
var id = id_example; // String | QueryFilter identifier.

try { 
    api_instance.apiV3QueriesFiltersIdGet(id);
} catch (e) {
    print("Exception when calling QueryFiltersApi->apiV3QueriesFiltersIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryFilter identifier. | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

