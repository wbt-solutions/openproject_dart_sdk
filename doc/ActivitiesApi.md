# openproject_dart_sdk.api.ActivitiesApi

## Load the API package
```dart
import 'package:openproject_dart_sdk/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV3ActivitiesIdGet**](ActivitiesApi.md#apiV3ActivitiesIdGet) | **GET** /api/v3/activities/{id} | View activity
[**apiV3ActivitiesIdPatch**](ActivitiesApi.md#apiV3ActivitiesIdPatch) | **PATCH** /api/v3/activities/{id} | Update activity


# **apiV3ActivitiesIdGet**
> Object apiV3ActivitiesIdGet(id)

View activity

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ActivitiesApi();
var id = 56; // int | Activity id

try { 
    var result = api_instance.apiV3ActivitiesIdGet(id);
    print(result);
} catch (e) {
    print("Exception when calling ActivitiesApi->apiV3ActivitiesIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Activity id | [default to null]

### Return type

[**Object**](Object.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV3ActivitiesIdPatch**
> apiV3ActivitiesIdPatch(id, body)

Update activity

Updates an activity's comment and, on success, returns the updated activity.

### Example 
```dart
import 'package:openproject_dart_sdk/api.dart';
// TODO Configure HTTP basic authorization: basicAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('basicAuth').password = 'YOUR_PASSWORD';

var api_instance = ActivitiesApi();
var id = 56; // int | Activity id
var body = InlineObject(); // InlineObject | 

try { 
    api_instance.apiV3ActivitiesIdPatch(id, body);
} catch (e) {
    print("Exception when calling ActivitiesApi->apiV3ActivitiesIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| Activity id | [default to null]
 **body** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

