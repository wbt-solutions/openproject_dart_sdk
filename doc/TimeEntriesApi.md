# openproject_dart_sdk.api.TimeEntriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3TimeEntriesGet**](TimeEntriesApi.md#apiV3TimeEntriesGet) | **GET** /api/v3/time_entries | List TimeEntries
[**apiV3TimeEntriesIdGet**](TimeEntriesApi.md#apiV3TimeEntriesIdGet) | **GET** /api/v3/time_entries/{id} | View TimeEntry


# **apiV3TimeEntriesGet**
> TimeEntries apiV3TimeEntriesGet(offset, pageSize, filters)

List TimeEntries

Lists TimeEntries. The TimeEntries returned depend on the filters provided and also on the permission of the requesting user.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = TimeEntriesApi();
var offset = 56; // int | Page number inside the requested collection.
var pageSize = 56; // int | Number of elements to display per page.
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter TimeEntries by WorkPackage  + project: Filter TimeEntries by project  + user: Filter TimeEntries by users

try { 
    var result = api_instance.apiV3TimeEntriesGet(offset, pageSize, filters);
    print(result);
} catch (e) {
    print("Exception when calling TimeEntriesApi->apiV3TimeEntriesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Page number inside the requested collection. | [optional] [default to 1]
 **pageSize** | **int**| Number of elements to display per page. | [optional] 
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter TimeEntries by WorkPackage  + project: Filter TimeEntries by project  + user: Filter TimeEntries by users | [optional] 

### Return type

[**TimeEntries**](TimeEntries.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3TimeEntriesIdGet**
> TimeEntry apiV3TimeEntriesIdGet(id)

View TimeEntry

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = TimeEntriesApi();
var id = 56; // int | TimeEntry id

try { 
    var result = api_instance.apiV3TimeEntriesIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling TimeEntriesApi->apiV3TimeEntriesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| TimeEntry id | 

### Return type

[**TimeEntry**](TimeEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

