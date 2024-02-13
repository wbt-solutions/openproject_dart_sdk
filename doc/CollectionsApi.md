# openproject_dart_sdk.api.CollectionsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewAggregatedResult**](CollectionsApi.md#viewaggregatedresult) | **GET** /api/v3/examples | view aggregated result


# **viewAggregatedResult**
> viewAggregatedResult(groupBy, showSums)

view aggregated result



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = CollectionsApi();
final groupBy = status; // String | The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint.
final showSums = true; // bool | 

try {
    api_instance.viewAggregatedResult(groupBy, showSums);
} catch (e) {
    print('Exception when calling CollectionsApi->viewAggregatedResult: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupBy** | **String**| The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](https://www.openproject.org/docs/api/endpoints/queries/) endpoint. | [optional] 
 **showSums** | **bool**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

