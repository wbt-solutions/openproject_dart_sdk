# openproject_dart_sdk.api.QuerySortBysApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueriesSortBysIdGet**](QuerySortBysApi.md#apiV3QueriesSortBysIdGet) | **GET** /api/v3/queries/sort_bys/{id} | View Query Sort By


# **apiV3QueriesSortBysIdGet**
> apiV3QueriesSortBysIdGet(id)

View Query Sort By

Retreive an individual QuerySortBy as identified by the id parameter.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QuerySortBysApi();
var id = id_example; // String | QuerySortBy identifier. The identifier is a combination of the column identifier and the direction.

try { 
    api_instance.apiV3QueriesSortBysIdGet(id);
} catch (e) {
    print("Exception when calling QuerySortBysApi->apiV3QueriesSortBysIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QuerySortBy identifier. The identifier is a combination of the column identifier and the direction. | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

