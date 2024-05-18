# openproject_dart_sdk.api.MeetingsApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewMeeting**](MeetingsApi.md#viewmeeting) | **GET** /api/v3/meetings/{id} | View Meeting Page


# **viewMeeting**
> MeetingModel viewMeeting(id)

View Meeting Page

Retrieve an individual meeting as identified by the id parameter

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = MeetingsApi();
final id = 1; // int | Meeting identifier

try {
    final result = api_instance.viewMeeting(id);
    print(result);
} catch (e) {
    print('Exception when calling MeetingsApi->viewMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Meeting identifier | 

### Return type

[**MeetingModel**](MeetingModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

