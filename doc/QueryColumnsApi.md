# openproject_dart_sdk.api.QueryColumnsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewQueryColumn**](QueryColumnsApi.md#viewquerycolumn) | **GET** /api/v3/queries/columns/{id} | View Query Column


# **viewQueryColumn**
> QueryColumnModel viewQueryColumn(id)

View Query Column

Retrieve an individual QueryColumn as identified by the `id` parameter.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueryColumnsApi();
final id = priority; // String | QueryColumn id

try {
    final result = api_instance.viewQueryColumn(id);
    print(result);
} catch (e) {
    print('Exception when calling QueryColumnsApi->viewQueryColumn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryColumn id | 

### Return type

[**QueryColumnModel**](QueryColumnModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

