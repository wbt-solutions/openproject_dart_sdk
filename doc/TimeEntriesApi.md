# openproject_dart_sdk.api.TimeEntriesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3TimeEntriesGet**](TimeEntriesApi.md#apiV3TimeEntriesGet) | **GET** /api/v3/time_entries | List Time entries
[**apiV3TimeEntriesIdGet**](TimeEntriesApi.md#apiV3TimeEntriesIdGet) | **GET** /api/v3/time_entries/{id} | View time entry


# **apiV3TimeEntriesGet**
> Time entries apiV3TimeEntriesGet(offset, pageSize, filters)

List Time entries

Lists time entries. The time entries returned depend on the filters provided and also on the permission of the requesting user.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = TimeEntriesApi();
var offset = 56; // int | Page number inside the requested collection.
var pageSize = 56; // int | Number of elements to display per page.
var filters = filters_example; // String | JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users

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
 **pageSize** | **int**| Number of elements to display per page. | [optional] [default to null]
 **filters** | **String**| JSON specifying filter conditions. Accepts the same format as returned by the [queries](#queries) endpoint. Currently supported filters are:  + work_package: Filter time entries by work package  + project: Filter time entries by project  + user: Filter time entries by users | [optional] [default to null]

### Return type

[**Time entries**](Time entries.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3TimeEntriesIdGet**
> Time entry apiV3TimeEntriesIdGet(id)

View time entry

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = TimeEntriesApi();
var id = 56; // int | time entry id

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
 **id** | **int**| time entry id | [default to null]

### Return type

[**Time entry**](Time entry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

