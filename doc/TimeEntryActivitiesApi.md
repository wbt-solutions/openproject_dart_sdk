# openproject_dart_sdk.api.TimeEntryActivitiesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTimeEntriesActivity**](TimeEntryActivitiesApi.md#gettimeentriesactivity) | **GET** /api/v3/time_entries/activity/{id} | View time entries activity


# **getTimeEntriesActivity**
> TimeEntryActivityModel getTimeEntriesActivity(id)

View time entries activity

Fetches the time entry activity resource by the given id.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = TimeEntryActivitiesApi();
final id = 1; // int | Time entries activity id

try {
    final result = api_instance.getTimeEntriesActivity(id);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntryActivitiesApi->getTimeEntriesActivity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Time entries activity id | 

### Return type

[**TimeEntryActivityModel**](TimeEntryActivityModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

