# openproject_dart_sdk.api.TimeEntryActivitiesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3TimeEntriesActivitiesIdGet**](TimeEntryActivitiesApi.md#apiv3timeentriesactivitiesidget) | **GET** /api/v3/time_entries/activities/{id} | View time entries activity


# **apiV3TimeEntriesActivitiesIdGet**
> TimeEntriesActivity apiV3TimeEntriesActivitiesIdGet(id)

View time entries activity

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: oAuth
//defaultApiClient.getAuthentication<OAuth>('oAuth').accessToken = 'YOUR_ACCESS_TOKEN';

final api_instance = TimeEntryActivitiesApi();
final id = 56; // int | time entries activity id

try {
    final result = api_instance.apiV3TimeEntriesActivitiesIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling TimeEntryActivitiesApi->apiV3TimeEntriesActivitiesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| time entries activity id | 

### Return type

[**TimeEntriesActivity**](TimeEntriesActivity.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth](../README.md#oAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

