# openproject_dart_sdk.api.ActivitiesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *https://qa.openproject-edge.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**updateActivity**](ActivitiesApi.md#updateactivity) | **PATCH** /api/v3/activities/{id} | Update activity
[**viewActivity**](ActivitiesApi.md#viewactivity) | **GET** /api/v3/activities/{id} | View activity


# **updateActivity**
> ActivityModel updateActivity(id, updateActivityRequest)

Update activity

Updates an activity's comment and, on success, returns the updated activity.

### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActivitiesApi();
final id = 1; // int | Activity id
final updateActivityRequest = UpdateActivityRequest(); // UpdateActivityRequest | 

try {
    final result = api_instance.updateActivity(id, updateActivityRequest);
    print(result);
} catch (e) {
    print('Exception when calling ActivitiesApi->updateActivity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Activity id | 
 **updateActivityRequest** | [**UpdateActivityRequest**](UpdateActivityRequest.md)|  | [optional] 

### Return type

[**ActivityModel**](ActivityModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewActivity**
> ActivityModel viewActivity(id)

View activity



### Example
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: BasicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BasicAuth').password = 'YOUR_PASSWORD';

final api_instance = ActivitiesApi();
final id = 1; // int | Activity id

try {
    final result = api_instance.viewActivity(id);
    print(result);
} catch (e) {
    print('Exception when calling ActivitiesApi->viewActivity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Activity id | 

### Return type

[**ActivityModel**](ActivityModel.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

