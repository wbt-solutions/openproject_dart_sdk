# openproject_dart_sdk.api.QueryFiltersApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewQueryFilter**](QueryFiltersApi.md#viewqueryfilter) | **GET** /api/v3/queries/filters/{id} | View Query Filter


# **viewQueryFilter**
> QueryFilterModel viewQueryFilter(id)

View Query Filter

Retrieve an individual QueryFilter as identified by the id parameter.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QueryFiltersApi();
final id = status; // String | QueryFilter identifier

try {
    final result = api_instance.viewQueryFilter(id);
    print(result);
} catch (e) {
    print('Exception when calling QueryFiltersApi->viewQueryFilter: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QueryFilter identifier | 

### Return type

[**QueryFilterModel**](QueryFilterModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

