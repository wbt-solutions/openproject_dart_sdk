# openproject_dart_sdk.api.QuerySortBysApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewQuerySortBy**](QuerySortBysApi.md#viewquerysortby) | **GET** /api/v3/queries/sort_bys/{id} | View Query Sort By


# **viewQuerySortBy**
> QuerySortByModel viewQuerySortBy(id)

View Query Sort By

Retrieve an individual QuerySortBy as identified by the id parameter.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = QuerySortBysApi();
final id = status-asc; // String | QuerySortBy identifier. The identifier is a combination of the column identifier and the direction.

try {
    final result = api_instance.viewQuerySortBy(id);
    print(result);
} catch (e) {
    print('Exception when calling QuerySortBysApi->viewQuerySortBy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| QuerySortBy identifier. The identifier is a combination of the column identifier and the direction. | 

### Return type

[**QuerySortByModel**](QuerySortByModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

