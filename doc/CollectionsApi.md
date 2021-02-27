# openproject_dart_sdk.api.CollectionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ExamplesGet**](CollectionsApi.md#apiV3ExamplesGet) | **GET** /api/v3/examples | view aggregated result


# **apiV3ExamplesGet**
> apiV3ExamplesGet(groupBy, showSums)

view aggregated result

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

final api_instance = CollectionsApi();
final groupBy = groupBy_example; // String | The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](#queries) endpoint.
final showSums = showSums_example; // String | 

try { 
    api_instance.apiV3ExamplesGet(groupBy, showSums);
} catch (e) {
    print('Exception when calling CollectionsApi->apiV3ExamplesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupBy** | **String**| The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](#queries) endpoint. | [optional] 
 **showSums** | **String**|  | [optional] [default to 'false']

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

