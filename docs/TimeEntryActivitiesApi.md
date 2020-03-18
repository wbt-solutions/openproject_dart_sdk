# swagger.api.TimeEntryActivitiesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3TimeEntriesActivityIdGet**](TimeEntryActivitiesApi.md#apiV3TimeEntriesActivityIdGet) | **GET** /api/v3/time_entries/activity/{id} | View time entries activity


# **apiV3TimeEntriesActivityIdGet**
> apiV3TimeEntriesActivityIdGet(id)

View time entries activity



### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new TimeEntryActivitiesApi();
var id = 56; // int | time entries activity id

try { 
    api_instance.apiV3TimeEntriesActivityIdGet(id);
} catch (e) {
    print("Exception when calling TimeEntryActivitiesApi->apiV3TimeEntriesActivityIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| time entries activity id | 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

