# openproject_dart_sdk.api.QueryOperatorsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3QueriesOperatorsIdGet**](QueryOperatorsApi.md#apiV3QueriesOperatorsIdGet) | **GET** /api/v3/queries/operators/{id} | View Query Operator


# **apiV3QueriesOperatorsIdGet**
> apiV3QueriesOperatorsIdGet(id)

View Query Operator

Retreive an individual QueryOperator as identified by the `id` parameter.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = QueryOperatorsApi();
var id = id_example; // String | QueryOperator id

try { 
    api_instance.apiV3QueriesOperatorsIdGet(id);
} catch (e) {
    print("Exception when calling QueryOperatorsApi->apiV3QueriesOperatorsIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryOperator id | [default to null]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

