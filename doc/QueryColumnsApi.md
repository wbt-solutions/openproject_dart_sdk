# openapi.api.QueryColumnsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueriesColumnsIdGet**](QueryColumnsApi.md#apiV3QueriesColumnsIdGet) | **GET** /api/v3/queries/columns/{id} | View Query Column


# **apiV3QueriesColumnsIdGet**
> apiV3QueriesColumnsIdGet(id)

View Query Column

Retreive an individual QueryColumn as identified by the `id` parameter.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueryColumnsApi();
var id = id_example; // String | QueryColumn id

try { 
    api_instance.apiV3QueriesColumnsIdGet(id);
} catch (e) {
    print("Exception when calling QueryColumnsApi->apiV3QueriesColumnsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryColumn id | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

