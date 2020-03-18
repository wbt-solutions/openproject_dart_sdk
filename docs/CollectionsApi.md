# swagger.api.CollectionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ExamplesGet**](CollectionsApi.md#apiV3ExamplesGet) | **GET** /api/v3/examples | view aggregated result


# **apiV3ExamplesGet**
> apiV3ExamplesGet(groupBy, showSums)

view aggregated result



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CollectionsApi();
var groupBy = groupBy_example; // String | The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](#queries) endpoint.
var showSums = showSums_example; // String | 

try { 
    api_instance.apiV3ExamplesGet(groupBy, showSums);
} catch (e) {
    print("Exception when calling CollectionsApi->apiV3ExamplesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupBy** | **String**| The column to group by. Note: Aggregation is as of now only supported by the work package collection. You can pass any column name as returned by the [queries](#queries) endpoint. | [optional] 
 **showSums** | **String**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

